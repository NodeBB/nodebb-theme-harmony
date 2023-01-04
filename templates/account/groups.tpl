<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->

		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			<h3 class="fw-semibold fs-5">[[pages:{template.name}, {username}]]</h3>

			<div class="groups">
				<div component="groups/container" id="groups-list" class="row">
					{{{ if !groups.length }}}
					<div class="alert alert-warning text-center">[[groups:no_groups_found]]</div>
					{{{ else }}}
					<!-- IMPORT partials/groups/list.tpl -->
					{{{ end }}}
				</div>
			</div>
		</div>
	</div>
</div>