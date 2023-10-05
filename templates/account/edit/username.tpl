<!-- IMPORT partials/account/header.tpl -->

<h3 class="fw-semibold fs-5">{{{ if isSelf }}}[[user:change-username]]{{{ else }}}[[pages:{template.name}, {username}]]{{{ end }}}</h3>
<div class="row">
	<div class="col-12 col-lg-4">
		<form class="edit-form">
			<div class="mb-2">
				<label class="form-label fw-semibold text-sm" for="inputNewUsername">[[user:username]]</label>
				<input class="form-control" type="text" id="inputNewUsername" placeholder="[[user:username]]" value="{username}">
			</div>

			<!-- disables autocomplete on FF --><input type="password" style="display:none">

			{{{ if isSelf }}}
			<div class="mb-2">
				<label class="form-label fw-semibold text-sm" for="inputCurrentPassword">[[user:current-password]]</label>
				<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current-password]]" value=""{{{ if !hasPassword }}} disabled{{{ end }}}>
			</div>
			{{{ end }}}

			<input type="hidden" name="uid" id="inputUID" value="{uid}" />

			<br/>
			<div class="form-actions">
				<button id="submitBtn" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> [[user:change-username]]</button>
			</div>
		</form>
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->