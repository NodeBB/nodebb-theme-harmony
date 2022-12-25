<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->
		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			<div class="d-flex justify-content-between align-items-center mb-3">
				<h3 class="fw-semibold fs-5 mb-0">[[global:topics]]</h3>
				<div class="d-flex gap-1">
					<a href="{config.relative_path}/user/{userslug}/topics" class="btn-ghost-sm fw-semibold {{{ if template.account/topics }}}active{{{ end }}}">[[global:header.recent]]</a>
					{{{ if canEdit }}}
					<a href="{config.relative_path}/user/{userslug}/watched"class="btn-ghost-sm fw-semibold {{{ if template.account/watched }}}active{{{ end }}}">[[user:watched]]</a>
					<a href="{config.relative_path}/user/{userslug}/ignored" class="btn-ghost-sm fw-semibold {{{ if template.account/ignored }}}active{{{ end }}}">[[user:ignored]]</a>
					{{{ end }}}
				</div>
			</div>

			{{{ if showSort }}}
			<div class="btn-toolbar justify-content-end mb-2">
				<div class="btn-group bottom-sheet" component="thread/sort">
					<button class="btn-ghost-sm dropdown-toggle" data-bs-toggle="dropdown" type="button"><span>[[topic:sort_by]]</span></button>
					<ul class="dropdown-menu dropdown-menu-end">
						{{{each sortOptions }}}
						<li><a class="dropdown-item" href="{config.relative_path}{sortOptions.url}"><i class="fa fa-fw {{{if sortOptions.selected}}}fa-check{{{end}}}"></i>{sortOptions.name}</a></li>
						{{{end}}}
					</ul>
				</div>
			</div>
			{{{ end }}}

			{{{ if !topics.length }}}
			<div class="alert alert-warning text-center">{noItemsFoundKey}</div>
			{{{ end }}}

			<div class="category">
				<!-- IMPORT partials/topics_list.tpl -->
				{{{ if config.usePagination }}}
				<!-- IMPORT partials/paginator.tpl -->
				{{{ end }}}
			</div>
		</div>
	</div>
</div>
