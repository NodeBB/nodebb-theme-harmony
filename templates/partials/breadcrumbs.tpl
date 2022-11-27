<!-- IF breadcrumbs.length -->
<ol class="breadcrumb justify-content-center mb-2" itemscope="itemscope" itemprop="breadcrumb" itemtype="http://schema.org/BreadcrumbList">
	{{{each breadcrumbs}}}
	<li<!-- IF @last --> component="breadcrumb/current"<!-- ENDIF @last --> itemscope="itemscope" itemprop="itemListElement" itemtype="http://schema.org/ListItem" class="breadcrumb-item <!-- IF @last -->active<!-- ENDIF @last -->">
		<meta itemprop="position" content="{@index}" />
		{{{ if ./url }}}<a class="text-decoration-none" href="{breadcrumbs.url}" itemprop="item">{{{ end }}}
			<span itemprop="name">{breadcrumbs.text}</span>
		{{{ if ./url }}}</a>{{{ end }}}
	</li>
	{{{end}}}
</ol>
<!-- ENDIF breadcrumbs.length -->
