<nav component="sidebar/right" class="{{{ if config.theme.openSidebars}}}open{{{ end }}} text-dark bg-light sidebar sidebar-right end-0 border-start vh-100 d-none d-lg-flex flex-column sticky-top">
	{{{ if config.loggedIn }}}
	<ul id="logged-in-menu" class="list-unstyled d-flex flex-column w-100 gap-2 mt-2" role="menu">
	<!-- IMPORT partials/sidebar/logged-in-menu.tpl -->
	</ul>
	{{{ else }}}
	<ul id="logged-out-menu" class="list-unstyled d-flex flex-column w-100 gap-2 mt-2" role="menu">
	<!-- IMPORT partials/sidebar/logged-out-menu.tpl -->
	</ul>
	{{{ end }}}

	<div class="visible-open small text-secondary mt-auto" data-widget-area="sidebar-footer">
		{{{each widgets.sidebar-footer}}}
		{{./html}}
		{{{end}}}
	</div>
</nav>