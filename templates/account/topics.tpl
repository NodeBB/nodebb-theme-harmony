<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-md-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->
		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			<div class="d-flex justify-content-between align-items-center mb-3">
				<div class="d-flex gap-1">
					<h3 class="fw-semibold fs-5 mb-0">[[global:topics]]</h3>
					{{{ if showSort }}}
					<div class="btn-group bottom-sheet" component="thread/sort">
						<button title="[[global:sort]]" class="btn-ghost-sm dropdown-toggle" data-bs-toggle="dropdown" type="button"><i class="fa-solid fa-arrow-up-wide-short"></i></button>
						<ul class="dropdown-menu">
							{{{each sortOptions }}}
							<li><a class="dropdown-item" href="{config.relative_path}{./url}"><i class="fa fa-fw {{{if ./selected}}}fa-check{{{end}}}"></i>{./name}</a></li>
							{{{end}}}
						</ul>
					</div>
					{{{ end }}}
				</div>

				<div class="d-flex gap-1">
					{{{ if canEdit }}}
					<a href="{config.relative_path}/user/{userslug}/topics" class="btn-ghost-sm fw-semibold {{{ if template.account/topics }}}active{{{ end }}}">[[global:header.recent]]</a>
					<a href="{config.relative_path}/user/{userslug}/watched"class="btn-ghost-sm fw-semibold {{{ if template.account/watched }}}active{{{ end }}}">[[user:watched]]</a>
					<a href="{config.relative_path}/user/{userslug}/ignored" class="btn-ghost-sm fw-semibold {{{ if template.account/ignored }}}active{{{ end }}}">[[user:ignored]]</a>
					{{{ end }}}
				</div>
			</div>


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
