<!-- IMPORT partials/account/header.tpl -->
<div class="d-flex justify-content-between mb-3">
	<h3 class="fw-semibold fs-5">[[pages:account/blocks, {username}]]</h3>
	<div class="justify-content-end">
		<div class="dropdown">
			<div class="input-group">
				<input class="form-control form-control-sm" type="text" id="user-search" placeholder="[[users:enter-username]]" data-bs-toggle="dropdown" autocomplete="off"/>

				<ul component="blocks/search/list" class="dropdown-menu dropdown-menu-end p-1 text-sm block-edit overflow-auto" style="max-height:300px;">
					<li><a href="#" class="dropdown-item">[[admin/menu:search.start-typing]]</a></li>
					{{{ each edit }}}
					<li class="">
						<div class="dropdown-item d-flex flex-nowrap gap-2 justify-content-between">
							<div class="text-truncate">
								<a href="{config.relative_path}/uid/{./uid}" class="text-decoration-none">{buildAvatar(edit, "24px", true)} {./username}</a>
							</div>
							<button class="btn btn-sm btn-primary text-nowrap" data-uid="{./uid}" data-action="toggle">[[user:block-toggle]]</button>
						</div>
					</li>
					{{{ end }}}
				</ul>

				<button class="btn btn-primary btn-sm" type="button">
					<i class="fa fa-search"></i>
				</button>
			</div>
		</div>
	</div>
</div>
<div class="users">
	<div id="users-container" class="row row-cols-2 row-cols-lg-3 row-cols-xl-4 g-2">
		{{{ each users }}}
		<!-- IMPORT partials/users/item.tpl -->
		{{{ end }}}
	</div>
	<div class="alert alert-warning text-center"{{{ if users.length }}} style="display: none;"{{{ end }}}>[[user:has-no-blocks]]</div>
	<!-- IMPORT partials/paginator.tpl -->
</div>

<!-- IMPORT partials/account/footer.tpl -->
