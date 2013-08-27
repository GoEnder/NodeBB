
<h1>Categories</h1>

<hr />
<ul class="nav nav-pills">
	<li class='active'><a href='/admin/categories/active'>Active</a></li>
	<li class=''><a href='/admin/categories/disabled'>Disabled</a></li>
	<li class=''><a href='/admin/testing/categories'>Unit Tests</a></li>
</ul>

<!-- TODO: remove inline event listeners. -->

<div class="row-fluid admin-categories">
	<ul class="span12" id="entry-container">
	<!-- BEGIN categories -->
		<li data-cid="{categories.cid}" class="entry-row {categories.blockclass}">
			<form class="form-inline">
				<div class="icon">
					<i data-name="icon" value="{categories.icon}" class="{categories.icon} icon-2x"></i>
				</div>
				<input placeholder="Category Name" data-name="name" value="{categories.name}" class="category_name input-medium"></input>
				<select class="blockclass input-medium" data-name="blockclass" data-value="{categories.blockclass}">
					<option value="category-purple">category-purple</option>
					<option value="category-darkblue">category-darkblue</option>
					<option value="category-blue">category-blue</option>
					<option value="category-darkgreen">category-darkgreen</option>
					<option value="category-orange">category-orange</option>
				</select>
				<input data-name="description" placeholder="Category Description" value="{categories.description}" class="category_description input-medium description"></input>
				<button type="submit" class="btn" data-disabled="{categories.disabled}">Disable</button>
			</form>
		</li>

	<!-- END categories -->
	</ul>

	<button class="btn btn-large btn-primary" id="save">Save</button>
</div>

