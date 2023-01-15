<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-md-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->

		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			<h3 class="fw-semibold fs-5">{{{ if isSelf }}}[[user:change_username]]{{{ else }}}[[pages:{template.name}, {username}]]{{{ end }}}</h3>

			<form class="form-horizontal edit-form w-25">
				<div class="mb-2">
					<label class="form-label fw-semibold text-sm" for="inputNewUsername">[[user:username]]</label>
					<input class="form-control" type="text" id="inputNewUsername" placeholder="[[user:username]]" value="{username}">
				</div>

				<!-- disables autocomplete on FF --><input type="password" style="display:none">

				{{{ if isSelf }}}
				<div class="mb-2">
					<label class="form-label fw-semibold text-sm" for="inputCurrentPassword">[[user:current_password]]</label>
					<input autocomplete="off" class="form-control" type="password" id="inputCurrentPassword" placeholder="[[user:current_password]]" value=""{{{ if !hasPassword }}} disabled{{{ end }}}>
				</div>
				{{{ end }}}

				<input type="hidden" name="uid" id="inputUID" value="{uid}" />

				<br/>
				<div class="form-actions">
					<button id="submitBtn" class="btn btn-primary btn-block"><i class="hide fa fa-spinner fa-spin"></i> [[user:change_username]]</button>
				</div>
			</form>
		</div>
	</div>
</div>
