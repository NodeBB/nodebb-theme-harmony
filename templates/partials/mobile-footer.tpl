<div class="text-dark bg-light bottombar p-2 d-flex d-md-none justify-content-between fixed-bottom ff-secondary align-items-center">
	<div class="">
		<button class="btn" data-bs-toggle="dropdown">
			<span class="position-relative">
				<i class="fa fa-bars"></i>
				<span component="unread/count" data-unread-url="{unreadCount.unreadUrl}" class="position-absolute top-0 start-100 translate-middle badge rounded-1 text-bg-danger {{{ if !unreadCount.mobileUnread }}}hidden{{{ end }}}">{unreadCount.mobileUnread}</span>
			</span>
		</button>
		<ul class="navigation-dropdown dropdown-menu">
			{{{ each navigation }}}
			<!-- IF function.displayMenuItem, @index -->
			<li class="nav-item {./class}{{{ if ./dropdown }}} dropend{{{ end }}}" title="{./title}">
				<a class="nav-link nav-btn navigation-link px-3 py-2 {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
				{{{ if ./dropdown }}} href="#" role="button" data-bs-toggle="collapse" data-bs-target="#collapse-target-{@index}" onclick="event.stopPropagation();" {{{ else }}} href="{./route}"{{{ end }}} {{{ if ./id }}}id="{./id}"{{{ end }}}{{{ if ./targetBlank }}} target="_blank"{{{ end }}}>
					<span class="d-inline-flex justify-content-between align-items-center w-100">
						<span class="text-nowrap truncate-open">
							{{{ if ./iconClass }}}
							<i class="fa fa-fw {./iconClass}" data-content="{./content}"></i>
							{{{ end }}}
							{{{ if navigation.text }}}
							<span class="nav-text visible-open px-2 fw-semibold">{navigation.text}</span>
							{{{ end }}}
						</span>
						<span component="navigation/count" class="visible-open badge rounded-1 bg-primary {{{ if !./content }}}hidden{{{ end }}}">{./content}</span>
					</span>
				</a>
				{{{ if navigation.dropdown }}}
				<div class="ps-3">
					<ul id="collapse-target-{@index}" class="collapse list-unstyled ps-3">
						{navigation.dropdownContent}
					</ul>
				</div>
				{{{ end }}}
			</li>
			<!-- ENDIF function.displayMenuItem -->
			{{{end}}}
		</ul>
	</div>

	<div class="">
		{{{ if config.loggedIn }}}
		<ul id="logged-in-menu" class="list-unstyled d-flex align-items-center w-100 gap-3 mb-0">
			{{{ if config.searchEnabled }}}
			<li component="sidebar/search" class="nav-item m-0 search">
			<!-- IMPORT partials/sidebar/search-mobile.tpl -->
			</li>
			{{{ end }}}

			<li component="notifications" class="nav-item m-0 notifications">
			<!-- IMPORT partials/sidebar/notifications.tpl -->
			</li>

			{{{ if canChat }}}
			<li class="nav-item m-0 chats">
			<!-- IMPORT partials/sidebar/chats.tpl -->
			</li>
			{{{ end }}}

			<li component="sidebar/drafts" class="nav-item m-0 drafts">
			<!-- IMPORT partials/sidebar/drafts.tpl -->
			</li>

			<li id="user_label" class="nav-item m-0 py-2 usermenu">
			<!-- IMPORT partials/sidebar/user-menu.tpl -->
			</li>
		</ul>
		{{{ else }}}
		<ul id="logged-out-menu" class="list-unstyled d-flex w-100 gap-3 mb-0 logged-out-menu">
			<!-- IMPORT partials/sidebar/logged-out-menu.tpl -->
		</ul>
		{{{ end }}}
	</div>
</div>