<!-- IMPORT partials/account/header.tpl -->

<div class="mb-3 d-flex justify-content-between">
	<h3 class="fw-semibold fs-5">[[harmony:settings.title]]</h3>

	<button id="save" type="button" class="btn btn-primary">[[global:save_changes]]</button>
</div>

<form id="theme-settings" role="form">
	<div class="form-check mb-2">
		<input class="form-check-input" type="checkbox" id="enableQuickReply" name="enableQuickReply" {{{ if config.theme.enableQuickReply }}}checked{{{ end }}}>
		<label class="form-check-label">[[harmony:settings.enableQuickReply]]</label>
	</div>

	<div class="form-check mb-2">
		<input class="form-check-input" type="checkbox" id="centerHeaderElements" name="centerHeaderElements" {{{ if config.theme.centerHeaderElements }}}checked{{{ end }}}>
		<label class="form-check-label">[[harmony:settings.centerHeaderElements]]</label>
	</div>

	<div class="form-check mb-2">
		<input class="form-check-input" type="checkbox" id="stickyToolbar" name="stickyToolbar" {{{ if config.theme.stickyToolbar }}}checked{{{ end }}}>
		<div class="form-check-label">
			[[harmony:settings.stickyToolbar]]
			<p class="form-text">
				[[harmony:settings.stickyToolbar.help]]
			</p>
		</div>
	</div>

	<div class="form-check mb-2">
		<input class="form-check-input" type="checkbox" id="autohideBottombar" name="autohideBottombar" {{{ if config.theme.autohideBottombar }}}checked{{{ end }}}>
		<div class="form-check-label">
			[[harmony:settings.autohideBottombar]]
			<p class="form-text">
				[[harmony:settings.autohideBottombar.help]]
			</p>
		</div>
	</div>

</form>

<!-- IMPORT partials/account/footer.tpl -->