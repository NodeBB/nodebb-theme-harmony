{{{ if (brand:logo || config.showSiteTitle)}}}
<div class="container-lg px-md-4 brand-container">
	<div class="col-12 d-flex border-bottom pb-3 {{{ if config.theme.centerHeaderElements }}}justify-content-center{{{ end }}}">
		<div component="brand/wrapper" class="d-flex align-items-center gap-3 p-2 rounded-1 align-content-stretch ">
			{{{ if brand:logo }}}
			<a component="brand/anchor" href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}" title="[[global:header.brand-logo]]">
				<img component="brand/logo" alt="{{{ if brand:logo:alt }}}{brand:logo:alt}{{{ else }}}[[global:header.brand-logo]]{{{ end }}}" class="{brand:logo:display}" src="{brand:logo}?{config.cache-buster}" />
			</a>
			{{{ end }}}

			{{{ if config.showSiteTitle }}}
			<a component="siteTitle" class="text-truncate align-self-stretch align-items-center d-flex" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
				<h1 class="fs-6 fw-bold text-body mb-0">{config.siteTitle}</h1>
			</a>
			{{{ end }}}
		</div>
		{{{ if widgets.brand-header.length }}}
		<div data-widget-area="brand-header" class="flex-fill gap-3 p-2 align-self-center">
			{{{each widgets.brand-header}}}
			{{./html}}
			{{{end}}}
		</div>
		{{{ end }}}
	</div>
</div>
{{{ end }}}