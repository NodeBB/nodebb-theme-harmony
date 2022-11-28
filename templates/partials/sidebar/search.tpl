{{{ if config.searchEnabled }}}
<div component="sidebar/search" class="nav-item m-2 dropstart position-relative">
	<li class="nav-link nav-btn px-2" data-bs-toggle="dropdown">
		<a component="search/button" id="search-button" href="#" class="text-muted"><i class="fa fa-search fa-fw" title="Search"></i></a>
		<span class="nav-text px-2">[[global:search]]</span>
	</li>
	<div class="search-dropdown dropdown-menu p-2">
		<form component="search/form" id="search-form" class="d-flex justify-content-end align-items-center" role="search" method="GET">
			<div component="search/fields" class="w-100" id="search-fields">
				<div class="d-flex gap-1">
					<input autocomplete="off" type="text" class="form-control" placeholder="[[global:search]]" name="query" value="">

					<div class="nav-btn justify-content-center">
						<i class="fa fa-gears fa-fw advanced-search-link text-muted"></i>
					</div>
				</div>

				<div id="quick-search-container" class="quick-search-container d-block mt-2 hidden">
					<div class="form-check filter-category mb-2 ms-2">
						<input class="form-check-input" type="checkbox" checked>
						<label class="form-check-label name"></label>
					</div>

					<div class="text-center loading-indicator"><i class="fa fa-spinner fa-spin"></i></div>
					<div class="quick-search-results-container"></div>
				</div>
				<button type="submit" class="btn btn-outline-secondary hide">[[global:search]]</button>
			</div>
		</form>
	</div>
</div>
{{{ end }}}