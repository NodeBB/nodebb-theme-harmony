<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="groups list">
	<h2 class="fw-semibold">[[pages:groups]]</h2>
	<div class="row justify-content-between">
		<div class="col-lg-6">
			<div class="text-sm d-flex align-items-center gap-2">
				[[topic:sort_by]]
				<a href="?sort=alpha" class="btn-ghost fw-semibold {{{ if (sort == "alpha") }}}active{{{ end }}}">[[groups:details.group_name]]</a>
				<a href="?sort=count" class="btn-ghost fw-semibold {{{ if (sort == "count") }}}active{{{ end }}}">[[groups:details.member_count]]</a>
				<a href="?sort=date" class="btn-ghost fw-semibold {{{ if (sort == "date") }}}active{{{ end }}}">[[groups:details.creation_date]]</a>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="d-flex justify-content-end gap-2">
				<div class="">
					{{{ if allowGroupCreation }}}
					<button class="btn btn-primary btn-sm" data-action="new"><i class="fa fa-plus"></i> [[groups:new_group]]</button>
					{{{ end }}}
					<select class="form-select hidden" id="search-sort">
						<option value="alpha">[[groups:details.group_name]]</option>
						<option value="count">[[groups:details.member_count]]</option>
						<option value="date">[[groups:details.creation_date]]</option>
					</select>
				</div>
				<div class="">
					<div class="input-group">
						<input type="text" class="form-control form-control-sm" placeholder="[[global:search]]" name="query" id="search-text">
						<button id="search-button" class="btn btn-primary btn-sm">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<hr />

	<div component="groups/container" class="row" id="groups-list" data-nextstart={nextStart}>
		<!-- IF groups.length -->
		<!-- IMPORT partials/groups/list.tpl -->
		<!-- ELSE -->
		<div class="col-12">
			<div class="alert alert-warning">
			[[groups:no_groups_found]]
			</div>
		</div>
		<!-- ENDIF groups.length -->
	</div>
</div>
