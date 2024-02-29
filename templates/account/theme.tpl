<!-- IMPORT partials/account/header.tpl -->

<div class="mb-3 d-flex justify-content-between">
	<h3 class="fw-semibold fs-5">[[themes/harmony:settings.title]]</h3>

	<button id="save" type="button" class="btn btn-primary">[[global:save-changes]]</button>
</div>

<form id="theme-settings" role="form">
	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="enableQuickReply" name="enableQuickReply" {{{ if theme.enableQuickReply }}}checked{{{ end }}}>
		<label class="form-check-label" for="enableQuickReply">[[themes/harmony:settings.enableQuickReply]]</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input type="checkbox" class="form-check-input" id="enableBreadcrumbs" name="enableBreadcrumbs" {{{ if theme.enableBreadcrumbs }}}checked{{{ end }}} />
		<label for="enableBreadcrumbs" class="form-check-label">[[themes/harmony:settings.enableBreadcrumbs]]</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="centerHeaderElements" name="centerHeaderElements" {{{ if theme.centerHeaderElements }}}checked{{{ end }}}>
		<label class="form-check-label" for="centerHeaderElements">[[themes/harmony:settings.centerHeaderElements]]</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="mobileTopicTeasers" name="mobileTopicTeasers" {{{ if theme.mobileTopicTeasers }}}checked{{{ end }}}>
		<label class="form-check-label" for="mobileTopicTeasers">[[themes/harmony:settings.mobileTopicTeasers]]</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="stickyToolbar" name="stickyToolbar" {{{ if theme.stickyToolbar }}}checked{{{ end }}}>
		<label class="form-check-label" for="stickyToolbar">
			[[themes/harmony:settings.stickyToolbar]]
			<p class="form-text mb-0">
				[[themes/harmony:settings.stickyToolbar.help]]
			</p>
		</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="autohideBottombar" name="autohideBottombar" {{{ if theme.autohideBottombar }}}checked{{{ end }}}>
		<label class="form-check-label" for="autohideBottombar">
			[[themes/harmony:settings.autohideBottombar]]
			<p class="form-text mb-0">
				[[themes/harmony:settings.autohideBottombar.help]]
			</p>
		</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="openSidebars" name="openSidebars" {{{ if theme.openSidebars }}}checked{{{ end }}}>
		<label class="form-check-label" for="openSidebars">[[themes/harmony:settings.openSidebars]]</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="chatModals" name="chatModals" {{{ if theme.chatModals }}}checked{{{ end }}}>
		<label class="form-check-label" for="chatModals">
			[[themes/harmony:settings.chatModals]]
		</label>
	</div>

</form>

<!-- IMPORT partials/account/footer.tpl -->