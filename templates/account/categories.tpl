<!-- IMPORT partials/account/header.tpl -->

<h3 class="fw-semibold fs-5">{title}</h3>

<div class="row">
<div class="col-lg-12 mb-2">
	<div class="btn-group bottom-sheet" component="category/watch/all">
		<button class="btn btn-outline-secondary dropdown-toggle" data-bs-toggle="dropdown" type="button">
			<span>[[user:change_all]]</span>
		</button>
		<ul class="dropdown-menu">
			<li><a class="dropdown-item" href="#" component="category/watching" data-state="watching"><i class="fa fa-fw fa-inbox"></i> [[category:watching]]<p class="help-text"><small>[[category:watching.description]]</small></p></a></li>
			<li><a class="dropdown-item" href="#" component="category/notwatching" data-state="notwatching"><i class="fa fa-fw fa-clock-o"></i> [[category:not-watching]]<p class="help-text"><small>[[category:not-watching.description]]</small></p></a></li>
			<li><a class="dropdown-item" href="#" component="category/ignoring" data-state="ignoring"><i class="fa fa-fw fa-eye-slash"></i> [[category:ignoring]]<p class="help-text"><small>[[category:ignoring.description]]</small></p></a></li>
		</ul>
	</div>
</div>
<div class="col-lg-12">
	<ul class="categories list-unstyled" itemscope itemtype="http://www.schema.org/ItemList">
		{{{each categories}}}
		<!-- IMPORT partials/account/category-item.tpl -->
		{{{end}}}
	</ul>
	<!-- IMPORT partials/paginator.tpl -->
</div>

<!-- IMPORT partials/account/footer.tpl -->