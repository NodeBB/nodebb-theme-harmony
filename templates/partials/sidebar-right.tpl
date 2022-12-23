<nav class="text-dark bg-light sidebar sidebar-right vh-100 d-none d-md-flex flex-column sticky-top ff-secondary">
	{{{ if config.loggedIn }}}
	<ul id="logged-in-menu" class="list-unstyled d-flex flex-column w-100 gap-2 mt-2">
		<li id="user_label" class="nav-item mx-2 dropstart usermenu" title="[[global:header.profile]]">
		<!-- IMPORT partials/sidebar/user-menu.tpl -->
		</li>

		{{{ if config.searchEnabled }}}
		<li component="sidebar/search" class="nav-item mx-2 search dropstart position-relative">
		<!-- IMPORT partials/sidebar/search.tpl -->
		</li>
		{{{ end }}}

		<li component="notifications" class="nav-item mx-2 notifications dropstart">
		<!-- IMPORT partials/sidebar/notifications.tpl -->
		</li>

		{{{ if canChat }}}
		<li class="nav-item mx-2 chats dropstart">
		<!-- IMPORT partials/sidebar/chats.tpl -->
		</li>
		{{{ end }}}

		<li component="sidebar/drafts" class="nav-item mx-2 drafts dropstart">
		<!-- IMPORT partials/sidebar/drafts.tpl -->
		</li>
	</ul>
	{{{ else }}}
	<ul id="logged-out-menu" class="list-unstyled d-flex flex-column w-100 gap-2 mt-2">
	<!-- IMPORT partials/sidebar/logged-out-menu.tpl -->
	</ul>
	{{{ end }}}

	<!-- IMPORT partials/topic/navigator.tpl -->

	<div class="visible-open small text-secondary mt-auto" data-widget-area="sidebar-footer">
		{{{each widgets.sidebar-footer}}}
		{{./html}}
		{{{end}}}
	</div>
</nav>