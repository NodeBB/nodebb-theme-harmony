<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="d-flex flex-column gap-2">
	<div class="d-flex gap-2 align-items-center mb-3">
		{buildCategoryIcon(@value, "40px", "rounded-1 flex-shrink-0")}
		<h2 class="fs-2 fw-semibold mb-0">{./name}</h2>
	</div>
	<div class="d-flex flex-wrap gap-2">
		<span class="badge stats">
			<span title="{totalTopicCount}" class="human-readable-number fw-bold">{totalTopicCount}</span>
			<span class="text-lowercase fw-normal">[[global:topics]]</span>
		</span>
		<span class="badge stats">
			<span title="{totalPostCount}" class="human-readable-number fw-bold">{totalPostCount}</span>
			<span class="text-lowercase fw-normal">[[global:posts]]</span>
		</span>
	</div>
</div>

{{{ if widgets.header.length }}}
<div data-widget-area="header">
	{{{ each widgets.header }}}
	{{widgets.header.html}}
	{{{ end }}}
</div>
{{{ end }}}

<div class="row mt-3">
	<div class="category d-flex flex-column {{{if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<!-- IMPORT partials/category/subcategory.tpl -->

		<!-- IMPORT partials/topic-list-bar.tpl -->

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
