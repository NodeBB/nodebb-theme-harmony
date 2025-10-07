<ul class="list-unstyled category-children row row-cols-1 row-cols-md-2 g-2 my-1 w-100">
	{{{ each ./children }}}
	{{{ if !./isSection }}}
	<li data-cid="{./cid}" class="category-children-item small">
		<div class="d-flex gap-1">
			<i class="fa fa-fw fa-caret-right text-primary" style="line-height: var(--bs-body-line-height);"></i>
			<a href="{{{ if ./link }}}{./link}{{{ else }}}{config.relative_path}/category/{./slug}{{{ end }}}" class="text-reset fw-semibold flex-1">{./name}</a>
		</div>
	</li>
	{{{ end }}}
	{{{ end }}}
</ul>