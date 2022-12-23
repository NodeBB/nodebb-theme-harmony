{{{ if children.length }}}
<div class="subcategory">
	{{{ if hasMoreSubCategories }}}
	<div class="mb-2"><!-- IMPORT partials/category-selector.tpl --></div>
	{{{ else }}}
	<h3 class="fs-6 fw-semibold">[[category:subcategories]]</h3>
	{{{ end }}}

	<ul component="category/subcategory/container" class="categories list-unstyled" itemscope itemtype="http://www.schema.org/ItemList">
		<hr class="text-muted"/>
		{{{each children}}}
		<!-- IMPORT partials/categories/item.tpl -->
		<hr class="text-muted"/>
		{{{end}}}
	</ul>
	{{{ if hasMoreSubCategories}}}
	<button class="btn btn-link mb-2" component="category/load-more-subcategories">[[category:x-more-categories, {subCategoriesLeft}]]</button>
	{{{ end }}}
</div>
{{{ end }}}