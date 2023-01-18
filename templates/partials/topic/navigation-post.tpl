<div class="d-flex gap-2 mb-2 justify-content-between align-items-center flex-nowrap">
	<div class="icon text-truncate">
		<a href="{{{ if post.user.userslug }}}{config.relative_path}/user/{post.user.userslug}{{{else }}}#{{{ end }}}">
			{buildAvatar(post.user, "24px", true)} {post.user.username}
		</a>
	</div>
	<span class="timeago text-nowrap text-sm" title="{post.timestampISO}"></span>
</div>

<div>{post.content}</div>