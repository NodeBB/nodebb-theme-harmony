{{{ if (!./index && widgets.mainpost-header.length) }}}
<div data-widget-area="mainpost-header">
	{{{ each widgets.mainpost-header }}}
	{widgets.mainpost-header.html}
	{{{ end }}}
</div>
{{{ end }}}
<div class="d-flex align-items-start gap-3">
	<div class="bg-body d-none d-sm-block rounded-circle" style="outline: 2px solid var(--bs-body-bg);">
		<a class="d-inline-block position-relative text-decoration-none" href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" aria-label="[[aria:user-avatar-for, {./user.username}]]">
			{buildAvatar(posts.user, "48px", true, "", "user/picture")}
			<span component="user/status" class="position-absolute translate-middle-y border border-white border-2 rounded-circle status {posts.user.status}"><span class="visually-hidden">[[global:{posts.user.status}]]</span></span>
		</a>
	</div>
	<div class="post-container d-flex flex-grow-1 flex-column w-100" style="min-width:0;">
		<div class="d-flex align-items-center gap-1 flex-wrap w-100 post-header mt-1" itemprop="author" itemscope itemtype="https://schema.org/Person">
			<meta itemprop="name" content="{./user.username}">
			{{{ if ./user.userslug }}}<meta itemprop="url" content="{config.relative_path}/user/{./user.userslug}">{{{ end }}}

			<div class="bg-body d-sm-none">
				<a class="d-inline-block position-relative text-decoration-none" href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
					{buildAvatar(posts.user, "20px", true, "", "user/picture")}
					<span component="user/status" class="position-absolute translate-middle-y border border-white border-2 rounded-circle status {posts.user.status}"><span class="visually-hidden">[[global:{posts.user.status}]]</span></span>
				</a>
			</div>

			<a class="fw-bold text-nowrap" href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.displayname}</a>

			{{{ each posts.user.selectedGroups }}}
			{{{ if posts.user.selectedGroups.slug }}}
			<!-- IMPORT partials/groups/badge.tpl -->
			{{{ end }}}
			{{{ end }}}

			{{{ if posts.user.banned }}}
			<span class="badge bg-danger rounded-1">[[user:banned]]</span>
			{{{ end }}}

			<div class="d-flex gap-1 align-items-center">
				<span class="text-muted">{generateWroteReplied(@value, config.timeagoCutoff)}</span>

				<i component="post/edit-indicator" class="fa fa-edit text-muted{{{ if privileges.posts:history }}} pointer{{{ end }}} edit-icon {{{ if !posts.editor.username }}}hidden{{{ end }}}" title="[[global:edited-timestamp, {isoTimeToLocaleString(./editedISO, config.userLang)}]]"></i>
				<span data-editor="{posts.editor.userslug}" component="post/editor" class="visually-hidden">[[global:last-edited-by, {posts.editor.username}]] <span class="timeago" title="{isoTimeToLocaleString(posts.editedISO, config.userLang)}"></span></span>
			</div>

			{{{ if posts.user.custom_profile_info.length }}}
			<div>
				<span>
					&#124;
					{{{ each posts.user.custom_profile_info }}}
					{posts.user.custom_profile_info.content}
					{{{ end }}}
				</span>
			</div>
			{{{ end }}}
			<div class="d-flex align-items-center gap-1 flex-grow-1 justify-content-end">
				<span class="bookmarked opacity-0 text-primary"><i class="fa fa-bookmark-o"></i></span>
				<a href="{config.relative_path}/post/{./pid}" class="post-index text-muted d-none d-md-inline">#{increment(./index, "1")}</a>
			</div>
		</div>

		<div class="content mt-2 text-break" component="post/content" itemprop="text">
			{posts.content}
		</div>
	</div>
</div>

<div component="post/footer" class="post-footer border-bottom pb-2">
	{{{ if posts.user.signature }}}
	<div component="post/signature" data-uid="{posts.user.uid}" class="text-xs text-muted mt-2">{posts.user.signature}</div>
	{{{ end }}}

	<div class="d-flex">
		{{{ if !hideReplies }}}
		<a component="post/reply-count" data-target-component="post/replies/container" href="#" class="d-flex gap-2 align-items-center mt-2 btn-ghost ff-secondary border rounded-1 p-1 text-muted text-decoration-none text-xs {{{ if (!./replies || shouldHideReplyContainer(@value)) }}}hidden{{{ end }}}">
			<span component="post/reply-count/avatars" class="d-flex gap-1 {{{ if posts.replies.hasMore }}}hasMore{{{ end }}}">
				{{{each posts.replies.users}}}
				<span>{buildAvatar(posts.replies.users, "20px", true, "avatar-tooltip")}</span>
				{{{end}}}
				{{{ if posts.replies.hasMore}}}
				<span><i class="fa fa-ellipsis"></i></span>
				{{{ end }}}
			</span>

			<span class="ms-2 replies-count fw-semibold" component="post/reply-count/text" data-replies="{posts.replies.count}">{posts.replies.text}</span>
			<span class="ms-2 replies-last hidden-xs fw-semibold">[[topic:last-reply-time]] <span class="timeago" title="{posts.replies.timestampISO}"></span></span>

			<i class="fa fa-fw fa-chevron-down" component="post/replies/open"></i>
		</a>
		{{{ end }}}
	</div>

	<div component="post/replies/container" class="my-2 col-11 border rounded-1 p-3 hidden-empty"></div>

	<div component="post/actions" class="d-flex justify-content-end gap-1 post-tools">
		<!-- IMPORT partials/topic/reactions.tpl -->
		<a component="post/reply" href="#" class="btn-ghost-sm {{{ if !privileges.topics:reply }}}hidden{{{ end }}}" title="[[topic:reply]]"><i class="fa fa-fw fa-reply text-primary"></i></a>
		<a component="post/quote" href="#" class="btn-ghost-sm {{{ if !privileges.topics:reply }}}hidden{{{ end }}}" title="[[topic:quote]]"><i class="fa fa-fw fa-quote-right text-primary"></i></a>

		{{{ if !reputation:disabled }}}
		<div class="d-flex votes align-items-center">
			<a component="post/upvote" href="#" class="btn-ghost-sm{{{ if posts.upvoted }}} upvoted{{{ end }}}" title="[[topic:upvote-post]]">
				<i class="fa fa-fw fa-chevron-up text-primary"></i>
			</a>

			<meta itemprop="upvoteCount" content="{posts.upvotes}">
			<meta itemprop="downvoteCount" content="{posts.downvotes}">
			<a href="#" class="px-2 mx-1 btn-ghost-sm" component="post/vote-count" data-votes="{posts.votes}" title="[[global:voters]]">{posts.votes}</a>

			{{{ if !downvote:disabled }}}
			<a component="post/downvote" href="#" class="btn-ghost-sm{{{ if posts.downvoted }}} downvoted{{{ end }}}" title="[[topic:downvote-post]]">
				<i class="fa fa-fw fa-chevron-down text-primary"></i>
			</a>
			{{{ end }}}
		</div>
		{{{ end }}}

		<!-- IMPORT partials/topic/post-menu.tpl -->
	</div>
</div>
{{{ if (!./index && widgets.mainpost-footer.length) }}}
<div data-widget-area="mainpost-footer">
	{{{ each widgets.mainpost-footer }}}
	{widgets.mainpost-footer.html}
	{{{ end }}}
</div>
{{{ end }}}