<!-- IMPORT partials/account/header.tpl -->

<div class="mb-3 d-flex justify-content-between">
	<h3 class="fw-semibold fs-5">{{tx("themes/harmony:settings.title")}}</h3>

	<button id="save" type="button" class="btn btn-primary">{{tx("global:save-changes")}}</button>
</div>

<form id="theme-settings" role="form">
	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="enableQuickReply" name="enableQuickReply" {{{ if theme.enableQuickReply }}}checked{{{ end }}}>
		<label class="form-check-label" for="enableQuickReply">{{tx("themes/harmony:settings.enableQuickReply")}}</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input type="checkbox" class="form-check-input" id="enableBreadcrumbs" name="enableBreadcrumbs" {{{ if theme.enableBreadcrumbs }}}checked{{{ end }}} />
		<label for="enableBreadcrumbs" class="form-check-label">{{tx("themes/harmony:settings.enableBreadcrumbs")}}</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="centerHeaderElements" name="centerHeaderElements" {{{ if theme.centerHeaderElements }}}checked{{{ end }}}>
		<label class="form-check-label" for="centerHeaderElements">{{tx("themes/harmony:settings.centerHeaderElements")}}</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="mobileTopicTeasers" name="mobileTopicTeasers" {{{ if theme.mobileTopicTeasers }}}checked{{{ end }}}>
		<label class="form-check-label" for="mobileTopicTeasers">{{tx("themes/harmony:settings.mobileTopicTeasers")}}</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="stickyToolbar" name="stickyToolbar" {{{ if theme.stickyToolbar }}}checked{{{ end }}}>
		<label class="form-check-label" for="stickyToolbar">
			{{tx("themes/harmony:settings.stickyToolbar")}}
			<p class="form-text mb-0">
				{{tx("themes/harmony:settings.stickyToolbar.help")}}
			</p>
		</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="topicSidebarTools" name="topicSidebarTools" {{{ if theme.topicSidebarTools }}}checked{{{ end }}}>
		<label class="form-check-label" for="topicSidebarTools">
			{{tx("themes/harmony:settings.topicSidebarTools")}}
			<p class="form-text mb-0">
				{{tx("themes/harmony:settings.topicSidebarTools.help")}}
			</p>
		</label>
	</div>


	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="autohideBottombar" name="autohideBottombar" {{{ if theme.autohideBottombar }}}checked{{{ end }}}>
		<label class="form-check-label" for="autohideBottombar">
			{{tx("themes/harmony:settings.autohideBottombar")}}
			<p class="form-text mb-0">
				{{tx("themes/harmony:settings.autohideBottombar.help")}}
			</p>
		</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="topMobilebar" name="topMobilebar" {{{ if theme.topMobilebar }}}checked{{{ end }}}>
		<label class="form-check-label" for="topMobilebar">
			{{tx("themes/harmony:settings.topMobilebar")}}
		</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="openSidebars" name="openSidebars" {{{ if theme.openSidebars }}}checked{{{ end }}}>
		<label class="form-check-label" for="openSidebars">{{tx("themes/harmony:settings.openSidebars")}}</label>
	</div>

	<div class="form-check form-switch mb-3">
		<input class="form-check-input" type="checkbox" role="switch" id="chatModals" name="chatModals" {{{ if theme.chatModals }}}checked{{{ end }}}>
		<label class="form-check-label" for="chatModals">
			{{tx("themes/harmony:settings.chatModals")}}
		</label>
	</div>
</form>

<!-- IMPORT partials/account/footer.tpl -->