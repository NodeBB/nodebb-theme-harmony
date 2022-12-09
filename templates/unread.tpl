<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="unread">
	<!-- IMPORT partials/topic-list-bar.tpl -->
	<div class="category">
		<div id="category-no-topics" class="alert alert-warning {{{ if topics.length }}}hidden{{{ end }}}">[[unread:no_unread_topics]]</div>

		<!-- IMPORT partials/topics_list.tpl -->
		<button id="load-more-btn" class="btn btn-primary hide">[[unread:load_more]]</button>
		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}
	</div>
</div>
