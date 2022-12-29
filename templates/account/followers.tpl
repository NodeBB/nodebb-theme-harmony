<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->

		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			<h3 class="fw-semibold fs-5">[[pages:{template.name}, {username}]]</h3>

			{{{ if !users.length }}}
			<div class="alert alert-warning text-center">[[user:has_no_follower]]</div>
			{{{ end }}}

			<div class="row row-cols-2 row-cols-lg-4 g-2">
			{{{ each users }}}
				<a href="{config.relative_path}/user/{users.userslug}" class="btn-ghost align-items-start">
					{buildAvatar(users, "48px", true)}
					<div class="d-flex flex-1 flex-column">
						<div class="fw-semibold">{users.displayname}</div>
						<div class="text-xs text-muted">@{users.username}</div>
					</div>
				</a>
			{{{end}}}
			</div>

			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>