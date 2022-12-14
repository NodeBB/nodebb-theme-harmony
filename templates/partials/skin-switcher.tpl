<div class="dropend m-2" component="skinSwitcher">
	<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link nav-btn position-relative" title="[[harmony:skins]]">
		<span class="justify-content-between w-100">
			<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
				<i component="skinSwitcher/icon" class="fa fa-fw fa-paintbrush"></i>
				<span class="nav-text small visible-open fw-semibold">[[harmony:skins]]</span>
			</span>
		</span>
	</a>

	<ul class="dropdown-menu overflow-auto">
		<div class="d-flex px-2">
			<div>
				<li class="dropdown-header">Light</li>
				<div class="d-grid" style="grid-template-columns: 1fr 1fr;">
					{{{ each bootswatchSkinOptions.light }}}
					<li>
						<a href="#" class="dropdown-item rounded-1" data-value="{./value}">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
					</li>
					{{{ end }}}
				</div>
			</div>
			<div>
				<li class="dropdown-header">Dark</li>
				{{{ each bootswatchSkinOptions.dark }}}
				<li>
					<a href="#" class="dropdown-item rounded-1" data-value="{./value}">{./name} <i class="fa fa-fw fa-check {{{ if !./selected }}} invisible {{{ end }}}"></i></a>
				</li>
				{{{ end }}}
			</div>
		</div>
	</ul>
</div>
