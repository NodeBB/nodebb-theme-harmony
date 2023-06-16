<!-- IMPORT partials/account/header.tpl -->

<div class="d-flex justify-content-between mb-3 align-items-center">
	<h3 class="fw-semibold fs-5 mb-0">{{{ if isSelf }}}[[user:edit-profile]]{{{ else }}}[[pages:account/edit, {username}]]{{{ end }}}</h3>
	<button id="submitBtn" class="btn btn-primary">[[global:save_changes]]</button>
</div>
<div class="row">
	<div class="col-xl-6 col-12">
		<form role="form" component="profile/edit/form">
			<div class="mb-2">
				<label class="form-label fw-bold" for="fullname">[[user:fullname]]</label>
				<input class="form-control" type="text" id="fullname" name="fullname" placeholder="[[user:fullname]]" value="{fullname}">
			</div>
			{{{ if allowWebsite }}}
			<div class="mb-2">
				<label class="form-label fw-bold" for="website">[[user:website]]</label>
				<input class="form-control" type="text" id="website" name="website" placeholder="http://..." value="{website}">
			</div>
			{{{ end }}}

			<div class="mb-2">
				<label class="form-label fw-bold" for="location">[[user:location]]</label>
				<input class="form-control" type="text" id="location" name="location" placeholder="[[user:location]]" value="{location}">
			</div>

			<div class="mb-2">
				<label class="form-label fw-bold" for="birthday">[[user:birthday]]</label>
				<input class="form-control" type="date" id="birthday" name="birthday" value="{birthday}" placeholder="mm/dd/yyyy">
			</div>

			<div class="mb-2">
				<label class="form-label fw-bold" for="groupTitle">[[user:grouptitle]]</label>

				<select class="form-select mb-1" id="groupTitle" name="groupTitle" {{{ if allowMultipleBadges }}} size="{groupSelectSize}" multiple{{{ end }}}>
					<option value="">[[user:no-group-title]]</option>
					{{{ each groups }}}
					{{{ if ./userTitleEnabled }}}
					<option value="{groups.displayName}" {{{ if ./selected }}}selected{{{ end }}}>{./userTitle}</option>
					{{{ end }}}
					{{{ end }}}
				</select>
				{{{ if allowMultipleBadges }}}
				<div class="d-none d-md-block">
					<span class="form-text">[[user:group-order-help]]</span>
					<i role="button" component="group/order/up" class="fa fa-chevron-up"></i> <i role="button" component="group/order/down" class="fa fa-chevron-down"></i>
				</div>
				{{{ end }}}
			</div>

			{{{ if allowAboutMe }}}
			<div class="mb-2">
				<label class="form-label fw-bold" for="aboutme">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
				<textarea class="form-control" id="aboutme" name="aboutme" rows="5">{aboutme}</textarea>
			</div>
			{{{ end }}}

			{{{ if (allowSignature && !disableSignatures) }}}
			<div class="mb-2">
				<label class="form-label fw-bold" for="signature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
				<textarea class="form-control" id="signature" name="signature" rows="5">{signature}</textarea>
			</div>
			{{{ end }}}
		</form>
		<hr class="visible-xs visible-sm"/>
	</div>

	<div class="col-xl-6 col-12">
		<div class="text-center">
			<ul class="list-group mb-3 text-sm text-nowrap">
				{{{ if allowProfilePicture }}}
				<a component="profile/change/picture" href="#" class="list-group-item px-1 text-decoration-none">[[user:change_picture]]</a>
				{{{ end }}}
				{{{ if !username:disableEdit }}}
				<a href="{config.relative_path}/user/{userslug}/edit/username" class="list-group-item px-1 text-decoration-none">[[user:change_username]]</a>
				{{{ end }}}
				{{{ if !email:disableEdit }}}
				<a href="{config.relative_path}/user/{userslug}/edit/email" class="list-group-item px-1 text-decoration-none">[[user:change_email]]</a>
				{{{ end }}}
				{{{ if canChangePassword }}}
				<a href="{config.relative_path}/user/{userslug}/edit/password" class="list-group-item px-1 text-decoration-none">[[user:change_password]]</a>
				{{{ end }}}
				{{{ each editButtons }}}
				<a href="{config.relative_path}{./link}" class="list-group-item px-1 text-decoration-none">{./text}</a>
				{{{ end }}}
			</ul>

			{{{ if config.requireEmailConfirmation }}}
			{{{ if (email && isSelf) }}}
			<a id="confirm-email" href="#" class="btn btn-warning {{{ if email:confirmed }}}hide{{{ end }}}">[[user:confirm_email]]</a><br/><br/>
			{{{ end }}}
			{{{ end }}}
		</div>

		{{{ if sso.length }}}
		<label class="form-label text-sm fw-semibold">[[user:sso.title]]</label>
		<div class="list-group">
			{{{ each sso }}}
			<div class="list-group-item d-flex align-items-center justify-content-between">
				<a class="text-sm text-reset text-decoration-none" data-component="{./component}" href="{./url}" target="{{{ if ./associated }}}_blank{{{ else }}}_top{{{ end }}}">
					{{{ if ./icon }}}<i class="fa {./icon}"></i>{{{ end }}}
					{{{ if ./associated }}}[[user:sso.associated]]{{{ else }}}[[user:sso.not-associated]]{{{ end }}}
					{./name}
				</a>
				{{{ if ./deauthUrl }}}
				<a data-component="{./component}" class="btn btn-outline-secondary btn-sm" href="{./deauthUrl}">[[user:sso.dissociate]]</a>
				{{{ end }}}
			</div>
			{{{ end }}}
		</div>
		{{{ end }}}

		<hr/>
		{{{ if (allowAccountDelete && isSelf) }}}
		<div class="d-flex justify-content-end">
			<button id="deleteAccountBtn" class="btn btn-danger">[[user:delete_account]]</button>
		</div>
		{{{ end }}}
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->