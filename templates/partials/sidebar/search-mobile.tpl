<a component="search/button" id="search-button" href="#" role="button" class="nav-link text-truncate" data-bs-toggle="dropdown" title="[[global:header.search]]" aria-haspopup="true" aria-expanded="false">
	<i class="fa fa-search fa-fw"></i>
	<span class="nav-text visible-open px-2 fw-semibold">[[global:search]]</span>
</a>
<div class="search-dropdown dropdown-menu p-2 shadow" role="menu">
	<form component="search/form" id="search-form" class="d-flex justify-content-end align-items-center" role="search" method="GET">
		<div component="search/fields" class="w-100" id="search-fields">
			<div id="quick-search-container" class="quick-search-container d-block hidden">
				<div class="form-check filter-category mb-2 ms-2">
					<input class="form-check-input" type="checkbox" checked>
					<label class="form-check-label name"></label>
				</div>

				<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
				<div class="quick-search-results-container"></div>
			</div>

			<div class="d-flex gap-1 input-container">
				<input autocomplete="off" type="text" class="form-control" placeholder="[[global:search]]" name="query" value="" aria-label="[[search:type-to-search]]">

				<a class="nav-link d-flex justify-content-center align-items-center advanced-search-link" href="{config.relative_path}/search" title="[[search:advanced-search]]">
					<i class="fa fa-gears fa-fw text-muted"></i>
				</a>
			</div>

			<button type="submit" class="btn btn-outline-secondary hide">[[global:search]]</button>
		</div>
	</form>
</div>