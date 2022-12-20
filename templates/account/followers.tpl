<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="users row">
		<div class="col-12">
			<h3 class="fw-semibold fs-4">[[pages:{template.name}, {username}]]</h3>

			<!-- IMPORT partials/users_list.tpl -->

			{{{ if !users.length }}}
			<div class="alert alert-warning text-center">[[user:has_no_follower]]</div>
			{{{ end }}}

			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>