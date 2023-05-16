<!-- IMPORT partials/account/header.tpl -->

<div class="mb-3 d-flex justify-content-between">
	<h3 class="fw-semibold fs-5">[[themes/harmony:settings.title]]</h3>

	<button id="save" type="button" class="btn btn-primary">[[global:save_changes]]</button>
</div>

<form id="theme-settings" role="form">
	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="enableQuickReply" name="enableQuickReply" {{{ if config.theme.enableQuickReply }}}checked{{{ end }}}>
		<label class="form-check-label" for="enableQuickReply">[[themes/harmony:settings.enableQuickReply]]</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="centerHeaderElements" name="centerHeaderElements" {{{ if config.theme.centerHeaderElements }}}checked{{{ end }}}>
		<label class="form-check-label" for="centerHeaderElements">[[themes/harmony:settings.centerHeaderElements]]</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="mobileTopicTeasers" name="mobileTopicTeasers" {{{ if config.theme.mobileTopicTeasers }}}checked{{{ end }}}>
		<label class="form-check-label" for="mobileTopicTeasers">[[themes/harmony:settings.mobileTopicTeasers]]</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="stickyToolbar" name="stickyToolbar" {{{ if config.theme.stickyToolbar }}}checked{{{ end }}}>
		<label class="form-check-label" for="stickyToolbar">
			[[themes/harmony:settings.stickyToolbar]]
			<p class="form-text mb-0">
				[[themes/harmony:settings.stickyToolbar.help]]
			</p>
		</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="autohideBottombar" name="autohideBottombar" {{{ if config.theme.autohideBottombar }}}checked{{{ end }}}>
		<label class="form-check-label" for="autohideBottombar">
			[[themes/harmony:settings.autohideBottombar]]
			<p class="form-text mb-0">
				[[themes/harmony:settings.autohideBottombar.help]]
			</p>
		</label>
	</div>

	<div class="form-check mb-3">
		<input class="form-check-input" type="checkbox" id="chatModals" name="chatModals" {{{ if config.theme.chatModals }}}checked{{{ end }}}>
		<label class="form-check-label" for="chatModals">
			[[themes/harmony:settings.chatModals]]
		</label>
	</div>

</form>

<!-- IMPORT partials/account/footer.tpl -->