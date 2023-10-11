<script type="application/ld+json">
{
	"@context": "https://schema.org",
	"@type": "BreadcrumbList",
	"itemListElement": [
		{
			"@type": "ListItem",
			"position": 1,
			"name": "{config.siteTitle}",
			"item": "/"
		},
		{{{ each breadcrumbs }}}
		{{{ if !@first}}}
		{
			"@type": "ListItem",
			"position": {increment(@index, "1")},
			"name": "{./text}"
			{{{ if !@last }}}
			,"item": "{./url}"
			{{{ end }}}
		}{{{ if !@last}}},{{{ end }}}
		{{{ end }}}
		{{{ end }}}
	]
}
</script>