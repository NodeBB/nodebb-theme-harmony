<div component="bottombar" class="bottombar d-flex flex-column d-lg-none fixed-bottom ff-secondary gap-1 align-items-center" style="bottom: 0px;">

	<!-- IMPORT partials/topic/navigator-mobile.tpl -->

	<div class="bottombar-nav p-2 text-dark bg-light d-flex justify-content-between align-items-center w-100">
		<div class="bottombar-nav-left d-flex gap-3 align-items-center">
			<div>
				<a href="#" role="button" class="nav-link d-flex justify-content-between align-items-center position-relative" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<span class="position-relative">
						<i class="fa fa-fw fa-lg fa-bars"></i>
						<span component="unread/count" data-unread-url="{unreadCount.unreadUrl}" class="position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !unreadCount.mobileUnread }}}hidden{{{ end }}}">{unreadCount.mobileUnread}</span>
					</span>
				</a>
				<ul class="navigation-dropdown dropdown-menu" role="menu">
					{{{ each navigation }}}
					{{{ if displayMenuItem(@root, @index) }}}
					<li class="nav-item {./class}{{{ if ./dropdown }}} dropend{{{ end }}}" title="{./title}">
						<a class="nav-link navigation-link px-3 py-2 {{{ if ./dropdown }}}dropdown-toggle{{{ end }}}" {{{ if ./dropdown }}} href="#" role="button" data-bs-toggle="collapse" data-bs-target="#collapse-target-{@index}" onclick="event.stopPropagation();" {{{ else }}} href="{./route}"{{{ end }}} {{{ if ./id }}}id="{./id}"{{{ end }}}{{{ if ./targetBlank }}} target="_blank"{{{ end }}}>
							<span class="d-inline-flex justify-content-between align-items-center w-100">
								<span class="text-nowrap">
									{{{ if ./iconClass }}}
									<i class="fa fa-fw {./iconClass}" data-content="{./content}"></i>
									{{{ end }}}
									{{{ if ./text }}}<span class="nav-text px-2 fw-semibold">{./text}</span>{{{ end }}}
								</span>
								<span component="navigation/count" class="badge rounded-1 bg-primary {{{ if !./content }}}hidden{{{ end }}}">{./content}</span>
							</span>
						</a>
						{{{ if ./dropdown }}}
						<div class="ps-3">
							<ul id="collapse-target-{@index}" class="collapse list-unstyled ps-3">
								{./dropdownContent}
							</ul>
						</div>
						{{{ end }}}
					</li>
					{{{ end }}}
					{{{ end }}}
				</ul>
			</div>
		</div>
		<div class="bottombar-nav-right d-flex gap-3 align-items-center">
			<div>
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

					<li component="sidebar/drafts" class="hidden nav-item m-0 drafts">
					<!-- IMPORT partials/sidebar/drafts.tpl -->
					</li>

					<li id="user_label" class="nav-item m-0 usermenu">
					<!-- IMPORT partials/sidebar/user-menu.tpl -->
					</li>
				</ul>
				{{{ else }}}
				<ul id="logged-out-menu" class="list-unstyled d-flex w-100 gap-3 mb-0 logged-out-menu">
					{{{ if (config.searchEnabled && user.privileges.search:content) }}}
					<li component="sidebar/search" class="nav-item mx-2 search">
						<!-- IMPORT partials/sidebar/search-mobile.tpl -->
					</li>
					{{{ end }}}

					{{{ if allowRegistration }}}
					<li class="nav-item mx-2" title="[[global:register]]">
						<a class="nav-link" href="{relative_path}/register">
							<i class="fa fa-fw fa-user-plus"></i>
						</a>
					</li>
					{{{ end }}}

					<li class="nav-item mx-2" title="[[global:login]]">
						<a class="nav-link" href="{relative_path}/login">
							<i class="fa fa-fw fa-sign-in"></i>
						</a>
					</li>
				</ul>
				{{{ end }}}
			</div>
		</div>
	</div>
</div>