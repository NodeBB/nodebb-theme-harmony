<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="users">
	<h2 class="fw-semibold">[[global:users]]</h2>
	<div class="d-flex flex-wrap justify-content-between">
		<div class="mb-2 mb-md-0">
		<!-- IMPORT partials/users_list_menu.tpl -->
		</div>
		<div class="">
			<div class="d-flex justify-content-end gap-2">
				{{{ if showInviteButton }}}
				<button component="user/invite" class="btn btn-primary btn-sm text-nowrap"><i class="fa fa-user-plus"></i> [[users:invite]]</button>
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

	<!-- IMPORT partials/users_list.tpl -->

	<!-- IMPORT partials/paginator.tpl -->
</div>
