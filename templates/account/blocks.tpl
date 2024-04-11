<!-- IMPORT partials/account/header.tpl -->
<div class="d-flex justify-content-between mb-3">
	<h3 class="fw-semibold fs-5">[[pages:account/blocks, {username}]]</h3>
	<div class="justify-content-end">
		<div class="dropdown">
			<div class="input-group">
				<input class="form-control form-control-sm" type="text" id="user-search" placeholder="[[users:enter-username]]" data-bs-toggle="dropdown" autocomplete="off" aria-haspopup="true" aria-expanded="false"/>

				<ul component="blocks/search/list" class="dropdown-menu dropdown-menu-end p-1 text-sm block-edit overflow-auto" style="max-height:300px;" role="menu">
					<li component="blocks/start-typing">
						<a href="#" class="dropdown-item rounded-1" role="menuitem">[[admin/menu:search.start-typing]]</a>
					</li>
					<li component="blocks/no-users" class="hidden">
						<a href="#" class="dropdown-item rounded-1" role="menuitem">[[users:no-users-found]]</a>
					</li>
					{{{ each edit }}}
					<li component="blocks/search/match">
						<div class="dropdown-item rounded-1 d-flex flex-nowrap gap-4 justify-content-between align-items-center" role="menuitem">
							<div class="text-truncate">
								<a href="{config.relative_path}/uid/{./uid}" class="text-decoration-none">{buildAvatar(edit, "24px", true)} {./username}</a>
							</div>

							<button class="btn btn-sm btn-outline-danger text-nowrap {{{ if ./isBlocked }}}hidden{{{ end }}}" data-uid="{./uid}" data-action="block">[[user:block-user]]</button>
							<button class="btn btn-sm btn-outline-primary text-nowrap {{{ if !./isBlocked }}}hidden{{{ end }}}" data-uid="{./uid}" data-action="unblock">[[user:unblock-user]]</button>
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
	<div class="alert alert-warning text-center m-0"{{{ if users.length }}} style="display: none;"{{{ end }}}>[[user:has-no-blocks]]</div>

	<div id="users-container" class="row row-cols-2 row-cols-lg-3 row-cols-xl-4 g-3">
		{{{ each users }}}
		<div class="d-flex flex-column gap-1">
			<!-- IMPORT partials/users/item.tpl -->
			<button class="btn btn-sm btn-outline-primary text-nowrap mx-auto" data-uid="{./uid}" data-action="unblock">[[user:unblock-user]]</button>
		</div>
		{{{ end }}}
	</div>
	<!-- IMPORT partials/paginator.tpl -->
</div>

<!-- IMPORT partials/account/footer.tpl -->
