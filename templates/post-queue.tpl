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
	<div class="alert alert-info d-flex align-items-center">
		<p class="mb-0 me-auto">[[post-queue:no-single-post]]</p>
		<a class="btn btn-sm btn-primary" href=".">[[post-queue:back-to-list]]</a>
	</div>
	{{{ end }}}
	{{{ end }}}

	{{{ each posts }}}
	<div class="card mb-4" data-id="{./id}">
		<div class="row g-0">
			<div class="col-md-2 bg-light">
				<ul class="list-unstyled ps-0 mb-0 border-end">
					<li class="card-body border-bottom position-relative">
						{{{ if !singlePost }}}
						<input id="{./id}" type="checkbox" class="form-check-input" autocomplete="off" />
						{{{ end }}}
						<label for="{./id}" class="small stretched-link">
							{{{ if posts.data.tid }}}[[post-queue:reply]]{{{ else }}}[[post-queue:topic]]{{{ end }}}
						</label>
					</li>
					<li class="card-body border-bottom">
						<div class="text-xs fw-semibold mb-1">[[post-queue:user]]</div>
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
							{{{ if posts.data.tid }}}[[post-queue:topic]]{{{ else }}}[[post-queue:title]] <i class="fa fa-fw fa-edit" data-bs-toggle="tooltip" title="[[post-queue:title-editable]]"></i>{{{ end }}}
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
					<li class="card-body">
						<div class="text-xs fw-semibold mb-1">
							[[post-queue:category]]{{{ if posts.data.cid}}} <i class="fa fa-fw fa-edit" data-bs-toggle="tooltip" title="[[post-queue:category-editable]]"></i>{{{ end }}}
						</div>
						<div class="topic-category small" {{{if posts.data.cid}}}data-editable="editable"{{{end}}}">
							<a href="{config.relative_path}/category/{posts.category.slug}">
								<div class="category-item d-inline-block">
									{buildCategoryIcon(./category, "24px", "rounded-circle")}
									{posts.category.name}
								</div>
							</a>
						</div>
					</li>
				</ul>
			</div>
			<div class="col-md-10 d-flex flex-column">
				<div class="post-content mb-auto text-break p-3 pb-0 h-100">{posts.data.content}</div>
				<div class="post-content-editable flex-grow-1 hidden">
					<textarea class="form-control w-100 h-100 p-3">{posts.data.rawContent}</textarea>
				</div>
				<div class="border-top p-3 d-grid d-md-flex gap-2">
					{{{ if canAccept }}}
					<button class="btn btn-success btn-sm" data-action="accept"><i class="fa fa-fw fa-check"></i> [[post-queue:accept]] </button>
					<button class="btn btn-info btn-sm" data-action="notify"><i class="fa fa-fw fa-bell-o"></i> [[post-queue:notify]]</button>
					<button class="btn btn-danger btn-sm" data-action="reject"><i class="fa fa-fw fa-times"></i> [[post-queue:reject]]</button>
					{{{ else }}}
					<button class="btn btn-danger btn-sm" data-action="reject"><i class="fa fa-fw fa-times"></i> [[post-queue:remove]]</button>
					{{{ end }}}
					<span class="d-none d-md-inline ms-auto align-self-center text-xs fw-semibold">[[post-queue:content-editable]]</span>
				</div>
			</div>
		</div>
	</div>
	{{{ end }}}
</div>

<!-- IMPORT partials/paginator.tpl -->