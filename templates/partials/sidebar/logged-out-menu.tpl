
<li class="nav-item mx-2 order-last order-md-first" title="[[global:login]]" role="menuitem">
	<a class="nav-link" href="{relative_path}/login" aria-label="[[global:login]]">
		<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
			<span class="position-relative">
				<i class="fa fa-fw fa-sign-in"></i>
			</span>
			<span class="nav-text small visible-open fw-semibold">[[global:login]]</span>
		</span>
	</a>
</li>
<hr class="my-2 mx-2 visible-open">
{{{ if allowRegistration }}}
<li class="nav-item mx-2" title="[[global:register]]" role="menuitem">
	<span class="text-xs visible-open">[[login:dont-have-account]]</span>
	<a class="nav-link" href="{relative_path}/register" aria-label="[[global:register]]">
		<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
			<span class="position-relative">
				<i class="fa fa-fw fa-user-plus"></i>
			</span>
			<span class="nav-text small visible-open fw-semibold">[[global:register]]</span>
		</span>
	</a>
</li>
<hr class="my-2 mx-2 visible-open">
{{{ end }}}

{{{ if config.searchEnabled }}}
{{{ if user.privileges.search:content }}}
<li component="sidebar/search" class="nav-item mx-2 search dropstart position-relative" title="[[global:header.search]]" role="menuitem">
	<!-- IMPORT partials/sidebar/search.tpl -->
</li>
{{{ else }}}
<li component="sidebar/search" class="visible-open nav-item mx-2 search">
	<div class="d-flex gap-2 py-1 px-2 align-items-center" title="[[themes/harmony:login-register-to-search]]">
		<i class="fa fa-fw fa-search"></i>
		<span class="nav-text visible-open text-xs">[[themes/harmony:login-register-to-search]]</span>
	</div>
</li>
{{{ end }}}
{{{ end }}}



