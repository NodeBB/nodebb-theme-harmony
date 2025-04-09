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
		<h1 class="tracking-tight fs-2 fw-semibold mb-0 text-center">[[world:name]]</h1>
	</div>
	{{{ if ./descriptionParsed }}}
	<p class="description text-secondary text-sm w-100 {{{ if config.theme.centerHeaderElements }}}text-center{{{ end }}}">
		{./descriptionParsed}
	</p>
	{{{ end }}}

	<p class="description text-secondary text-sm w-100 {{{ if config.theme.centerHeaderElements }}}text-center{{{ end }}}">
		<a class="btn btn-sm btn-link" href="{config.relative_path}/popular?term=daily&cid=-1">[[world:popular]]</a>
		<a class="btn btn-sm btn-link" href="{config.relative_path}/recent?cid=-1">[[world:recent]]</a>
		<button class="btn btn-sm btn-link" id="world-help">
			<i class="fa fa-question"></i>
			[[world:help]]
		</button>
	</p>
</div>

<div class="row flex-fill">
	<div class="world {{{if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<form class="mb-4" role="search" method="GET" action="{config.relative_path}/search">
			<input type="hidden" name="in" value="categories" />
			<div class="input-group" id="category-options">
				<input class="form-control form-control-lg" component="category-search" name="term" type="text" autocomplete="off" placeholder="Find a category..." aria-label="Category Search" />
				<button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-cog"></i></button>
				<ul class="dropdown-menu dropdown-menu-end">
					<li id="show-categories"><a class="dropdown-item" href="#">
						<i class="fa fa-eye"></i>
						[[world:show-categories]]
					</a></li>
					<li id="hide-categories"><a class="dropdown-item" href="#">
						<i class="fa fa-eye-slash"></i>
						[[world:hide-categories]]
					</a></li>
				</ul>
			</div>
		</form>

		<div class="quick-search-container dropdown-menu d-block p-2 hidden">
			<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
			<div class="quick-search-results-container"></div>
		</div>

		<ul class="categories-list ps-0 hidden">
			{{{ each categories }}}
			<!-- IMPORT partials/categories/item.tpl -->
			{{{ end }}}
		</ul>

		<!-- IMPORT partials/topic-list-bar.tpl -->

		<div class="category">
			{{{ if !topics.length }}}
			<div class="row">
				<div class="col-md-10 offset-md-1 d-flex align-items-center">
					<div>
						<h2 class="fs-4 mb-3">[[world:onboard.title]]</h2>
						<p>[[world:onboard.what]]</p>
						<p>[[world:onboard.why]]</p>
						<p>[[world:onboard.how]]</p>
					</div>
					<i class="fa fa-comment-nodes fa-8x p-3"></i>
				</div>
			</div>
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