<div class="dropend m-2" component="skinSwitcher" title="[[themes/harmony:skins]]">
	<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link position-relative" aria-haspopup="true" aria-expanded="false" aria-label="[[themes/harmony:skins]]">
		<span class="justify-content-between w-100">
			<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
				<span>
					<i component="skinSwitcher/icon" class="fa fa-fw fa-paintbrush"></i>
				</span>
				<span class="nav-text small visible-open fw-semibold">[[themes/harmony:skins]]</span>
			</span>
		</span>
	</a>

	<ul class="dropdown-menu p-1 text-sm overflow-auto p-1" role="menu">
		<div class="d-flex">
			<div>
				<li class="dropdown-header">Light</li>
				<div class="d-grid" style="grid-template-columns: 1fr 1fr;">
					{{{ each bootswatchSkinOptions.light }}}
					<li>
						<a href="#" class="dropdown-item rounded-1" data-value="{./value}" role="menuitem">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
					</li>
					{{{ end }}}
				</div>
			</div>
			<div>
				<li class="dropdown-header">Dark</li>
				{{{ each bootswatchSkinOptions.dark }}}
				<li>
					<a href="#" class="dropdown-item rounded-1" data-value="{./value}" role="menuitem">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
				</li>
				{{{ end }}}
			</div>
		</div>

		<hr class="my-1"/>

		<div class="d-grid" style="grid-template-columns: 1fr 1fr;">
			{{{ each bootswatchSkinOptions.default }}}
			<li>
				<a href="#" class="dropdown-item rounded-1" data-value="{./value}" role="menuitem">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
			</li>
			{{{ end }}}
			{{{ each bootswatchSkinOptions.custom }}}
			<li>
				<a href="#" class="dropdown-item rounded-1" data-value="{./value}" role="menuitem">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
			</li>
			{{{ end }}}
		</div>
	</ul>
</div>
