<!-- IMPORT partials/breadcrumbs.tpl -->

<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>

<div class="tag">
	<!-- IMPORT partials/topic-list-bar.tpl -->

	<div class="category">
		{{{ if !topics.length }}}
		<div class="alert alert-warning">[[tags:no_tag_topics]]</div>
		{{{ end }}}

		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}
	</div>
</div>
