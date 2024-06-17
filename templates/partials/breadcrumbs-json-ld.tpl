<script type="application/ld+json">{
"@context": "https://schema.org",
"@type": "BreadcrumbList",
"itemListElement": [{
	"@type": "ListItem",
	"position": 1,
	"name": "{config.siteTitle}",
	"item": "{breadcrumbs.0.url}"
}
{{{ each breadcrumbs }}}{{{ if !@first}}},{
	"@type": "ListItem",
	"position": {increment(@index, "1")},
	"name": "{stripTags(./text)}"
	{{{ if !@last }}},"item": "{./url}"{{{ end }}}
}{{{ end }}}{{{ end }}}
]}</script>