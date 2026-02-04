{{{ if !config.theme.alternativeNavigation }}}
{{{ if (brand:logo || (config.showSiteTitle || widgets.brand-header.length)) }}}
<div class="container-lg px-md-4 brand-container">
	<div class="col-12 d-flex border-bottom pb-3 {{{ if config.theme.centerHeaderElements }}}justify-content-center{{{ end }}}">
		<!-- IMPORT partials/header/brand-content.tpl -->
	</div>
</div>
{{{ end }}}
{{{ else }}}

<div class="container-lg px-md-4 brand-container">
	<div class="col-12 d-flex border-bottom py-3 align-items-center">
		<div class="d-flex align-items-center">
		<!-- IMPORT partials/header/brand-content.tpl -->
		</div>
		<div class="sidebar sidebar-right ms-auto d-none d-lg-block rounded-2">
			{{{ if config.loggedIn }}}
			<ul id="logged-in-menu" class="list-unstyled d-flex gap-2 m-0 p-2" role="menu">
			<!-- IMPORT partials/header/logged-in-menu.tpl -->
			</ul>
			{{{ else }}}
			<ul id="logged-out-menu" class="list-unstyled d-flex gap-2 m-0 p-2" role="menu">
			<!-- IMPORT partials/header/logged-out-menu.tpl -->
			</ul>
			{{{ end }}}
		</div>
	</div>
</div>
{{{ end }}}