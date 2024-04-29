{{{ if widgets.header.length }}}
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
{{{ end }}}

<div class="category-header d-flex flex-column gap-2">
	<div class="d-flex gap-2 align-items-center mb-1 {{{ if config.theme.centerHeaderElements }}}justify-content-center{{{ end }}}">
		{buildCategoryIcon(@value, "40px", "rounded-1 flex-shrink-0")}
		<h1 class="tracking-tight fs-2 fw-semibold mb-0 text-center">{./name}</h1>
	</div>
	{{{ if ./descriptionParsed }}}
	<p class="description text-secondary text-sm w-100 {{{ if config.theme.centerHeaderElements }}}text-center{{{ end }}}">
		{./descriptionParsed}
	</p>
	{{{ end }}}

	<p class="description text-secondary text-sm w-100 {{{ if config.theme.centerHeaderElements }}}text-center{{{ end }}}">
		<a class="btn btn-sm btn-link" href="{config.relative_path}/popular?term=daily&cid=-1">[[activitypub:world.popular]]</a>
		<a class="btn btn-sm btn-link" href="{config.relative_path}/recent?cid=-1">[[activitypub:world.recent]]</a>
		<button class="btn btn-sm btn-link" id="world-help">
			<i class="fa fa-question"></i>
			[[activitypub:world.help]]
		</button>
	</p>
</div>

<div class="row">
	<div class="world {{{if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<!-- IMPORT partials/topic-list-bar.tpl -->

		<div class="category">
			{{{ if !topics.length }}}
			<div class="alert alert-info" id="category-no-topics">[[activitypub:no-topics]]</div>
			{{{ end }}}

			<!-- IMPORT partials/topics_list.tpl -->

			{{{ if config.usePagination }}}
			<!-- IMPORT partials/paginator.tpl -->
			{{{ end }}}
		</div>
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