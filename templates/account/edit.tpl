<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-md-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->

		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			<div class="d-flex justify-content-between mb-3">
				<h3 class="fw-semibold fs-5">{{{ if isSelf }}}[[user:edit-profile]]{{{ else }}}[[pages:account/edit, {username}]]{{{ end }}}</h3>
				<button id="submitBtn" class="btn btn-primary">[[global:save_changes]]</button>
			</div>
			<div class="row">
				<div class="col-xl-6 col-12">
					<form role="form" component="profile/edit/form">
						<div class="mb-2">
							<label class="form-label fw-bold" for="fullname">[[user:fullname]]</label>
							<input class="form-control" type="text" id="fullname" name="fullname" placeholder="[[user:fullname]]" value="{fullname}">
						</div>
						<!-- IF allowWebsite -->
						<div class="mb-2">
							<label class="form-label fw-bold" for="website">[[user:website]]</label>
							<input class="form-control" type="text" id="website" name="website" placeholder="http://..." value="{website}">
						</div>
						<!-- ENDIF allowWebsite -->

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

							<select class="form-select mb-1" id="groupTitle" name="groupTitle" <!-- IF allowMultipleBadges --> size="{groupSelectSize}" multiple<!-- ENDIF allowMultipleBadges -->>
								<option value="">[[user:no-group-title]]</option>
								{{{each groups}}}
								<!-- IF groups.userTitleEnabled -->
								<option value="{groups.displayName}" <!-- IF groups.selected -->selected<!-- ENDIF groups.selected -->>{groups.userTitle}</option>
								<!-- ENDIF groups.userTitleEnabled -->
								{{{end}}}
							</select>
							<!-- IF allowMultipleBadges -->
							<div class="d-none d-md-block">
								<span class="form-text">[[user:group-order-help]]</span>
								<i role="button" component="group/order/up" class="fa fa-chevron-up"></i> <i role="button" component="group/order/down" class="fa fa-chevron-down"></i>
							</div>
							<!-- ENDIF -->
						</div>

						<!-- IF allowAboutMe -->
						<div class="mb-2">
							<label class="form-label fw-bold" for="aboutme">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
							<textarea class="form-control" id="aboutme" name="aboutme" rows="5">{aboutme}</textarea>
						</div>
						<!-- ENDIF allowAboutMe -->

						<!-- IF allowSignature -->
						<!-- IF !disableSignatures -->
						<div class="mb-2">
							<label class="form-label fw-bold" for="signature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
							<textarea class="form-control" id="signature" name="signature" rows="5">{signature}</textarea>
						</div>
						<!-- ENDIF !disableSignatures -->
						<!-- ENDIF allowSignature -->
					</form>
					<hr class="visible-xs visible-sm"/>
				</div>

				<div class="col-xl-6 col-12">
					<div class="text-center">
						<ul class="list-group mb-3 text-sm text-nowrap">
							<!-- IF allowProfilePicture -->
							<a id="changePictureBtn" href="#" class="list-group-item px-1 text-decoration-none">[[user:change_picture]]</a>
							<!-- ENDIF allowProfilePicture -->
							<!-- IF !username:disableEdit -->
							<a href="{config.relative_path}/user/{userslug}/edit/username" class="list-group-item px-1 text-decoration-none">[[user:change_username]]</a>
							<!-- ENDIF !username:disableEdit -->
							<!-- IF !email:disableEdit -->
							<a href="{config.relative_path}/user/{userslug}/edit/email" class="list-group-item px-1 text-decoration-none">[[user:change_email]]</a>
							<!-- ENDIF !email:disableEdit -->
							<!-- IF canChangePassword -->
							<a href="{config.relative_path}/user/{userslug}/edit/password" class="list-group-item px-1 text-decoration-none">[[user:change_password]]</a>
							<!-- ENDIF canChangePassword -->
							{{{each editButtons}}}
							<a href="{config.relative_path}{editButtons.link}" class="list-group-item px-1 text-decoration-none">{editButtons.text}</a>
							{{{end}}}
						</ul>

						<!-- IF config.requireEmailConfirmation -->
						<!-- IF email -->
						<!-- IF isSelf -->
						<a id="confirm-email" href="#" class="btn btn-warning <!-- IF email:confirmed -->hide<!-- ENDIF email:confirmed -->">[[user:confirm_email]]</a><br/><br/>
						<!-- ENDIF isSelf -->
						<!-- ENDIF email -->
						<!-- ENDIF config.requireEmailConfirmation -->
					</div>

					{{{ if sso.length }}}
					<label class="form-label text-sm fw-semibold">[[user:sso.title]]</label>
					<div class="list-group">
						{{{each sso}}}
						<div class="list-group-item d-flex justify-content-between">
							<a class="text-sm text-reset text-decoration-none" data-component="{../component}" href="{../url}" target="<!-- IF ../associated -->_blank<!-- ELSE -->_top<!-- ENDIF ../associated -->">
								<!-- IF ../icon --><i class="fa {../icon}"></i><!-- ENDIF ../icon -->
								<!-- IF ../associated -->[[user:sso.associated]]<!-- ELSE -->[[user:sso.not-associated]]<!-- ENDIF ../associated -->
								{../name}
							</a>
							<!-- IF ../deauthUrl -->
							<a data-component="{../component}" class="btn btn-outline-secondary btn-sm" href="{../deauthUrl}">[[user:sso.dissociate]]</a>
							<!-- END -->
						</div>
						{{{end}}}
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
		</div>
	</div>
</div>


