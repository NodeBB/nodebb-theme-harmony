<nav class="text-dark bg-light sidebar sidebar-left vh-100 d-none d-md-flex flex-column justify-content-between sticky-top ff-secondary">
	<ul id="main-nav" class="list-unstyled d-flex flex-column w-100 gap-2 mt-2">
		{{{ each navigation }}}
		<!-- IF function.displayMenuItem, @index -->
		<li class="nav-item mx-2 {./class}{{{ if ./dropdown }}} dropend{{{ end }}}" title="{./title}">
			<a class="nav-link nav-btn navigation-link d-flex gap-2 justify-content-between align-items-center {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
			{{{ if ./dropdown }}} href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {{{ else }}} href="{./route}"{{{ end }}} {{{ if ./id }}}id="{./id}"{{{ end }}}{{{ if ./targetBlank }}} target="_blank"{{{ end }}}>
				<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
					<span class="position-relative">
						{{{ if ./iconClass }}}
						<i class="fa fa-fw {./iconClass}" data-content="{./content}"></i>
						<span component="navigation/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !./content }}}hidden{{{ end }}}">{./content}</span>
						{{{ end }}}
					</span>
					{{{ if navigation.text }}}
					<span class="nav-text small visible-open fw-semibold">{navigation.text}</span>
					{{{ end }}}
				</span>
				<span component="navigation/count" class="visible-open badge rounded-1 bg-primary {{{ if !./content }}}hidden{{{ end }}}">{./content}</span>
			</a>
			{{{ if navigation.dropdown }}}
			<ul class="dropdown-menu shadow">
				{navigation.dropdownContent}
			</ul>
			{{{ end }}}
		</li>
		<!-- ENDIF function.displayMenuItem -->
		{{{end}}}
	</ul>
	<div class="navbar-nav w-100">
		<!-- IMPORT partials/skin-switcher.tpl -->
		<div class="sidebar-toggle m-2">
			<a href="#" role="button" component="sidebar/toggle" class="nav-btn d-flex gap-2 align-items-center p-2 pointer nav-link w-100 text-nowrap">
				<i class="fa fa-fw fa-angles-right"></i>
				<i class="fa fa-fw fa-angles-left"></i>
				<span class="nav-text visible-open fw-semibold small">[[harmony:collapse]]</span>
			</a>
		</div>
	</div>
</nav>