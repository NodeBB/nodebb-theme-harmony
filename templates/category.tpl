<!-- IMPORT partials/breadcrumbs-json-ld.tpl -->
{{{ if config.theme.enableBreadcrumbs }}}
<!-- IMPORT partials/breadcrumbs.tpl -->
{{{ end }}}

<div class="category-header d-flex flex-column gap-2">
	<div class="d-flex gap-2 align-items-center mb-1 {{{ if config.theme.centerHeaderElements }}}justify-content-center{{{ end }}}">
		{buildCategoryIcon(@value, "40px", "rounded-1 flex-shrink-0")}
		<h1 class="tracking-tight fs-2 fw-semibold mb-0 text-center">{./name}</h1>
	</div>
	{{{ if ./descriptionParsed }}}
	<div class="description text-secondary text-sm w-100 {{{ if config.theme.centerHeaderElements }}}text-center{{{ end }}}">
		{./descriptionParsed}
	</div>
	{{{ end }}}
	<div class="d-flex flex-wrap gap-2 {{{ if config.theme.centerHeaderElements }}}justify-content-center{{{ end }}}">
		<span class="badge text-body border border-gray-300 stats text-xs">
			<span title="{totalTopicCount}" class="fw-bold">{humanReadableNumber(totalTopicCount)}</span>
			<span class="text-lowercase fw-normal">[[global:topics]]</span>
		</span>
		<span class="badge text-body border border-gray-300 stats text-xs">
			<span title="{totalPostCount}" class="fw-bold">{humanReadableNumber(totalPostCount)}</span>
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
		{{{ if (topics.length || privileges.topics:create) }}}
		<!-- IMPORT partials/topic-list-bar.tpl -->
		{{{ end }}}

		{{{ if (!topics.length && privileges.topics:create) }}}
		<div class="alert alert-info" id="category-no-topics">
			[[category:no-topics]]
		</div>
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

{{{ if !config.usePagination }}}
<noscript>
	<!-- IMPORT partials/paginator.tpl -->
</noscript>
{{{ end }}}
