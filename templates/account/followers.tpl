<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->

		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			<h3 class="fw-semibold fs-5">[[pages:{template.name}, {username}]]</h3>

			{{{ if !users.length }}}
			<div class="alert alert-warning text-center">[[user:has_no_follower]]</div>
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