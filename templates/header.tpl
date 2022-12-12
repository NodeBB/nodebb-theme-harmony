<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" {{{if languageDirection}}}data-dir="{languageDirection}" style="direction: {languageDirection};"{{{end}}}>
<head>
	<title>{browserTitle}</title>
	{{{each metaTags}}}{function.buildMetaTag}{{{end}}}
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/client{{{if bootswatchSkin}}}-{bootswatchSkin}{{{end}}}{{{ if (languageDirection=="rtl") }}}-rtl{{{ end }}}.css?{config.cache-buster}" />
	{{{each linkTags}}}{function.buildLinkTag}{{{end}}}

	<script>
		var config = JSON.parse('{{configJSON}}');
		var app = {
			user: JSON.parse('{{userJSON}}')
		};

		document.documentElement.style.setProperty('--panel-offset', `${localStorage.getItem('panelOffset') || 0}px`);
	</script>

	{{{if useCustomHTML}}}
	{{customHTML}}
	{{{end}}}
	{{{if useCustomCSS}}}
	<style>{{customCSS}}</style>
	{{{end}}}
</head>

<body class="{bodyClass} skin-{{{if bootswatchSkin}}}{bootswatchSkin}{{{else}}}noskin{{{end}}}">
	<div class="d-flex justify-content-between pb-4 pb-md-0">
		<!-- IMPORT partials/sidebar-left.tpl -->

		<main id="panel" class="d-flex flex-column gap-5 flex-grow-1">
			{{{ if (brand:logo || config.showSiteTitle )}}}
			<div class="d-flex flex-column align-items-center mt-5 gap-2">
				{{{ if brand:logo }}}
				<a component="brand/logo" href="{{{ if brand:logo:url }}}{brand:logo:url}{{{ else }}}{relative_path}/{{{ end }}}">
					<img component="brand/logo" alt="{brand:logo:alt}" class="{brand:logo:display}" src="{brand:logo}?{config.cache-buster}" />
				</a>
				{{{ end }}}

				{{{ if config.showSiteTitle }}}
				<a component="siteTitle" class="text-truncate shadow-sm rounded-1" href="{{{ if title:url }}}{title:url}{{{ else }}}{relative_path}/{{{ end }}}">
					<h1 class="mx-3 my-0">{config.siteTitle}</h1>
				</a>
				{{{ end }}}
			</div>
			{{{ end }}}
			<script>
				const headerEl = document.getElementById('header-menu');
				if (headerEl) {
					const rect = headerEl.getBoundingClientRect();
					const offset = Math.max(0, rect.bottom);
					document.documentElement.style.setProperty('--panel-offset', offset + `px`);
				}
			</script>
			<div class="container d-flex flex-column gap-3 mt-3" id="content">
			<!-- IMPORT partials/noscript/warning.tpl -->
			<!-- IMPORT partials/noscript/message.tpl -->
