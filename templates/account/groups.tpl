<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="d-flex flex-column flex-md-row">
		<!-- IMPORT partials/account/sidebar-left.tpl -->
		<div class="flex-1 ps-md-2 ps-lg-5" style="min-width: 0;">
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