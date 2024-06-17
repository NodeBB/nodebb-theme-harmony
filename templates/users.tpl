<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="users">
	<h3 class="fw-semibold">[[global:users]]</h3>
	<div class="d-flex flex-wrap justify-content-between">
		<div class="mb-2 mb-md-0">
		<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<div>
			<div class="d-flex justify-content-end gap-2">
				{{{ if showInviteButton }}}
				<button component="user/invite" class="btn btn-primary btn-sm text-nowrap"><i class="fa fa-user-plus"></i> [[users:invite]]</button>
				{{{ end }}}
				{{{ if displayUserSearch }}}
				<div class="search">
					<div class="input-group">
						<input class="form-control form-control-sm" id="search-user" type="text" placeholder="[[global:search]]"/>
						<button class="btn btn-primary btn-sm" type="button" aria-label="[[global:search]]">
							<i component="user/search/icon" class="fa fa-search"></i>
						</button>
					</div>
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
	<hr/>

	<div id="users-container" class="users-container row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-4">
		{{{ each users }}}
		<!-- IMPORT partials/users/item.tpl -->
		{{{ end }}}
	</div>

	<!-- IMPORT partials/paginator.tpl -->
</div>
