<!-- IMPORT partials/account/header.tpl -->

<h3 class="fw-semibold fs-5">[[pages:{template.name}, {username}]]</h3>

<div class="groups">
	<div component="groups/container" id="groups-list" class="row">
		{{{ if !groups.length }}}
		<div class="alert alert-warning text-center">[[groups:no-groups-found]]</div>
		{{{ else }}}
		<!-- IMPORT partials/groups/list.tpl -->
		{{{ end }}}
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->
