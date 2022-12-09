<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="d-flex flex-column gap-2 mt-1">
	<div class="d-flex justify-content-center gap-2">
		{buildCategoryIcon(@value, "40px", "rounded-1")}
		<h2 class="fs-2 fw-semibold">{./name}</h2>
	</div>
	<div class="d-flex flex-wrap justify-content-center gap-2">
		<span class="badge stats">
			<span title="{totalTopicCount}" class="human-readable-number fw-bold">{totalTopicCount}</span>
			<span class="hidden-xs text-lowercase fw-normal">[[global:topics]]</span>
		</span>
		<span class="badge stats">
			<span title="{totalPostCount}" class="human-readable-number fw-bold">{totalPostCount}</span>
			<span class="hidden-xs text-lowercase fw-normal">[[global:posts]]</span>
		</span>
	</div>
</div>
<div data-widget-area="header">
	{{{ each widgets.header }}}
	{{widgets.header.html}}
	{{{ end }}}
</div>
<div class="row">
	<div class="category {{{if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<!-- IMPORT partials/category/subcategory.tpl -->

		<nav class="topic-list-header sticky-top navbar navbar-expand bg-light mt-4 p-2 border rounded ff-secondary" style="z-index: 3!important;">
			<ul class="navbar-nav me-auto gap-2 align-items-center">
				<div class="d-flex gap-1 align-items-stretch">
					<!-- IMPORT partials/category/watch.tpl -->
					<!-- IMPORT partials/category/sort.tpl -->
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
				{{{ if privileges.topics:create }}}
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary text-nowrap" data-ajaxify="false" role="button">[[category:new_topic_button]]</a>
				{{{ else }}}
					{{{ if !loggedIn }}}
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					{{{ end }}}
				{{{ end }}}
			</div>
		</nav>

		{{{ if !topics.length }}}
		{{{ if privileges.topics:create }}}
		<hr class="visible-xs" />
		<div class="alert alert-warning" id="category-no-topics">
			[[category:no_topics]]
		</div>
		{{{ end }}}
		{{{ end }}}

		<!-- IMPORT partials/topics_list.tpl -->

		{{{ if config.usePagination }}}
		<!-- IMPORT partials/paginator.tpl -->
		{{{ end }}}
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
		{{{ each widgets.sidebar }}}
		{{widgets.sidebar.html}}
		{{{ end }}}
	</div>
</div>
<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>

<!-- IF !config.usePagination -->
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
<!-- ENDIF !config.usePagination -->
