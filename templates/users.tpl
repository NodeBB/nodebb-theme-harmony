<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="users">
	<h2 class="fw-semibold">[[global:users]]</h2>
	<div class="row justify-content-between">
		<div class="col-lg-6">
		<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<div class="col-lg-6 text-end">
			<div class="d-flex justify-content-end gap-2">
				{{{ if showInviteButton }}}
				<button component="user/invite" class="btn btn-success btn-sm"><i class="fa fa-users"></i> [[users:invite]]</button>
				{{{ end }}}
				{{{ if displayUserSearch }}}
				<div class="search">
					<div class="input-group">
						<input class="form-control form-control-sm" id="search-user" type="text" placeholder="[[global:search]]"/>
						<button class="btn btn-primary btn-sm" type="button">
							<i component="user/search/icon" class="fa fa-search"></i>
						</button>
					</div>
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
	<hr/>

	<div id="users-container" class="row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-2">
	{{{ each users }}}
	<!-- IMPORT partials/users_list.tpl -->
	{{{end}}}
	</div>

	<!-- IMPORT partials/paginator.tpl -->
</div>
