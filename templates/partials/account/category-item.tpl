<li component="categories/category" data-cid="{./cid}" data-parent-cid="{../parentCid}" class="category-{./cid}">
	<meta itemprop="name" content="{./name}">
	<div class="content depth-{./depth} d-flex gap-3 py-3">
		<div class="flex-1 d-flex gap-2">
			<div class="fs-5">
				{buildCategoryIcon(@value, "24px", "rounded-1")}
			</div>
			<div>
				<h2 class="title fw-semibold fs-5 m-0 tracking-tight">
					<!-- IMPORT partials/categories/link.tpl -->
				</h2>
				{{{ if ./descriptionParsed }}}
				<div class="description text-muted text-xs">{./descriptionParsed}</div>
				{{{ end }}}
			</div>
		</div>
		<div class="flex-grow-0 flex-shrink-0">
			<!-- IMPORT partials/category/watch.tpl -->
		</div>
	</div>
	<hr class="text-muted opacity-25 m-0"/>
</li>
