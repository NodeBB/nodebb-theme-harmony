<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="top">
	<!-- IMPORT partials/topic-list-bar.tpl -->
	<div class="category">
		{{{ if !topics.length }}}
		<div class="alert alert-warning" id="category-no-topics">[[top:no_top_topics]]</div>
		{{{ end }}}

		<!-- IMPORT partials/topics_list.tpl -->

		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}
	</div>
</div>
