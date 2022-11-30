<nav class="text-dark bg-light sidebar sidebar-left vh-100 d-flex flex-column justify-content-between sticky-top">
	<ul id="main-nav" class="navbar-nav overflow-hidden w-100">
		{{{ each navigation }}}
		<!-- IF function.displayMenuItem, @index -->
		<li class="nav-item m-2 {navigation.class}{{{ if navigation.dropdown }}} dropdown{{{ end }}}" title="{navigation.title}">
			<a class="nav-link nav-btn navigation-link text-truncate {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
			{{{ if navigation.dropdown }}} href="#" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" {{{ else }}} href="{navigation.route}"{{{ end }}} {{{ if navigation.id }}}id="{navigation.id}"{{{ end }}}{{{ if navigation.targetBlank }}} target="_blank"{{{ end }}}>
				{{{ if navigation.iconClass }}}
				<i class="fa fa-fw {navigation.iconClass}" data-content="{navigation.content}"></i>
				{{{ end }}}
				{{{ if navigation.text }}}
				<span class="nav-text visible-open px-2">{navigation.text}</span>
				{{{ end }}}
				{{{ if navigation.dropdown}}}
				<i class="fa fa-caret-down"></i>
				{{{ end }}}
			</a>
			{{{ if navigation.dropdown }}}
			<ul class="dropdown-menu">
				{navigation.dropdownContent}
			</ul>
			{{{ end }}}
		</li>
		<!-- ENDIF function.displayMenuItem -->
		{{{end}}}
	</ul>
	<div class="navbar-nav w-100">
		<div class="sidebar-toggle d-flex m-2">
			<a href="#" role="button" component="sidebar/toggle" class="nav-btn p-2 pointer nav-link">
				<i class="fa fa-fw fa-angles-right"></i>
				<i class="fa fa-fw fa-angles-left"></i>
			</a>
		</div>
	</div>
</nav>