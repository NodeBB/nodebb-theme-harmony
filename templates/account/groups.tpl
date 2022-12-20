<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row">
		<h3 class="fw-semibold fs-4">[[pages:{template.name}, {username}]]</h3>

		<div class="col-12 groups list">
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