<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<h3 class="fw-semibold fs-4">{title}</h3>

		{{{ if !posts.length }}}
			<div class="alert alert-warning text-center">{noItemsFoundKey}</div>
		{{{ end }}}

		<div class="col-12">
			<!-- IMPORT partials/posts_list.tpl -->

			{{{ if config.usePagination }}}
			<!-- IMPORT partials/paginator.tpl -->
			{{{ end }}}
		</div>
	</div>
</div>