<div id="icons" style="display:none;"><div class="icon-container"><div class="row">
  <div class="span3"><i class="icon-compass"></i></div><div class="span3"><i class="icon-collapse"></i></div><div class="span3"><i class="icon-collapse-top"></i></div><div class="span3"><i class="icon-expand"></i></div><div class="span3"><i class="icon-eur"></i></div><div class="span3"><i class="icon-euro"></i></div><div class="span3"><i class="icon-gbp"></i></div><div class="span3"><i class="icon-usd"></i></div><div class="span3"><i class="icon-dollar"></i></div><div class="span3"><i class="icon-inr"></i></div><div class="span3"><i class="icon-rupee"></i></div><div class="span3"><i class="icon-jpy"></i></div><div class="span3"><i class="icon-yen"></i></div><div class="span3"><i class="icon-cny"></i></div><div class="span3"><i class="icon-renminbi"></i></div><div class="span3"><i class="icon-krw"></i></div><div class="span3"><i class="icon-won"></i></div><div class="span3"><i class="icon-btc"></i></div><div class="span3"><i class="icon-bitcoin"></i></div><div class="span3"><i class="icon-file"></i></div><div class="span3"><i class="icon-file-text"></i></div><div class="span3"><i class="icon-sort-by-alphabet"></i></div><div class="span3"><i class="icon-sort-by-alphabet-alt"></i></div><div class="span3"><i class="icon-sort-by-attributes"></i></div><div class="span3"><i class="icon-sort-by-attributes-alt"></i></div><div class="span3"><i class="icon-sort-by-order"></i></div><div class="span3"><i class="icon-sort-by-order-alt"></i></div><div class="span3"><i class="icon-thumbs-up"></i></div><div class="span3"><i class="icon-thumbs-down"></i></div><div class="span3"><i class="icon-youtube-sign"></i></div><div class="span3"><i class="icon-youtube"></i></div><div class="span3"><i class="icon-xing"></i></div><div class="span3"><i class="icon-xing-sign"></i></div><div class="span3"><i class="icon-youtube-play"></i></div><div class="span3"><i class="icon-dropbox"></i></div><div class="span3"><i class="icon-stackexchange"></i></div><div class="span3"><i class="icon-instagram"></i></div><div class="span3"><i class="icon-flickr"></i></div><div class="span3"><i class="icon-adn"></i></div><div class="span3"><i class="icon-bitbucket"></i></div><div class="span3"><i class="icon-bitbucket-sign"></i></div><div class="span3"><i class="icon-tumblr"></i></div><div class="span3"><i class="icon-tumblr-sign"></i></div><div class="span3"><i class="icon-long-arrow-down"></i></div><div class="span3"><i class="icon-long-arrow-up"></i></div><div class="span3"><i class="icon-long-arrow-left"></i></div><div class="span3"><i class="icon-long-arrow-right"></i></div><div class="span3"><i class="icon-apple"></i></div><div class="span3"><i class="icon-windows"></i></div><div class="span3"><i class="icon-android"></i></div><div class="span3"><i class="icon-linux"></i></div><div class="span3"><i class="icon-dribbble"></i></div><div class="span3"><i class="icon-skype"></i></div><div class="span3"><i class="icon-foursquare"></i></div><div class="span3"><i class="icon-trello"></i></div><div class="span3"><i class="icon-female"></i></div><div class="span3"><i class="icon-male"></i></div><div class="span3"><i class="icon-gittip"></i></div><div class="span3"><i class="icon-sun"></i></div><div class="span3"><i class="icon-moon"></i></div><div class="span3"><i class="icon-archive"></i></div><div class="span3"><i class="icon-bug"></i></div><div class="span3"><i class="icon-vk"></i></div><div class="span3"><i class="icon-weibo"></i></div><div class="span3"><i class="icon-renren"></i></div><div class="span3"><i class="icon-adjust"></i></div><div class="span3"><i class="icon-anchor"></i></div><div class="span3"><i class="icon-archive"></i></div><div class="span3"><i class="icon-asterisk"></i></div><div class="span3"><i class="icon-ban-circle"></i></div><div class="span3"><i class="icon-bar-chart"></i></div><div class="span3"><i class="icon-barcode"></i></div><div class="span3"><i class="icon-beaker"></i></div><div class="span3"><i class="icon-beer"></i></div><div class="span3"><i class="icon-bell"></i></div><div class="span3"><i class="icon-bell-alt"></i></div><div class="span3"><i class="icon-bolt"></i></div><div class="span3"><i class="icon-book"></i></div><div class="span3"><i class="icon-bookmark"></i></div><div class="span3"><i class="icon-bookmark-empty"></i></div><div class="span3"><i class="icon-briefcase"></i></div><div class="span3"><i class="icon-bug"></i></div><div class="span3"><i class="icon-building"></i></div><div class="span3"><i class="icon-bullhorn"></i></div><div class="span3"><i class="icon-bullseye"></i></div><div class="span3"><i class="icon-calendar"></i></div><div class="span3"><i class="icon-calendar-empty"></i></div><div class="span3"><i class="icon-camera"></i></div><div class="span3"><i class="icon-camera-retro"></i></div><div class="span3"><i class="icon-certificate"></i></div><div class="span3"><i class="icon-check"></i></div><div class="span3"><i class="icon-check-empty"></i></div><div class="span3"><i class="icon-check-minus"></i></div><div class="span3"><i class="icon-check-sign"></i></div><div class="span3"><i class="icon-circle"></i></div><div class="span3"><i class="icon-circle-blank"></i></div><div class="span3"><i class="icon-cloud"></i></div><div class="span3"><i class="icon-cloud-download"></i></div><div class="span3"><i class="icon-cloud-upload"></i></div><div class="span3"><i class="icon-code"></i></div><div class="span3"><i class="icon-code-fork"></i></div><div class="span3"><i class="icon-coffee"></i></div><div class="span3"><i class="icon-cog"></i></div><div class="span3"><i class="icon-cogs"></i></div><div class="span3"><i class="icon-collapse"></i></div><div class="span3"><i class="icon-collapse-alt"></i></div><div class="span3"><i class="icon-collapse-top"></i></div><div class="span3"><i class="icon-comment"></i></div><div class="span3"><i class="icon-comment-alt"></i></div><div class="span3"><i class="icon-comments"></i></div><div class="span3"><i class="icon-comments-alt"></i></div><div class="span3"><i class="icon-compass"></i></div><div class="span3"><i class="icon-credit-card"></i></div><div class="span3"><i class="icon-crop"></i></div><div class="span3"><i class="icon-dashboard"></i></div><div class="span3"><i class="icon-desktop"></i></div><div class="span3"><i class="icon-download"></i></div><div class="span3"><i class="icon-download-alt"></i></div><div class="span3"><i class="icon-edit"></i></div><div class="span3"><i class="icon-edit-sign"></i></div><div class="span3"><i class="icon-ellipsis-horizontal"></i></div><div class="span3"><i class="icon-ellipsis-vertical"></i></div><div class="span3"><i class="icon-envelope"></i></div><div class="span3"><i class="icon-envelope-alt"></i></div><div class="span3"><i class="icon-eraser"></i></div><div class="span3"><i class="icon-exchange"></i></div><div class="span3"><i class="icon-exclamation"></i></div><div class="span3"><i class="icon-exclamation-sign"></i></div><div class="span3"><i class="icon-expand"></i></div><div class="span3"><i class="icon-expand-alt"></i></div><div class="span3"><i class="icon-external-link"></i></div><div class="span3"><i class="icon-external-link-sign"></i></div><div class="span3"><i class="icon-eye-close"></i></div><div class="span3"><i class="icon-eye-open"></i></div><div class="span3"><i class="icon-facetime-video"></i></div><div class="span3"><i class="icon-female"></i></div><div class="span3"><i class="icon-fighter-jet"></i></div><div class="span3"><i class="icon-film"></i></div><div class="span3"><i class="icon-filter"></i></div><div class="span3"><i class="icon-fire"></i></div><div class="span3"><i class="icon-fire-extinguisher"></i></div><div class="span3"><i class="icon-flag"></i></div><div class="span3"><i class="icon-flag-alt"></i></div><div class="span3"><i class="icon-flag-checkered"></i></div><div class="span3"><i class="icon-folder-close"></i></div><div class="span3"><i class="icon-folder-close-alt"></i></div><div class="span3"><i class="icon-folder-open"></i></div><div class="span3"><i class="icon-folder-open-alt"></i></div><div class="span3"><i class="icon-food"></i></div><div class="span3"><i class="icon-frown"></i></div><div class="span3"><i class="icon-gamepad"></i></div><div class="span3"><i class="icon-gear"></i></div><div class="span3"><i class="icon-gears"></i></div><div class="span3"><i class="icon-gift"></i></div><div class="span3"><i class="icon-glass"></i></div><div class="span3"><i class="icon-globe"></i></div><div class="span3"><i class="icon-group"></i></div><div class="span3"><i class="icon-hdd"></i></div><div class="span3"><i class="icon-headphones"></i></div><div class="span3"><i class="icon-heart"></i></div><div class="span3"><i class="icon-heart-empty"></i></div><div class="span3"><i class="icon-home"></i></div><div class="span3"><i class="icon-inbox"></i></div><div class="span3"><i class="icon-info"></i></div><div class="span3"><i class="icon-info-sign"></i></div><div class="span3"><i class="icon-key"></i></div><div class="span3"><i class="icon-keyboard"></i></div><div class="span3"><i class="icon-laptop"></i></div><div class="span3"><i class="icon-leaf"></i></div><div class="span3"><i class="icon-legal"></i></div><div class="span3"><i class="icon-lemon"></i></div><div class="span3"><i class="icon-level-down"></i></div><div class="span3"><i class="icon-level-up"></i></div><div class="span3"><i class="icon-lightbulb"></i></div><div class="span3"><i class="icon-location-arrow"></i></div><div class="span3"><i class="icon-lock"></i></div><div class="span3"><i class="icon-magic"></i></div><div class="span3"><i class="icon-magnet"></i></div><div class="span3"><i class="icon-mail-forward"></i></div><div class="span3"><i class="icon-mail-reply"></i></div><div class="span3"><i class="icon-mail-reply-all"></i></div><div class="span3"><i class="icon-male"></i></div><div class="span3"><i class="icon-map-marker"></i></div><div class="span3"><i class="icon-meh"></i></div><div class="span3"><i class="icon-microphone"></i></div><div class="span3"><i class="icon-microphone-off"></i></div><div class="span3"><i class="icon-minus"></i></div><div class="span3"><i class="icon-minus-sign"></i></div><div class="span3"><i class="icon-minus-sign-alt"></i></div><div class="span3"><i class="icon-mobile-phone"></i></div><div class="span3"><i class="icon-money"></i></div><div class="span3"><i class="icon-moon"></i></div><div class="span3"><i class="icon-move"></i></div><div class="span3"><i class="icon-music"></i></div><div class="span3"><i class="icon-off"></i></div><div class="span3"><i class="icon-ok"></i></div><div class="span3"><i class="icon-ok-circle"></i></div><div class="span3"><i class="icon-ok-sign"></i></div><div class="span3"><i class="icon-pencil"></i></div><div class="span3"><i class="icon-phone"></i></div><div class="span3"><i class="icon-phone-sign"></i></div><div class="span3"><i class="icon-picture"></i></div><div class="span3"><i class="icon-plane"></i></div><div class="span3"><i class="icon-plus"></i></div><div class="span3"><i class="icon-plus-sign"></i></div><div class="span3"><i class="icon-plus-sign-alt"></i></div><div class="span3"><i class="icon-power-off"></i></div><div class="span3"><i class="icon-print"></i></div><div class="span3"><i class="icon-pushpin"></i></div><div class="span3"><i class="icon-puzzle-piece"></i></div><div class="span3"><i class="icon-qrcode"></i></div><div class="span3"><i class="icon-question"></i></div><div class="span3"><i class="icon-question-sign"></i></div><div class="span3"><i class="icon-quote-left"></i></div><div class="span3"><i class="icon-quote-right"></i></div><div class="span3"><i class="icon-random"></i></div><div class="span3"><i class="icon-refresh"></i></div><div class="span3"><i class="icon-remove"></i></div><div class="span3"><i class="icon-remove-circle"></i></div><div class="span3"><i class="icon-remove-sign"></i></div><div class="span3"><i class="icon-reorder"></i></div><div class="span3"><i class="icon-reply"></i></div><div class="span3"><i class="icon-reply-all"></i></div><div class="span3"><i class="icon-resize-horizontal"></i></div><div class="span3"><i class="icon-resize-vertical"></i></div><div class="span3"><i class="icon-retweet"></i></div><div class="span3"><i class="icon-road"></i></div><div class="span3"><i class="icon-rocket"></i></div><div class="span3"><i class="icon-rss"></i></div><div class="span3"><i class="icon-rss-sign"></i></div><div class="span3"><i class="icon-screenshot"></i></div><div class="span3"><i class="icon-search"></i></div><div class="span3"><i class="icon-share"></i></div><div class="span3"><i class="icon-share-alt"></i></div><div class="span3"><i class="icon-share-sign"></i></div><div class="span3"><i class="icon-shield"></i></div><div class="span3"><i class="icon-shopping-cart"></i></div><div class="span3"><i class="icon-sign-blank"></i></div><div class="span3"><i class="icon-signal"></i></div><div class="span3"><i class="icon-signin"></i></div><div class="span3"><i class="icon-signout"></i></div><div class="span3"><i class="icon-sitemap"></i></div><div class="span3"><i class="icon-smile"></i></div><div class="span3"><i class="icon-sort"></i></div><div class="span3"><i class="icon-sort-by-alphabet"></i></div><div class="span3"><i class="icon-sort-by-alphabet-alt"></i></div><div class="span3"><i class="icon-sort-by-attributes"></i></div><div class="span3"><i class="icon-sort-by-attributes-alt"></i></div><div class="span3"><i class="icon-sort-by-order"></i></div><div class="span3"><i class="icon-sort-by-order-alt"></i></div><div class="span3"><i class="icon-sort-down"></i></div><div class="span3"><i class="icon-sort-up"></i></div><div class="span3"><i class="icon-spinner"></i></div><div class="span3"><i class="icon-star"></i></div><div class="span3"><i class="icon-star-empty"></i></div><div class="span3"><i class="icon-star-half"></i></div><div class="span3"><i class="icon-star-half-empty"></i></div><div class="span3"><i class="icon-star-half-full"></i></div><div class="span3"><i class="icon-subscript"></i></div><div class="span3"><i class="icon-suitcase"></i></div><div class="span3"><i class="icon-sun"></i></div><div class="span3"><i class="icon-superscript"></i></div><div class="span3"><i class="icon-tablet"></i></div><div class="span3"><i class="icon-tag"></i></div><div class="span3"><i class="icon-tags"></i></div><div class="span3"><i class="icon-tasks"></i></div><div class="span3"><i class="icon-terminal"></i></div><div class="span3"><i class="icon-thumbs-down"></i></div><div class="span3"><i class="icon-thumbs-down-alt"></i></div><div class="span3"><i class="icon-thumbs-up"></i></div><div class="span3"><i class="icon-thumbs-up-alt"></i></div><div class="span3"><i class="icon-ticket"></i></div><div class="span3"><i class="icon-time"></i></div><div class="span3"><i class="icon-tint"></i></div><div class="span3"><i class="icon-trash"></i></div><div class="span3"><i class="icon-trophy"></i></div><div class="span3"><i class="icon-truck"></i></div><div class="span3"><i class="icon-umbrella"></i></div><div class="span3"><i class="icon-unchecked"></i></div><div class="span3"><i class="icon-unlock"></i></div><div class="span3"><i class="icon-unlock-alt"></i></div><div class="span3"><i class="icon-upload"></i></div><div class="span3"><i class="icon-upload-alt"></i></div><div class="span3"><i class="icon-user"></i></div><div class="span3"><i class="icon-volume-down"></i></div><div class="span3"><i class="icon-volume-off"></i></div><div class="span3"><i class="icon-volume-up"></i></div><div class="span3"><i class="icon-warning-sign"></i></div><div class="span3"><i class="icon-wrench"></i></div><div class="span3"><i class="icon-zoom-in"></i></div><div class="span3"><i class="icon-zoom-out"></i></div><div class="span3"><i class="icon-bitcoin"></i></div><div class="span3"><i class="icon-btc"></i></div><div class="span3"><i class="icon-cny"></i></div><div class="span3"><i class="icon-dollar"></i></div><div class="span3"><i class="icon-eur"></i></div><div class="span3"><i class="icon-euro"></i></div><div class="span3"><i class="icon-gbp"></i></div><div class="span3"><i class="icon-inr"></i></div><div class="span3"><i class="icon-jpy"></i></div><div class="span3"><i class="icon-krw"></i></div><div class="span3"><i class="icon-renminbi"></i></div><div class="span3"><i class="icon-rupee"></i></div><div class="span3"><i class="icon-usd"></i></div><div class="span3"><i class="icon-won"></i></div><div class="span3"><i class="icon-yen"></i></div>
  <div class="span3"><i class="icon-align-center"></i></div><div class="span3"><i class="icon-align-justify"></i></div><div class="span3"><i class="icon-align-left"></i></div><div class="span3"><i class="icon-align-right"></i></div><div class="span3"><i class="icon-bold"></i></div><div class="span3"><i class="icon-columns"></i></div><div class="span3"><i class="icon-copy"></i></div><div class="span3"><i class="icon-cut"></i></div><div class="span3"><i class="icon-eraser"></i></div><div class="span3"><i class="icon-file"></i></div><div class="span3"><i class="icon-file-alt"></i></div><div class="span3"><i class="icon-file-text"></i></div><div class="span3"><i class="icon-file-text-alt"></i></div><div class="span3"><i class="icon-font"></i></div><div class="span3"><i class="icon-indent-left"></i></div><div class="span3"><i class="icon-indent-right"></i></div><div class="span3"><i class="icon-italic"></i></div><div class="span3"><i class="icon-link"></i></div><div class="span3"><i class="icon-list"></i></div><div class="span3"><i class="icon-list-alt"></i></div><div class="span3"><i class="icon-list-ol"></i></div><div class="span3"><i class="icon-list-ul"></i></div><div class="span3"><i class="icon-paper-clip"></i></div><div class="span3"><i class="icon-paperclip"></i></div><div class="span3"><i class="icon-paste"></i></div><div class="span3"><i class="icon-repeat"></i></div><div class="span3"><i class="icon-rotate-left"></i></div><div class="span3"><i class="icon-rotate-right"></i></div><div class="span3"><i class="icon-save"></i></div><div class="span3"><i class="icon-strikethrough"></i></div><div class="span3"><i class="icon-table"></i></div><div class="span3"><i class="icon-text-height"></i></div><div class="span3"><i class="icon-text-width"></i></div><div class="span3"><i class="icon-th"></i></div><div class="span3"><i class="icon-th-large"></i></div><div class="span3"><i class="icon-th-list"></i></div><div class="span3"><i class="icon-underline"></i></div><div class="span3"><i class="icon-undo"></i></div><div class="span3"><i class="icon-unlink"></i></div><div class="span3"><i class="icon-angle-down"></i></div><div class="span3"><i class="icon-angle-left"></i></div><div class="span3"><i class="icon-angle-right"></i></div><div class="span3"><i class="icon-angle-up"></i></div><div class="span3"><i class="icon-arrow-down"></i></div><div class="span3"><i class="icon-arrow-left"></i></div><div class="span3"><i class="icon-arrow-right"></i></div><div class="span3"><i class="icon-arrow-up"></i></div><div class="span3"><i class="icon-caret-down"></i></div><div class="span3"><i class="icon-caret-left"></i></div><div class="span3"><i class="icon-caret-right"></i></div><div class="span3"><i class="icon-caret-up"></i></div><div class="span3"><i class="icon-chevron-down"></i></div><div class="span3"><i class="icon-chevron-left"></i></div><div class="span3"><i class="icon-chevron-right"></i></div><div class="span3"><i class="icon-chevron-sign-down"></i></div><div class="span3"><i class="icon-chevron-sign-left"></i></div><div class="span3"><i class="icon-chevron-sign-right"></i></div><div class="span3"><i class="icon-chevron-sign-up"></i></div><div class="span3"><i class="icon-chevron-up"></i></div><div class="span3"><i class="icon-circle-arrow-down"></i></div><div class="span3"><i class="icon-circle-arrow-left"></i></div><div class="span3"><i class="icon-circle-arrow-right"></i></div><div class="span3"><i class="icon-circle-arrow-up"></i></div><div class="span3"><i class="icon-double-angle-down"></i></div><div class="span3"><i class="icon-double-angle-left"></i></div><div class="span3"><i class="icon-double-angle-right"></i></div><div class="span3"><i class="icon-double-angle-up"></i></div><div class="span3"><i class="icon-hand-down"></i></div><div class="span3"><i class="icon-hand-left"></i></div><div class="span3"><i class="icon-hand-right"></i></div><div class="span3"><i class="icon-hand-up"></i></div><div class="span3"><i class="icon-long-arrow-down"></i></div><div class="span3"><i class="icon-long-arrow-left"></i></div><div class="span3"><i class="icon-long-arrow-right"></i></div><div class="span3"><i class="icon-long-arrow-up"></i></div><div class="span3"><i class="icon-backward"></i></div><div class="span3"><i class="icon-eject"></i></div><div class="span3"><i class="icon-fast-backward"></i></div><div class="span3"><i class="icon-fast-forward"></i></div><div class="span3"><i class="icon-forward"></i></div><div class="span3"><i class="icon-fullscreen"></i></div><div class="span3"><i class="icon-pause"></i></div><div class="span3"><i class="icon-play"></i></div><div class="span3"><i class="icon-play-circle"></i></div><div class="span3"><i class="icon-play-sign"></i></div><div class="span3"><i class="icon-resize-full"></i></div><div class="span3"><i class="icon-resize-small"></i></div><div class="span3"><i class="icon-step-backward"></i></div><div class="span3"><i class="icon-step-forward"></i></div><div class="span3"><i class="icon-stop"></i></div><div class="span3"><i class="icon-youtube-play"></i></div>
  <div class="span3"><i class="icon-adn"></i></div><div class="span3"><i class="icon-android"></i></div><div class="span3"><i class="icon-apple"></i></div><div class="span3"><i class="icon-bitbucket"></i></div><div class="span3"><i class="icon-bitbucket-sign"></i></div><div class="span3"><i class="icon-bitcoin"></i></div><div class="span3"><i class="icon-btc"></i></div><div class="span3"><i class="icon-css3"></i></div><div class="span3"><i class="icon-dribbble"></i></div><div class="span3"><i class="icon-dropbox"></i></div><div class="span3"><i class="icon-facebook"></i></div><div class="span3"><i class="icon-facebook-sign"></i></div><div class="span3"><i class="icon-flickr"></i></div><div class="span3"><i class="icon-foursquare"></i></div><div class="span3"><i class="icon-github"></i></div><div class="span3"><i class="icon-github-alt"></i></div><div class="span3"><i class="icon-github-sign"></i></div><div class="span3"><i class="icon-gittip"></i></div><div class="span3"><i class="icon-google-plus"></i></div><div class="span3"><i class="icon-google-plus-sign"></i></div><div class="span3"><i class="icon-html5"></i></div><div class="span3"><i class="icon-instagram"></i></div><div class="span3"><i class="icon-linkedin"></i></div><div class="span3"><i class="icon-linkedin-sign"></i></div><div class="span3"><i class="icon-linux"></i></div><div class="span3"><i class="icon-maxcdn"></i></div><div class="span3"><i class="icon-pinterest"></i></div><div class="span3"><i class="icon-pinterest-sign"></i></div><div class="span3"><i class="icon-renren"></i></div><div class="span3"><i class="icon-skype"></i></div><div class="span3"><i class="icon-stackexchange"></i></div><div class="span3"><i class="icon-trello"></i></div><div class="span3"><i class="icon-tumblr"></i></div><div class="span3"><i class="icon-tumblr-sign"></i></div><div class="span3"><i class="icon-twitter"></i></div><div class="span3"><i class="icon-twitter-sign"></i></div><div class="span3"><i class="icon-vk"></i></div><div class="span3"><i class="icon-weibo"></i></div><div class="span3"><i class="icon-windows"></i></div><div class="span3"><i class="icon-xing"></i></div><div class="span3"><i class="icon-xing-sign"></i></div><div class="span3"><i class="icon-youtube"></i></div><div class="span3"><i class="icon-youtube-play"></i></div><div class="span3"><i class="icon-youtube-sign"></i></div>
  <div class="span3"><i class="icon-ambulance"></i></div><div class="span3"><i class="icon-h-sign"></i></div><div class="span3"><i class="icon-hospital"></i></div><div class="span3"><i class="icon-medkit"></i></div><div class="span3"><i class="icon-plus-sign-alt"></i></div><div class="span3"><i class="icon-stethoscope"></i></div><div class="span3"><i class="icon-user-md"></i></div>
</div></div></div>

<script type="text/javascript" src="{relative_path}/src/forum/admin/categories.js"></script>