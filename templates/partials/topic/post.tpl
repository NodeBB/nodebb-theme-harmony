<div class="d-flex align-items-start gap-3">
	<div class="icon py-1 bg-body d-none d-sm-block">
		<a class="d-inline-block position-relative text-decoration-none" href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
			{buildAvatar(posts.user, "48px", true, "", "user/picture")}
			<span component="user/status" class="position-absolute translate-middle-y badge border border-white border-2 rounded-circle status {posts.user.status}"><span class="visually-hidden">[[global:{posts.user.status}]]</span></span>
		</a>
	</div>

	<div class="d-flex flex-grow-1 flex-column w-100" style="min-width: 0;">
		<div class="d-flex align-items-center gap-1 flex-wrap w-100 post-header mt-1">
			<div class="icon bg-body d-sm-none">
				<a class="d-inline-block position-relative text-decoration-none" href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
					{buildAvatar(posts.user, "20px", true, "", "user/picture")}
					<span component="user/status" class="position-absolute translate-middle-y badge border border-white border-2 rounded-circle status {posts.user.status}"><span class="visually-hidden">[[global:{posts.user.status}]]</span></span>
				</a>
			</div>

			<span class="text-nowrap">
				<a class="fw-bold" href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.displayname}</a>
			</span>

			{{{ each posts.user.selectedGroups }}}
			{{{ if posts.user.selectedGroups.slug }}}
			<!-- IMPORT partials/groups/badge.tpl -->
			{{{ end }}}
			{{{ end }}}

			<!-- IF posts.user.banned -->
			<span class="badge bg-danger rounded-1">[[user:banned]]</span>
			<!-- ENDIF posts.user.banned -->

			<div class="d-flex gap-1 hidden-xs align-items-center">
				{{{ if posts.toPid }}}
				<span class="text-muted">replied to</span><!-- FIX THIS, DOES NOT l10n PROPERLY -->
				<a component="post/parent" data-topid="{posts.toPid}" href="{config.relative_path}/post/{posts.toPid}"><!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --></a>
				{{{ else }}}
				<span class="text-muted">wrote</span><!-- FIX THIS, DOES NOT l10n PROPERLY -->
				{{{ end }}}

				<a class="permalink text-muted" href="{config.relative_path}/post/{posts.pid}"><span class="timeago" title="{posts.timestampISO}"></span></a>

				<i component="post/edit-indicator" class="fa fa-edit text-muted{{{ if privileges.posts:history }}} pointer{{{ end }}} edit-icon {{{ if !posts.editor.username }}}hidden{{{ end }}}" title="[[global:edited-timestamp, {./editedISO}]]"></i>
				<span data-editor="{posts.editor.userslug}" component="post/editor" class="visually-hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago" title="{posts.editedISO}"></span></span>
			</div>

			<div>
				<span>
					<!-- IF posts.user.custom_profile_info.length -->
					&#124;
					{{{each posts.user.custom_profile_info}}}
					{posts.user.custom_profile_info.content}
					{{{end}}}
					<!-- ENDIF posts.user.custom_profile_info.length -->
				</span>
			</div>
			<div class="d-flex align-items-center gap-1 flex-grow-1 justify-content-end">
				<span class="bookmarked opacity-0 text-primary"><i class="fa fa-bookmark-o"></i></span>
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

	<div class="clearfix">
		{{{ if !hideReplies }}}
		<a component="post/reply-count" data-target-component="post/replies/container" href="#" class="d-flex gap-2 align-items-center mt-2 btn-outline border rounded-1 p-1 threaded-replies user-select-none float-start text-muted text-decoration-none {{{ if !posts.replies.count }}}hidden{{{ end }}}">
			<span component="post/reply-count/avatars" class="avatars d-inline-flex gap-1 align-items-top {{{ if posts.replies.hasMore }}}hasMore{{{ end }}}">
				{{{each posts.replies.users}}}
				<span>{buildAvatar(posts.replies.users, "20px", true, "")}</span>
				{{{end}}}
				{{{ if posts.replies.hasMore}}}
				<span><i class="fa fa-ellipsis"></i></span>
				{{{ end }}}
			</span>

			<span class="ms-2 replies-count fw-semibold" component="post/reply-count/text" data-replies="{posts.replies.count}">{posts.replies.text}</span>
			<span class="ms-2 replies-last hidden-xs fw-semibold">[[topic:last_reply_time]] <span class="timeago" title="{posts.replies.timestampISO}"></span></span>

			<i class="fa fa-fw fa-chevron-down" component="post/replies/open"></i>
			<i class="fa fa-fw fa-chevron-up hidden" component="post/replies/close"></i>
			<i class="fa fa-fw fa-spin fa-spinner hidden" component="post/replies/loading"></i>
		</a>
		{{{ end }}}
	</div>

	<div component="post/replies/container" class="my-2 col-11 border rounded-1 p-3"></div>

	<div component="post/actions" class="d-flex justify-content-end gap-1 post-tools">
		<!-- IMPORT partials/topic/reactions.tpl -->
		<a component="post/reply" href="#" class="btn-ghost-sm user-select-none {{{ if !privileges.topics:reply }}}hidden{{{ end }}}" title="[[topic:reply]]"><i class="fa fa-reply text-primary"></i></a>
		<a component="post/quote" href="#" class="btn-ghost-sm user-select-none {{{ if !privileges.topics:reply }}}hidden{{{ end }}}" title="[[topic:quote]]"><i class="fa fa-quote-right text-primary"></i></a>

		{{{ if !reputation:disabled }}}
		<div class="d-flex votes align-items-stretch">
			<a component="post/upvote" href="#" class="btn-ghost-sm {{{ if posts.upvoted }}}upvoted{{{ end }}}">
				<i class="fa fa-chevron-up text-primary"></i>
			</a>

			<div class="d-inline-block px-3 btn-ghost-sm" component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</div>

			{{{ if !downvote:disabled }}}
			<a component="post/downvote" href="#" class="btn-ghost-sm {{{ if posts.downvoted }}}downvoted{{{ end }}}">
				<i class="fa fa-chevron-down text-primary"></i>
			</a>
			{{{ end }}}
		</div>
		{{{ end }}}

		<!-- IMPORT partials/topic/post-menu.tpl -->
	</div>
</div>