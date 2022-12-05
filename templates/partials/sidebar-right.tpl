<nav class="text-dark bg-light sidebar sidebar-right vh-100 d-flex flex-column justify-content-between sticky-top ff-secondary">
	{{{ if config.loggedIn }}}
	<ul id="logged-in-menu" class="list-unstyled d-flex flex-column w-100 gap-2 mt-2">
		<!-- IMPORT partials/sidebar/user-menu.tpl -->
		<!-- IMPORT partials/sidebar/search.tpl -->
		<!-- IMPORT partials/sidebar/notifications.tpl -->
		<!-- IMPORT partials/sidebar/chats.tpl -->
		<!-- IMPORT partials/sidebar/drafts.tpl -->
	</ul>
	{{{ end }}}

</nav>