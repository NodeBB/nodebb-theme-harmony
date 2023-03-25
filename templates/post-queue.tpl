<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="btn-toolbar justify-content-end">
	<div class="me-2">
	<!-- IMPORT partials/category/filter-dropdown-right.tpl -->
	</div>
	{{{ if (!singlePost && posts.length) }}}
	<div class="btn-group bottom-sheet" component="post-queue/bulk-actions">
		<button type="button" class="btn-ghost-sm dropdown-toggle" data-bs-toggle="dropdown" autocomplete="off" aria-haspopup="true" aria-expanded="false">
			<i class="fa fa-clone"></i><span class="fw-semibold"> [[post-queue:bulk-actions]]</span>
		</button>
		<ul class="dropdown-menu dropdown-menu-end">
			{{{ if canAccept }}}
			<li><a class="dropdown-item" href="#" data-action="accept-all">[[post-queue:accept-all]]</a></li>
			<li><a class="dropdown-item" href="#" data-action="accept-selected">[[post-queue:accept-selected]]</a></li>
			<li class="dropdown-divider"></li>
			<li><a class="dropdown-item" href="#" data-action="reject-all">[[post-queue:reject-all]]</a></li>
			<li><a class="dropdown-item" href="#" data-action="reject-selected">[[post-queue:reject-selected]]</a></li>
			{{{ else }}}
			<li><a class="dropdown-item" href="#" data-action="reject-all">[[post-queue:remove-all]]</a></li>
			<li><a class="dropdown-item" href="#" data-action="reject-selected">[[post-queue:remove-selected]]</a></li>
			{{{ end }}}
		</ul>
	</div>
	{{{ end }}}
</div>

