<div class="text-dark bg-light bottombar d-flex d-md-none justify-content-between fixed-bottom ff-secondary">
	<div class="p-2 bottom-sheet">
		<button class="btn" data-bs-toggle="dropdown">
			<i class="fa fa-bars"></i>
		</button>
		<ul class="dropdown-menu">
			{{{ each navigation }}}
			<!-- IF function.displayMenuItem, @index -->
			<li class="nav-item {./class}{{{ if ./dropdown }}} dropend{{{ end }}}" title="{./title}">
				<a class="nav-link nav-btn navigation-link p-3 {{{ if navigation.dropdown }}}dropdown-toggle{{{ end }}}"
				{{{ if ./dropdown }}} href="#" role="button" data-bs-toggle="collapse" data-bs-target="#collapse-target-{@index}" onclick="event.stopPropagation();" {{{ else }}} href="{./route}"{{{ end }}} {{{ if ./id }}}id="{./id}"{{{ end }}}{{{ if ./targetBlank }}} target="_blank"{{{ end }}}>
					<span class="d-inline-flex justify-content-between w-100">
						<span class="text-nowrap truncate-open">
							{{{ if ./iconClass }}}
							<i class="fa fa-fw {./iconClass}" data-content="{./content}"></i>
							{{{ end }}}
							{{{ if navigation.text }}}
							<span class="nav-text visible-open px-2 fw-semibold">{navigation.text}</span>
							{{{ end }}}
						</span>
						<span component="navigation/count" class="visible-open badge rounded-1 bg-primary {{{ if !./content }}}hidden{{{ end }}}">{./content}</span>
					</span>
				</a>
				{{{ if navigation.dropdown }}}
				<div class="ps-3">
					<ul id="collapse-target-{@index}" class="collapse list-unstyled ps-3">
						{navigation.dropdownContent}
					</ul>
				</div>
				{{{ end }}}
			</li>
			<!-- ENDIF function.displayMenuItem -->
			{{{end}}}
		</ul>
	</div>

	<div class="">

	</div>
</div>