<a component="search/button" id="search-button" href="#" role="button" class="nav-link d-flex gap-2 align-items-center text-truncate" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" aria-label="[[global:search]]">
	<span>
		<i class="fa fa-search fa-fw"></i>
	</span>
	<span class="nav-text small visible-open fw-semibold">[[global:search]]</span>
</a>
<div class="search-dropdown dropdown-menu p-2 shadow" role="menu">
	<form component="search/form" id="search-form" class="d-flex justify-content-end align-items-center" role="search" method="GET">
		<div component="search/fields" class="w-100" id="search-fields">
			<div class="d-flex gap-1">
				<input autocomplete="off" type="text" class="form-control" placeholder="[[global:search]]" name="query" value="" aria-label="[[search:type-to-search]]">

				<a class="btn-ghost advanced-search-link" href="{config.relative_path}/search" title="[[search:advanced-search]]">
					<i class="fa fa-gears fa-fw text-muted"></i>
				</a>
			</div>

			<div id="quick-search-container" class="quick-search-container d-block mt-2 hidden">
				<div class="form-check filter-category mb-2 ms-2">
					<input class="form-check-input" type="checkbox" checked>
					<label class="form-check-label name text-sm"></label>
				</div>

				<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
				<div class="quick-search-results-container"></div>
			</div>
			<button type="submit" class="btn btn-outline-secondary hide">[[global:search]]</button>
		</div>
	</form>
</div>
