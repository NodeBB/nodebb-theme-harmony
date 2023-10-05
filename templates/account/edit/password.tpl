<!-- IMPORT partials/account/header.tpl -->

<h3 class="fw-semibold fs-5">{{{ if isSelf }}}[[user:change-password]]{{{ else }}}[[pages:{template.name}, {username}]]{{{ end }}}</h3>
<div class="row">
	<div class="col-12 col-lg-4">
		<form class="edit-form">
			<!-- disables autocomplete on FF --><input type="password" style="display:none">

			{{{ if isSelf }}}
			<div class="mb-2">
				<label class="form-label fw-semibold text-xm" for="inputCurrentPassword">[[user:current-password]]</label>
				<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current-password]]" value="" {{{ if !hasPassword }}} disabled{{{ end }}}>
			</div>
			{{{ end }}}

			<div class="mb-2">
				<label class="form-label fw-semibold text-xm" for="inputNewPassword">[[user:new-password]]</label>
				<input class="form-control" type="password" id="inputNewPassword" placeholder="[[user:password]]" value="">
				<span class="form-feedback" id="password-notify"></span>
			</div>

			<div class="mb-2">
				<label class="form-label fw-semibold text-xm" for="inputNewPasswordAgain">[[user:confirm-password]]</label>
				<input class="form-control" type="password" id="inputNewPasswordAgain" placeholder="[[user:confirm-password]]" value="">
				<span class="form-feedback" id="password-confirm-notify"></span>
			</div>

			<div class="form-actions">
				<button id="changePasswordBtn" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> [[user:change-password]]</button>
			</div>
		</form>
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->