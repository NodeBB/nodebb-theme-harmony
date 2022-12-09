<!-- IMPORT partials/breadcrumbs.tpl -->

<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>

<div class="recent">
	<nav class="topic-list-header sticky-top navbar navbar-expand bg-light mt-4 p-2 border rounded ff-secondary" style="z-index: 3!important;">
		<ul class="navbar-nav me-auto gap-2 align-items-center">
			<div class="d-flex gap-1 align-items-stretch">
				<!-- IMPORT partials/topic-filters.tpl -->
				<!-- IMPORT partials/category-filter.tpl -->
				<!-- IMPORT partials/category/tools.tpl -->

				{{{ if (!feeds:disableRSS && rssFeedUrl) }}}
				<a class="btn btn-link" target="_blank" href="{rssFeedUrl}" itemprop="item"><i class="fa fa-rss"></i></a>
				{{{ end }}}

				<a href="{config.relative_path}/{selectedFilter.url}{querystring}" class="d-inline-block">
					<div class="alert alert-warning h-100 m-0 px-2 py-1 d-flex align-items-center hide" id="new-topics-alert"></div>
				</a>
			</div>
		</ul>

		<div class="d-flex gap-1 align-items-stretch">
			{{{ if canPost }}}
			<!-- IMPORT partials/buttons/newTopic.tpl -->
			{{{ else }}}
			<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
			{{{ end }}}
		</div>
	</nav>

	<div class="category">
		{{{ if !topics.length }}}
		<div class="alert alert-warning" id="category-no-topics">[[recent:no_recent_topics]]</div>
		{{{ end }}}

		<!-- IMPORT partials/topics_list.tpl -->

		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}
	</div>
</div>
