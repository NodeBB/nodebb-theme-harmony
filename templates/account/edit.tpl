<!-- IMPORT partials/account/header.tpl -->

<div class="d-flex justify-content-between py-1 mb-3 align-items-center position-sticky top-0 bg-body z-1">
	<h3 class="fw-semibold fs-5 mb-0">{{{ if isSelf }}}{{tx("user:edit-profile")}}{{{ else }}}{{tx("pages:account/edit", txEscape(username))}}{{{ end }}}</h3>
	<button id="submitBtn" class="btn btn-sm btn-primary">{{tx("global:save-changes")}}</button>
</div>
<div class="row">
	<div class="col-xl-6 col-12">
		<form role="form" component="profile/edit/form">
			<div class="mb-3">
				<label class="form-label fw-bold" for="fullname">{{tx("user:fullname")}}</label>
				<input class="form-control" type="text" id="fullname" name="fullname" placeholder="{{tx("user:fullname")}}" value="{fullname}">
			</div>

			<div class="mb-3">
				<label class="form-label fw-bold" for="birthday">{{tx("user:birthday")}}</label>
				<input class="form-control" type="date" id="birthday" name="birthday" value="{birthday}" placeholder="mm/dd/yyyy">
			</div>

			{{{ each customUserFields }}}
			<div class="mb-3">
				<label class="form-label fw-bold" for="{./key}">{{tx(./name)}}</label>
				{{{ if ((./type == "input-text") || (./type == "input-link")) }}}
				<input class="form-control" type="text" id="{./key}" name="{./key}" value="{./value}">
				{{{ end }}}

				{{{ if (./type == "input-number") }}}
				<input class="form-control" type="number" id="{./key}" name="{./key}" value="{./value}">
				{{{ end }}}

				{{{ if (./type == "input-date") }}}
				<input class="form-control" type="date" id="{./key}" name="{./key}" value="{./value}">
				{{{ end }}}

				{{{ if ((./type == "select") || (./type == "select-multi")) }}}
				<select class="form-select" id="{./key}" name="{./key}" {{{ if (./type == "select-multi") }}} multiple{{{ end }}}>
					{{{ each ./select-options}}}
					<option value="{./value}" {{{ if ./selected }}}selected{{{ end }}}>{./value}</option>
					{{{ end }}}
				</select>
				{{{ end }}}
			</div>
			{{{ end }}}

			{{{ if groups.length }}}
			<div class="mb-3">
				<label class="form-label fw-bold" for="groupTitle">{{tx("user:grouptitle")}}</label>

				<div class="d-flex flex-column gap-2" component="group/badge/list">
					{{{ each groups }}}
					<div component="group/badge/item" class="d-flex gap-2 justify-content-between align-items-center" data-value="{./displayName}" data-selected="{./selected}">
						<!-- IMPORT partials/groups/badge.tpl -->
						<div class="d-flex gap-1">
							<button component="group/toggle/hide" type="button" class="btn btn-ghost btn-sm {{{ if !./selected }}}hidden{{{ end }}}" title="{{tx("user:hide-group-title")}}"><i class="fa fa-fw fa-eye"></i></button>
							<button component="group/toggle/show" type="button" class="btn btn-ghost btn-sm {{{ if ./selected }}}hidden{{{ end }}}" title="{{tx("user:show-group-title")}}"><i class="fa fa-fw fa-eye-slash"></i></button>
							{{{ if allowMultipleBadges }}}
							<button component="group/order/up" type="button" class="btn btn-ghost btn-sm" title="{{tx("user:order-group-up")}}"><i class="fa fa-fw fa-chevron-up"></i></button>
							<button component="group/order/down" type="button" class="btn btn-ghost btn-sm" title="{{tx("user:order-group-down")}}"><i class="fa fa-fw fa-chevron-down"></i></button>
							{{{ end }}}
						</div>
					</div>
					{{{ end }}}
				</div>
			</div>
			{{{ end }}}

			{{{ if allowAboutMe }}}
			<div class="mb-3">
				<label class="form-label fw-bold" for="aboutme">{{tx("user:aboutme")}}</label> <small><label id="aboutMeCharCountLeft"></label></small>
				<textarea class="form-control" id="aboutme" name="aboutme" rows="5">{aboutme}</textarea>
			</div>
			{{{ end }}}

			{{{ if (allowSignature && !disableSignatures) }}}
			<div class="mb-3">
				<label class="form-label fw-bold" for="signature">{{tx("user:signature")}}</label> <small><label id="signatureCharCountLeft"></label></small>
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
				<li class="list-group-item"><a component="profile/change/picture" href="#" class="text-decoration-none text-reset">{{tx("user:change-picture")}}</a></li>
				{{{ end }}}
				{{{ if !username:disableEdit }}}
				<li class="list-group-item"><a href="{config.relative_path}/user/{userslug}/edit/username" class="text-decoration-none text-reset">{{tx("user:change-username")}}</a></li>
				{{{ end }}}
				{{{ if !email:disableEdit }}}
				<li class="list-group-item"><a href="{config.relative_path}/user/{userslug}/edit/email" class="text-decoration-none text-reset">{{tx("user:change-email")}}</a></li>
				{{{ end }}}
				{{{ if canChangePassword }}}
				<li class="list-group-item"><a href="{config.relative_path}/user/{userslug}/edit/password" class="text-decoration-none text-reset">{{tx("user:change-password")}}</a></li>
				{{{ end }}}
				{{{ each editButtons }}}
				<li class="list-group-item"><a href="{config.relative_path}{./link}" class="text-decoration-none text-reset">{{tx(./text)}}</a></li>
				{{{ end }}}
			</ul>

			{{{ if config.requireEmailConfirmation }}}
			{{{ if (email && isSelf) }}}
			<a id="confirm-email" href="#" class="btn btn-warning {{{ if email:confirmed }}}hide{{{ end }}}">{{tx("user:confirm-email")}}</a><br/><br/>
			{{{ end }}}
			{{{ end }}}
		</div>

		{{{ if sso.length }}}
		<label class="form-label text-sm fw-semibold">{{tx("user:sso.title")}}</label>
		<div class="list-group">
			{{{ each sso }}}
			<div class="list-group-item d-flex align-items-center justify-content-between">
				<a class="text-sm text-reset text-decoration-none" data-component="{./component}" href="{{{ if ./url }}}{./url}{{{ else }}}#{{{ end }}}" target="{{{ if ./associated }}}_blank{{{ else }}}_top{{{ end }}}">
					{{{ if ./icon }}}<i class="fa {./icon}"></i>{{{ end }}}
					{{{ if ./associated }}}{{tx("user:sso.associated")}}{{{ else }}}{{tx("user:sso.not-associated")}}{{{ end }}}
					{./name}
				</a>
				{{{ if ./deauthUrl }}}
				<a data-component="{./component}" class="btn btn-outline-secondary btn-sm" href="{./deauthUrl}">{{tx("user:sso.dissociate")}}</a>
				{{{ end }}}
			</div>
			{{{ end }}}
		</div>
		{{{ end }}}

		<hr/>
		{{{ if (allowAccountDelete && isSelf) }}}
		<div class="d-flex justify-content-center">
			<button id="deleteAccountBtn" class="btn btn-danger">{{tx("user:delete-account")}}</button>
		</div>
		{{{ end }}}
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->