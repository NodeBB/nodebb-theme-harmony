<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="d-flex flex-column flex-md-row">
		<!-- IMPORT partials/account/sidebar-left.tpl -->
		<div class="account-content flex-1 ps-md-2 ps-lg-5" style="min-width: 0;">
			<h3 class="fw-semibold fs-5">[[pages:{template.name}, {username}]]</h3>

			{{{ if !users.length }}}
			<div class="alert alert-warning text-center">[[user:follows_no_one]]</div>
			{{{ end }}}

			<div class="row row-cols-2 row-cols-lg-3 row-cols-xl-4 g-2">
			{{{ each users }}}
			<!-- IMPORT partials/users/item.tpl -->
			{{{end}}}
			</div>

			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>