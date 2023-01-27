<!-- IMPORT partials/account/header.tpl -->

<h3 class="fw-semibold fs-5">{{{ if isSelf }}}[[user:change_password]]{{{ else }}}[[pages:{template.name}, {username}]]{{{ end }}}</h3>

<form class="edit-form">
	<!-- disables autocomplete on FF --><input type="password" style="display:none">

	{{{ if isSelf }}}
	<div class="mb-2">
		<label class="form-label fw-semibold text-xm" for="inputCurrentPassword">[[user:current_password]]</label>
		<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value="" {{{ if !hasPassword }}} disabled{{{ end }}}>
	</div>
	{{{ end }}}

	<div class="mb-2">
		<label class="form-label fw-semibold text-xm" for="inputNewPassword">[[user:new_password]]</label>
		<input class="form-control" type="password" id="inputNewPassword" placeholder="[[user:password]]" value="">
		<span class="form-feedback" id="password-notify"></span>
	</div>

	<div class="mb-2">
		<label class="form-label fw-semibold text-xm" for="inputNewPasswordAgain">[[user:confirm_password]]</label>
		<input class="form-control" type="password" id="inputNewPasswordAgain" placeholder="[[user:confirm_password]]" value="">
		<span class="form-feedback" id="password-confirm-notify"></span>
	</div>

	<div class="form-actions">
		<button id="changePasswordBtn" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> [[user:change_password]]</button>
	</div>
</form>

<!-- IMPORT partials/account/footer.tpl -->