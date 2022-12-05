<a component="search/button" id="search-button" href="#" role="button" class="nav-link nav-btn text-truncate" data-bs-toggle="dropdown" title="[[global:header.search]]">
	<i class="fa fa-search fa-fw"></i>
	<span class="nav-text visible-open px-2 fw-semibold">[[global:search]]</span>
</a>
<div class="search-dropdown dropdown-menu p-2 shadow">
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

			<div class="d-flex gap-1 input-container mt-2">
				<input autocomplete="off" type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">

				<div class="nav-btn d-flex justify-content-center align-items-center advanced-search-link">
					<i class="fa fa-gears fa-fw text-muted"></i>
				</div>
			</div>

			<button type="submit" class="btn btn-outline-secondary hide">[[global:search]]</button>
		</div>
	</form>
</div>