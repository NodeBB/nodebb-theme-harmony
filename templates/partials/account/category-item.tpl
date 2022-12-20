<li component="categories/category" data-cid="{./cid}" class="row category-{./cid} mb-4">
	<meta itemprop="name" content="{./name}">
	<div class="content col-10 depth-{../depth}">
		<div class="d-flex">
			<div class="fs-3">
				{buildCategoryIcon(@value, "40px", "rounded-1")}
			</div>

			<div class="ms-3">
				<h3 class="title">
					<!-- IMPORT partials/categories/link.tpl -->
				</h3>
				<!-- description -->
				<div class="mb-2">
					{{{ if ../descriptionParsed }}}
					<div class="description text-muted">{../descriptionParsed}</div>
					{{{ end }}}
				</div>
			</div>
		</div>
	</div>
	<div class="col-2">
		<!-- IMPORT partials/category/watch.tpl -->
	</div>
</li>
