<div class="options">
	<form component="groups/settings" role="form">
		<div class="row">
			<div class="col-12 col-lg-6">
				<div class="mb-3">
					<label class="form-label" for="name">[[groups:details.group-name]]</label>
					<input {{{ if group.system }}}readonly{{{ end }}} class="form-control" name="name" id="name" type="text" value="{group.displayName}" />
				</div>
				<div class="mb-3">
					<label class="form-label" for="description">[[groups:details.description]]</label>
					<textarea class="form-control" name="description" id="description" type="text" maxlength="255">{group.description}</textarea>
				</div>

				<div class="form-check">
					<label class="form-check-label" for="private">[[groups:details.private]]</label>
					<input class="form-check-input" name="private" id="private" type="checkbox"{{{ if group.private }}} checked{{{ end }}}>
					{{{ if !allowPrivateGroups }}}
					<p class="form-text">
						[[groups:details.private-system-help]]
					</p>
					{{{ end }}}
					<p class="form-text text-xs m-0">
						[[groups:details.private-help]]
					</p>
				</div>
				<div class="form-check">
					<label class="form-check-label" for="hidden">[[groups:details.hidden]]</label>
					<input class="form-check-input" name="hidden" id="hidden" type="checkbox"{{{ if group.hidden }}} checked{{{ end }}}>
					<p class="form-text text-xs m-0">
						[[groups:details.hidden-help]]
					</p>
				</div>

				<div class="form-check">
					<label class="form-check-label" for="disableJoinRequests">[[groups:details.disableJoinRequests]]</label>
					<input class="form-check-input" name="disableJoinRequests" id="disableJoinRequests" type="checkbox"{{{ if group.disableJoinRequests }}} checked{{{ end }}}>
				</div>
				<div class="form-check">
					<label class="form-check-label" for="disableLeave">[[groups:details.disableLeave]]</label>
					<input class="form-check-input" name="disableLeave" id="disableLeave" type="checkbox"{{{if group.disableLeave}}} checked{{{end}}}>
				</div>
			</div>
			<div class="col-12 col-lg-6">
				<div class="d-flex gap-2 align-items-center">
					<div class="form-check">
						<label class="form-check-label" for="userTitleEnabled">[[groups:details.userTitleEnabled]]</label>
						<input class="form-check-input" name="userTitleEnabled" id="userTitleEnabled" type="checkbox"{{{ if group.userTitleEnabled }}} checked{{{ end }}}>
					</div>
					<span class="badge rounded-1 text-uppercase text-truncate rounded-1 {{{ if !group.userTitleEnabled }}} hide{{{ end }}}" style="max-width:150px; color: {group.textColor}; background-color: {group.labelColor}"><i class="fa {{{ if group.icon }}} {group.icon}{{{ if group.userTitle}}} me-1{{{ end }}}{{{ end }}}"></i><span class="badge-text">{{{ if group.userTitle }}}{group.userTitle}{{{ end }}}</span></span>
				</div>


				<div class="mb-2">
					<label class="form-label text-xs text-muted" for="userTitle">[[groups:details.badge-text]]</label>
					<div class="d-flex gap-1">
						<input component="groups/userTitleOption" class="form-control" name="userTitle" id="userTitle" type="text" maxlength="40" value="{group.userTitleEscaped}"{{{ if !group.userTitleEnabled }}} disabled{{{ end }}} />
						<button component="groups/userTitleOption" type="button" class="btn btn-outline-secondary text-nowrap" data-action="icon-select"{{{ if !group.userTitleEnabled }}} disabled{{{ end }}}>[[groups:details.change-icon]]</button>
						<input type="hidden" name="icon" value="{{{ if group.icon }}}{group.icon}{{{ end }}}" />
						<div id="icons" class="hidden">
							<div class="icon-container">
								<div class="row nbb-fa-icons">
									<!-- IMPORT partials/fontawesome.tpl -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="mb-2">
					<label class="form-label text-xs text-muted" for="labelColor" class="badge-color-label">[[groups:details.change-label-colour]]</label>
					<input class="form-control" component="groups/userTitleOption" type="color" name="labelColor" id="labelColor" value="{{{ if group.labelColor }}}{group.labelColor}{{{ end }}}" />
				</div>
				<div class="mb-2">
					<label class="form-label text-xs text-muted" for="textColor" class="badge-color-label">[[groups:details.change-text-colour]]</label>
					<input class="form-control" component="groups/userTitleOption" type="color" name="textColor" id="textColor" value="{{{ if group.textColor }}}{group.textColor}{{{ end }}}" />
				</div>
			</div>
		</div>

		<hr />

		<div class="mb-3">
			<label class="form-label" for="memberPostCids">[[groups:details.member-post-cids]]</label>
			<div class="d-flex gap-1">
				<div class="member-post-cids-selector">
					<!-- IMPORT partials/category/selector-dropdown-left.tpl -->
				</div>
				<input id="memberPostCids" type="text" class="form-control form-control-sm" value="{group.memberPostCids}">
			</div>
		</div>
		<div class="d-flex justify-content-end gap-2">
			<button class="btn btn-link text-danger" type="button" data-action="delete">[[groups:details.delete-group]]</button>
			<button class="btn btn-primary" type="button" data-action="update">[[global:save-changes]]</button>
		</div>
	</form>
</div>
