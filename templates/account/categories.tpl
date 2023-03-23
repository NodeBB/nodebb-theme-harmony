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
			<ul class="dropdown-menu p-1 text-sm dropdown-menu-end">
				<li><a class="dropdown-item rounded-1 d-flex flex-column p-2" href="#" component="category/watching" data-state="watching">
						<div class="d-flex align-items-center gap-2">
							<i class="fa fa-fw fa-inbox"></i>
							<span class="flex-1 fw-semibold">[[category:watching]]</span>
						</div>
						<div class="help-text text-muted text-xs">[[category:watching.description]]</div>
					</a>
				</li>
				<li><a class="dropdown-item rounded-1 d-flex flex-column p-2" href="#" component="category/notwatching" data-state="notwatching">
						<div class="d-flex align-items-center gap-2">
							<i class="fa fa-fw fa-clock-o"></i>
							<span class="flex-1 fw-semibold">[[category:not-watching]]</span>
						</div>
						<div class="help-text text-muted text-xs">[[category:not-watching.description]]</div>
					</a>
				</li>
				<li><a class="dropdown-item rounded-1 d-flex flex-column p-2" href="#" component="category/ignoring" data-state="ignoring">
						<div class="d-flex align-items-center gap-2">
							<i class="fa fa-fw fa-eye-slash"></i>
							<span class="flex-1 fw-semibold">[[category:ignoring]]</span>
						</div>
						<div class="help-text text-muted text-xs">[[category:ignoring.description]]</div>
					</a>
				</li>
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