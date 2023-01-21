<div class="search">
	<div id="advanced-search" class="d-flex flex-column flex-md-row">
		<!-- sidebar -->
		<div class="flex-0 pe-2 border-end-md text-sm mb-3" style="flex-basis: 240px!important;">
			<form action="{config.relative_path}/search" method="get" class="nav sticky-top d-flex flex-column flex-wrap gap-3 pe-md-3" style="z-index: 1;">
				<h2 class="fw-semibold tracking-tight mb-0">[[global:search]]</h2>

				<input id="search-input" name="term" type="text" class="form-control fw-semibold py-2 ps-2 pe-3" id="search-input" placeholder="[[search:type-to-search]]">

				<select id="search-in" name="in" class="form-select text-sm py-2 ps-2 pe-3">
					<option value="titlesposts">[[search:in-titles-posts]]</option>
					<option value="titles">[[search:in-titles]]</option>
					<option value="posts">[[search:in-posts]]</option>
					<option value="categories">[[search:in-categories]]</option>
					{{{if privileges.search:users}}}
					<option value="users">[[search:in-users]]</option>
					{{{end}}}
					{{{if privileges.search:tags}}}
					<option value="tags">[[search:in-tags]]</option>
					{{{end}}}
				</select>

				<select id="match-words-filter" name="matchWords" class="post-search-item form-select text-sm py-2 ps-2 pe-3">
					<option value="all">[[search:match-all-words]]</option>
					<option value="any">[[search:match-any-word]]</option>
				</select>

				<select id="show-results-as" name="showAs" class="post-search-item form-select text-sm py-2 ps-2 pe-3">
					<option value="posts" selected>[[search:show-results-as-posts]]</option>
					<option value="topics">[[search:show-results-as-topics]]</option>
				</select>

				<button type="submit" class="btn btn-primary fw-semibold form-control py-2 px-3">[[global:search]]</button>
			</form>
		</div>

		<!-- filters and search results -->
		<div class="flex-1 ps-md-2 ps-lg-5" style="min-width:0;">
			<div class="d-flex flex-column gap-3">
				<!-- IMPORT partials/search-filters.tpl -->
				<!-- IMPORT partials/search-results.tpl -->
			</div>
		</div>
	</div>


	<hr/>
	<div>old design below</div>

	<div class="row">
		<div class="{{{ if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
			<form id="advanced-search" class="mb-3">
				<div class="card">
					<h5 class="card-header pointer" data-bs-toggle="collapse" data-bs-target=".search-options">
						<i class="fa fa-sort"></i> [[search:advanced-search]]
					</h5>
					<div class="collapse search-options {{{ if expandSearch }}}show{{{ end }}}">
					<div class="card-body">
						<div class="mb-2 post-search-item">
							<div class="row">
								<div class="col-md-6">
									<label class="form-label">[[search:in-categories]]</label>
									<select multiple class="form-select" id="posted-in-categories" size="{allCategoriesCount}">
										{{{each allCategories}}}
										<option value="{allCategories.value}">{allCategories.text}</option>
										{{{end}}}
									</select>
									<div class="form-check">
										<input id="search-children" class="form-check-input" type="checkbox"/>
										<label class="form-check-label" for="search-children">[[search:search-child-categories]]</label>
									</div>
								</div>
								<div class="col-md-6">
									<div class="mb-2 post-search-item">
										<div class="row">
											<div class="col-md-6">
												<label class="form-label">[[search:posted-by]]</label>
												<div>
													<input type="text" class="form-control" id="posted-by-user">
												</div>
											</div>
											<div class="col-md-6">
												<label class="form-label">[[search:has-tags]]</label>
												<div>
													<input type="text" class="form-control" id="has-tags">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>
