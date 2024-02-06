{{{ if children.length }}}
<div class="subcategory">
	{{{ if hasMoreSubCategories }}}
	<div class="mb-2"><!-- IMPORT partials/category/selector-dropdown-left.tpl --></div>
	{{{ else }}}
	<h3 class="fs-6 fw-semibold">[[category:subcategories]]</h3>
	{{{ end }}}

	<ul component="category/subcategory/container" class="categories-list list-unstyled" itemscope itemtype="http://www.schema.org/ItemList">
		<li><hr class="text-muted"/></li>
		{{{each children}}}
		<!-- IMPORT partials/categories/item.tpl -->
		{{{end}}}
	</ul>
	{{{ if hasMoreSubCategories}}}
	<button class="btn-ghost-sm ff-secondary mb-2" component="category/load-more-subcategories">[[category:x-more-categories, {subCategoriesLeft}]]</button>
	{{{ end }}}
</div>
{{{ end }}}