define(['taskbar'], function(taskbar) {
	var composer = {
			initialized: false,
			active: undefined,
			taskbar: taskbar,
			posts: {},
			postContainer: undefined,
		};

	function createImageLabel(img, postImages) {
		var imageLabel = $('<div class="label"><span>'+ img.name +'</span></div>');
		var closeButton = $('<button class="close">&times;</button>');

		closeButton.on('click', function(e) {

			imageLabel.remove();
			var index = postImages.indexOf(img);
			if(index !== -1) {
				postImages.splice(index, 1);
			}
		});

		imageLabel.append(closeButton);
		return imageLabel;
	}

	function loadFile(file) {
		var reader = new FileReader(),
			dropDiv = $('.post-window .imagedrop'),
			imagelist = $('.post-window .imagelist'),
			uuid = dropDiv.parents('[data-uuid]').attr('data-uuid'),
			posts = composer.posts[uuid];
		
		$(reader).on('loadend', function(e) {
			var bin = this.result; 
			bin = bin.split(',')[1];

			var img = {
				name: file.name,
				data: bin
			};

			posts.images.push(img);

			var imageLabel = createImageLabel(img, posts.images);

			imagelist.append(imageLabel);
			dropDiv.hide();
		});
	
		reader.readAsDataURL(file);
	}

	function initializeFileReader() {
		jQuery.event.props.push( "dataTransfer" );
	
		var draggingDocument = false;

		if(window.FileReader) {
			var drop = $('.post-window .imagedrop'),
				textarea = $('.post-window textarea');

			$(document).on('dragstart', function(e) {
				draggingDocument = true;
			}).on('dragend', function(e) {
				draggingDocument = false;
			});

			textarea.on('dragenter', function(e) {
				if(draggingDocument)
					return;
				drop.css('top', textarea.position().top + 'px');
				drop.show();

				drop.on('dragleave', function(ev) {
					drop.hide();
					drop.off('dragleave');
				});
			});
			
			function cancel(e) {
				e.preventDefault();
				return false;
			}
			
			drop.on('dragover', cancel);
			drop.on('dragenter', cancel);

			drop.on('drop', function(e) {
				e.preventDefault();
				var uuid = drop.parents('[data-uuid]').attr('data-uuid'),
					posts = composer.posts[uuid],
					dt = e.dataTransfer,
					files = dt.files;

				for (var i=0; i<files.length; i++) {
					loadFile(files[i]);
				}
	
				if(!files.length)
					drop.hide();
				return false;
			});
		}
	}

	composer.init = function() {
		if (!composer.initialized) {
			var taskbar = document.getElementById('taskbar');

			composer.postContainer = document.createElement('div');
			composer.postContainer.className = 'post-window row';
			composer.postContainer.innerHTML =	'<div class="span5">' +
													'<input type="text" tabIndex="1" placeholder="Enter your topic title here..." />' +
													'<div class="btn-toolbar formatting-bar">' +
														'<div class="btn-group">' +
															'<span class="btn btn-link" tabindex="-1"><i class="icon-bold"></i></span>' +
															'<span class="btn btn-link" tabindex="-1"><i class="icon-italic"></i></span>' +
															'<span class="btn btn-link" tabindex="-1"><i class="icon-list"></i></span>' +
															'<span class="btn btn-link" tabindex="-1"><i class="icon-link"></i></span>' +
														'</div>' +
													'</div>' +
													'<textarea tabIndex="2"></textarea>' +
													'<div class="imagelist"></div>'+
													'<div class="imagedrop"><div>Drag and Drop Images Here</div></div>'+
													'<div class="btn-toolbar action-bar">' +
														'<div class="btn-group" style="float: right; margin-right: -8px">' +
															'<button data-action="minimize" class="btn hidden-phone" tabIndex="4"><i class="icon-download-alt"></i> Minimize</button>' +
															'<button class="btn" data-action="discard" tabIndex="5"><i class="icon-remove"></i> Discard</button>' +
															'<button data-action="post" class="btn" tabIndex="3"><i class="icon-ok"></i> Submit</button>' +
														'</div>' +
													'</div>' +
												'</div>';

			document.body.insertBefore(composer.postContainer, taskbar);

			if(config.imgurClientIDSet)
				initializeFileReader();

			socket.on('api:composer.push', function(threadData) {
				if (!threadData.error) {
					var uuid = utils.generateUUID();

					composer.taskbar.push('composer', uuid, {
						title: (!threadData.cid ? (threadData.title || '') : 'New Topic'),
						icon: threadData.picture
					});

					composer.posts[uuid] = {
						tid: threadData.tid,
						cid: threadData.cid,
						pid: threadData.pid,
						title: threadData.title || '',
						body: threadData.body || '',
						images: []
					};
					composer.load(uuid);
				} else {
					app.alert({
						type: 'error',
						timeout: 5000,
						alert_id: 'post_error',
						title: 'Please Log In to Post',
						message: 'Posting is currently restricted to registered members only, click here to log in',
						clickfn: function() {
							ajaxify.go('login');
						}
					});
				}
			});

			socket.on('api:composer.editCheck', function(editCheck) {
				if (editCheck.titleEditable === true) composer.postContainer.querySelector('input').readOnly = false;
			});

			// Post Window events
			var	jPostContainer = $(composer.postContainer),
				postContentEl = composer.postContainer.querySelector('textarea');

			jPostContainer.on('change', 'input, textarea', function() {
				var uuid = $(this).parents('.post-window')[0].getAttribute('data-uuid');
				if (this.nodeName === 'INPUT') composer.posts[uuid].title = this.value;
				else if (this.nodeName === 'TEXTAREA') composer.posts[uuid].body = this.value;
			});

			jPostContainer.on('click', '.action-bar button', function() {
				var	action = this.getAttribute('data-action'),
					uuid = $(this).parents('.post-window').attr('data-uuid');
				switch(action) {
					case 'post': composer.post(uuid); break;
					case 'minimize': composer.minimize(uuid); break;
					case 'discard': composer.discard(uuid); break;
				}
			});

			jPostContainer.on('click', '.formatting-bar span', function() {
				var iconClass = this.querySelector('i').className,
					cursorEnd = postContentEl.value.length,
					selectionStart = postContentEl.selectionStart,
					selectionEnd = postContentEl.selectionEnd,
					selectionLength = selectionEnd - selectionStart;

				switch(iconClass) {
					case 'icon-bold':
						if (selectionStart === selectionEnd) {
							// Nothing selected
							postContentEl.value = postContentEl.value + '**bolded text**';
							postContentEl.selectionStart = cursorEnd+2;
							postContentEl.selectionEnd = postContentEl.value.length - 2;
						} else {
							// Text selected
							postContentEl.value = postContentEl.value.slice(0, selectionStart) + '**' + postContentEl.value.slice(selectionStart, selectionEnd) + '**' + postContentEl.value.slice(selectionEnd);
							postContentEl.selectionStart = selectionStart + 2;
							postContentEl.selectionEnd = selectionEnd + 2;
						}
					break;
					case 'icon-italic':
						if (selectionStart === selectionEnd) {
							// Nothing selected
							postContentEl.value = postContentEl.value + '*italicised text*';
							postContentEl.selectionStart = cursorEnd+1;
							postContentEl.selectionEnd = postContentEl.value.length - 1;
						} else {
							// Text selected
							postContentEl.value = postContentEl.value.slice(0, selectionStart) + '*' + postContentEl.value.slice(selectionStart, selectionEnd) + '*' + postContentEl.value.slice(selectionEnd);
							postContentEl.selectionStart = selectionStart + 1;
							postContentEl.selectionEnd = selectionEnd + 1;
						}
					break;
					case 'icon-list':
						// Nothing selected
						postContentEl.value = postContentEl.value + "\n\n* list item";
						postContentEl.selectionStart = cursorEnd+4;
						postContentEl.selectionEnd = postContentEl.value.length;
					break;
					case 'icon-link':
						if (selectionStart === selectionEnd) {
							// Nothing selected
							postContentEl.value = postContentEl.value + '[link text](link url)';
							postContentEl.selectionStart = cursorEnd+12;
							postContentEl.selectionEnd = postContentEl.value.length - 1;
						} else {
							// Text selected
							postContentEl.value = postContentEl.value.slice(0, selectionStart) + '[' + postContentEl.value.slice(selectionStart, selectionEnd) + '](link url)' + postContentEl.value.slice(selectionEnd);
							postContentEl.selectionStart = selectionStart + selectionLength + 3;
							postContentEl.selectionEnd = selectionEnd + 11;
						}
					break;
				}
			});
			window.addEventListener('resize', function() {
				if (composer.active !== undefined) composer.reposition(composer.active);
			});

			composer.initialized = true;
		}
	}

	composer.push = function(tid, cid, pid, text) {
		socket.emit('api:composer.push', {
			tid: tid,	// Replying
			cid: cid,	// Posting
			pid: pid,	// Editing
			body: text	// Predefined text
		});
	}

	function createPostImages(images) {
		var imagelist = $(composer.postContainer).find('.imagelist');
		imagelist.empty();

		if(images && images.length) {
			for(var i=0; i<images.length; ++i) {
				var imageLabel = createImageLabel(images[i], images);
				imagelist.append(imageLabel);
			}
		}
	}

	composer.load = function(post_uuid) {
		var post_data = composer.posts[post_uuid],
			titleEl = composer.postContainer.querySelector('input'),
			bodyEl = composer.postContainer.querySelector('textarea');

		composer.reposition(post_uuid);
		composer.active = post_uuid;
		
		composer.postContainer.setAttribute('data-uuid', post_uuid);
		if (parseInt(post_data.tid) > 0) {
			titleEl.value = 'Replying to: ' + post_data.title;
			titleEl.readOnly = true;
		} else if (parseInt(post_data.pid) > 0) {
			titleEl.value = post_data.title;
			titleEl.readOnly = true;
			socket.emit('api:composer.editCheck', post_data.pid);
		} else {
			titleEl.value = post_data.title;
			titleEl.readOnly = false;
		}
		bodyEl.value = post_data.body;

		createPostImages(post_data.images);

		// Direct user focus to the correct element
		if ((parseInt(post_data.tid) || parseInt(post_data.pid)) > 0) {
			bodyEl.focus();
			bodyEl.selectionStart = bodyEl.value.length;
			bodyEl.selectionEnd = bodyEl.value.length;
		} else if (parseInt(post_data.cid) > 0) {
			titleEl.focus();
		}
	}

	composer.reposition = function(post_uuid) {
		var postWindowEl = composer.postContainer.querySelector('.span5'),
			taskbarBtn = document.querySelector('#taskbar [data-uuid="' + post_uuid + '"]'),
			btnRect = taskbarBtn.getBoundingClientRect(),
			taskbarRect = document.getElementById('taskbar').getBoundingClientRect(),
			windowRect, leftPos;

		composer.postContainer.style.display = 'block';
		windowRect = postWindowEl.getBoundingClientRect();
		leftPos = btnRect.left + btnRect.width - windowRect.width;
		postWindowEl.style.left = (leftPos > 0 ? leftPos : 0) + 'px';
		composer.postContainer.style.bottom = taskbarRect.height + "px";
	}

	composer.post = function(post_uuid) {
		// Check title and post length
		var postData = composer.posts[post_uuid],
			titleEl = composer.postContainer.querySelector('input'),
			bodyEl = composer.postContainer.querySelector('textarea');
		
		titleEl.value = titleEl.value.trim();
		bodyEl.value = bodyEl.value.trim();
		
		if (titleEl.value.length < config.minimumTitleLength) {
			return app.alert({
				type: 'error',
				timeout: 2000,
				title: 'Title too short',
				message: "Please enter a longer title. At least " + config.minimumTitleLength+ " characters.",
				alert_id: 'post_error'
			});
		}

		if (bodyEl.value.length < config.minimumPostLength) {
			return app.alert({
				type: 'error',
				timeout: 2000,
				title: 'Content too short',
				message: "Please enter a longer post. At least " + config.minimumPostLength + " characters.",
				alert_id: 'post_error'
			});
		}

		// Still here? Let's post.
		if (parseInt(postData.cid) > 0) {
			socket.emit('api:topics.post', {
				'title' : titleEl.value,
				'content' : bodyEl.value,
				'category_id' : postData.cid,
				images: composer.posts[post_uuid].images
			});
		} else if (parseInt(postData.tid) > 0) {
			socket.emit('api:posts.reply', {
				'topic_id' : postData.tid,
				'content' : bodyEl.value,
				images: composer.posts[post_uuid].images
			});
		} else if (parseInt(postData.pid) > 0) {
			socket.emit('api:posts.edit', {
				pid: postData.pid,
				content: bodyEl.value,
				title: titleEl.value,
				images: composer.posts[post_uuid].images
			});
		}

		composer.discard(post_uuid);
	}

	composer.discard = function(post_uuid) {
		if (composer.posts[post_uuid]) {
			$(composer.postContainer).find('.imagedrop').hide();
			$(composer.postContainer).find('.imagelist').empty();
			delete composer.posts[post_uuid];
			composer.minimize();
			taskbar.discard('composer', post_uuid);
		}
	}

	composer.minimize = function(uuid) {
		composer.postContainer.style.display = 'none';
		composer.active = undefined;
		taskbar.minimize('composer', uuid);
	}

	composer.init();

	return {
		push: composer.push,
		load: composer.load,
		minimize: composer.minimize
	};
});