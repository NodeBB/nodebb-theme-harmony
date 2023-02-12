<!-- IMPORT partials/account/header.tpl -->

<div class="d-flex justify-content-between align-items-center mb-3">
	<div class="d-flex gap-1">
		<h3 class="fw-semibold fs-5 mb-0">{title}</h3>
	</div>

	<div class="d-flex gap-1">
		<div class="btn-group bottom-sheet" component="category/watch/all">
			<button class="btn-ghost-sm fw-semibold dropdown-toggle" data-bs-toggle="dropdown" type="button">
				<span>[[user:change_all]]</span>
			</button>
			<ul class="dropdown-menu dropdown-menu-end">
				<li><a class="dropdown-item" href="#" component="category/watching" data-state="watching"><i class="fa fa-fw fa-inbox"></i> [[category:watching]]<p class="help-text"><small>[[category:watching.description]]</small></p></a></li>
				<li><a class="dropdown-item" href="#" component="category/notwatching" data-state="notwatching"><i class="fa fa-fw fa-clock-o"></i> [[category:not-watching]]<p class="help-text"><small>[[category:not-watching.description]]</small></p></a></li>
				<li><a class="dropdown-item" href="#" component="category/ignoring" data-state="ignoring"><i class="fa fa-fw fa-eye-slash"></i> [[category:ignoring]]<p class="help-text"><small>[[category:ignoring.description]]</small></p></a></li>
			</ul>
		</div>
	</div>
</div>

<div>
	<ul class="categories list-unstyled" itemscope itemtype="http://www.schema.org/ItemList">
		{{{each categories}}}
		<!-- IMPORT partials/account/category-item.tpl -->
		{{{end}}}
	</ul>
	<!-- IMPORT partials/paginator.tpl -->
</div>

<!-- IMPORT partials/account/footer.tpl -->