<div class="post-queue posts-list">
	{{{ if (!posts.length && isAdmin) }}}
	{{{ if !singlePost }}}
	<div class="alert alert-info">
		[[post-queue:no-queued-posts]]
		{{{ if !enabled }}}<p>[[post-queue:enabling-help, {config.relative_path}/admin/settings/post#post-queue]]</p>{{{ end }}}
	</div>
	{{{ else }}}
	<div class="alert alert-info d-flex align-items-md-center d-flex flex-column flex-md-row">
		<p class="mb-md-0">[[post-queue:no-single-post]]</p>
		<div class="d-grid ms-md-auto">
			<a class="btn btn-sm btn-primary flex-shrink text-nowrap" href=".">[[post-queue:back-to-list]]</a>
		</div>
	</div>
	{{{ end }}}
	{{{ end }}}

	{{{ each posts }}}
	<div class="card mb-4" data-id="{./id}" data-uid="{./user.uid}">
		<div class="row g-0">
			<div class="col-sm-4 col-md-3 bg-card-cap rounded-start">
				<ul class="list-unstyled ps-0 mb-0 border-end h-100">
					<li class="card-body border-bottom position-relative">
						{{{ if !singlePost }}}
						<input id="{./id}" type="checkbox" class="form-check-input" autocomplete="off" />
						{{{ end }}}
						<label for="{./id}" class="small stretched-link">
							{{{ if posts.data.tid }}}[[post-queue:reply]]{{{ else }}}[[post-queue:topic]]{{{ end }}}
						</label>
					</li>
					<li class="card-body border-bottom">
						<div class="d-flex text-xs fw-semibold mb-1 align-items-center">
							[[post-queue:user]]
							{{{ if ((privileges.ban || privileges.mute) || privileges.admin:users) }}}
							<div class="ms-auto btn-group bottom-sheet">
								<button href="#" class="btn btn-outline-sm text-xs dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actions</button>
								<ul class="dropdown-menu">
									{{{ if privileges.ban }}}
									<li class="{{{ if target.user.banned }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="ban">[[user:ban_account]]</a></li>
									<li class="{{{ if !target.user.banned }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="unban">[[user:unban_account]]</a></li>
									{{{ end }}}
									{{{ if privileges.mute}}}
									<li class="{{{ if target.user.muted }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="mute">[[user:mute_account]]</a></li>
									<li class="{{{ if !target.user.muted }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="unmute">[[user:unmute_account]]</a></li>
									{{{ end }}}
									{{{ if privileges.admin:users }}}
									<li><a class="dropdown-item" href="#" data-action="delete-account">[[user:delete_account_as_admin]]</a></li>
									<li><a class="dropdown-item" href="#" data-action="delete-content">[[user:delete_content]]</a></li>
									<li><a class="dropdown-item" href="#" data-action="delete-all">[[user:delete_all]]</a></li>
									{{{ end }}}
								</ul>
							</div>
							{{{ end }}}
						</div>
						<div class="small">
							{{{ if posts.user.userslug}}}
							<a class="text-decoration-none" href="{config.relative_path}/uid/{posts.user.uid}">{buildAvatar(posts.user, "24px", true, "not-responsive")} {posts.user.username}</a>
							{{{ else }}}
							{posts.user.username}
							{{{ end }}}
						</div>
					</li>
					<li class="card-body border-bottom">
						<div class="text-xs fw-semibold mb-1">[[post-queue:when]]</div>
						<span class="small timeago" title={posts.data.timestampISO}></span>
					</li>
					<li class="card-body border-bottom">
						<div class="text-xs fw-semibold mb-1">
							{{{ if posts.data.tid }}}[[post-queue:topic]]{{{ else }}}[[post-queue:title]]{{{ end }}}
						</div>
						<span class="small topic-title text-break">
							{{{ if posts.data.tid }}}
							<a href="{config.relative_path}/topic/{posts.data.tid}">{posts.topic.title}</a>
							{{{ end }}}
							<span class="title-text">{posts.data.title}</span>
						</span>
						{{{if !posts.data.tid}}}
						<div class="topic-title-editable hidden">
							<input class="form-control" type="text" value="{posts.data.title}"/>
						</div>
						{{{end}}}
					</li>
					<li class="card-body border-bottom">
						<div class="text-xs fw-semibold mb-1">
							[[post-queue:category]]
						</div>
						<div class="topic-category small">
							<a href="{config.relative_path}/category/{posts.category.slug}">
								<div class="category-item d-inline-block">
									{buildCategoryIcon(./category, "24px", "rounded-circle")}
									{posts.category.name}
								</div>
							</a>
						</div>
					</li>
					<li class="card-body">
						{{{ if canAccept }}}
						<div class="row row-cols-2 g-1">
							<div class="col d-grid">
								<button class="btn btn-success btn-sm" data-action="accept"><i class="fa fa-fw fa-check"></i> [[post-queue:accept]] </button>
							</div>
							<div class="col d-grid">
								<button class="btn btn-danger btn-sm" data-action="reject"><i class="fa fa-fw fa-times"></i> [[post-queue:reject]]</button>
							</div>
							{{{ if !posts.data.tid }}}
							<div class="col d-grid">
								<button class="btn btn-light btn-sm" data-action="editTitle"><i class="fa fa-fw fa-edit"></i> [[post-queue:title]]</button>
							</div>
							{{{ end }}}
							<div class="col d-grid">
								<button class="btn btn-light btn-sm" data-action="editContent"><i class="fa fa-fw fa-edit"></i> [[post-queue:content]]</button>
							</div>
							{{{if posts.data.cid}}}
							<div class="col d-grid">
								<button class="btn btn-light btn-sm" data-action="editCategory"><i class="fa fa-fw fa-edit"></i> [[post-queue:category]]</button>
							</div>
							{{{ end }}}
							<div class="col d-grid">
								<button class="btn btn-light btn-sm" data-action="notify"><i class="fa fa-fw fa-bell-o"></i> [[post-queue:notify]]</button>
							</div>
						</div>
						{{{ else }}}
						<button class="btn btn-danger btn-sm" data-action="reject"><i class="fa fa-fw fa-times"></i> [[post-queue:remove]]</button>
						{{{ end }}}
					</li>
				</ul>
			</div>
			<div class="col-sm-8 col-md-9 d-flex flex-column">
				<div class="post-content mb-auto text-break p-3 pb-0 h-100">{posts.data.content}</div>
				<div class="post-content-editable flex-grow-1 hidden">
					<textarea class="form-control w-100 h-100 p-3">{posts.data.rawContent}</textarea>
				</div>
			</div>
		</div>
	</div>
	{{{ end }}}
</div>

<!-- IMPORT partials/paginator.tpl -->