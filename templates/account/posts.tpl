<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->
		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			<div class="d-flex justify-content-between align-items-center mb-3">
				<h3 class="fw-semibold fs-5 mb-0">[[global:posts]]</h3>
				<div class="d-flex gap-1">
					<a href="{config.relative_path}/user/{userslug}/posts" class="btn-ghost-sm fw-semibold {{{ if template.account/posts }}}active{{{ end }}}">[[global:header.recent]]</a>
					{{{ if !reputation:disabled }}}
					<a href="{config.relative_path}/user/{userslug}/best"class="btn-ghost-sm fw-semibold {{{ if template.account/best }}}active{{{ end }}}">[[global:best]]</a>
					<a href="{config.relative_path}/user/{userslug}/controversial" class="btn-ghost-sm fw-semibold {{{ if template.account/controversial }}}active{{{ end }}}">[[global:controversial]]</a>
					{{{ if canEdit }}}
					<a href="{config.relative_path}/user/{userslug}/upvoted" class="btn-ghost-sm fw-semibold {{{ if template.account/upvoted }}}active{{{ end }}}">[[global:upvoted]]</a>
					{{{ if !downvote:disabled }}}
					<a href="{config.relative_path}/user/{userslug}/downvoted" class="btn-ghost-sm fw-semibold {{{ if template.account/downvoted }}}active{{{ end }}}">[[global:downvoted]]</a>
					{{{ end }}}
					{{{ end }}}
					{{{ end }}}
					{{{ if canEdit }}}
					<a href="{config.relative_path}/user/{userslug}/bookmarks" class="btn-ghost-sm fw-semibold {{{ if template.account/bookmarks }}}active{{{ end }}}">[[user:bookmarks]]</a>
					{{{ end }}}
				</div>
			</div>

			{{{ if !posts.length }}}
			<div class="alert alert-warning text-center">{noItemsFoundKey}</div>
			{{{ end }}}

			<div class="">
				<!-- IMPORT partials/posts_list.tpl -->

				{{{ if config.usePagination }}}
				<!-- IMPORT partials/paginator.tpl -->
				{{{ end }}}
			</div>
		</div>
	</div>
</div>