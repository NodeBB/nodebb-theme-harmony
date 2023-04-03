<div class="btn-group bottom-sheet {{{ if !terms.length }}}hidden{{{ end }}}">
	<button type="button" class="btn-ghost-sm d-flex gap-2 dropdown-toggle" data-bs-toggle="dropdown">
		<i class="fa fa-fw fa-clock text-primary"></i>
		<span class="visible-md-inline visible-lg-inline fw-semibold">{selectedTerm.name}</span>
	</button>
	<ul class="dropdown-menu p-1 text-sm" role="menu">
		{{{each terms}}}
		<li role="presentation" class="category">
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" role="menu-item" href="{config.relative_path}/{terms.url}">
				<div class="flex-grow-1">{terms.name}</div>
				<i class="flex-shrink-0 fa fa-fw {{{ if terms.selected }}}fa-check{{{ end }}}"></i>
			</a>
		</li>
		{{{end}}}
	</ul>
</div>