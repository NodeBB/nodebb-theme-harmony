<div class="d-flex gap-2 mb-2 align-items-center flex-nowrap text-sm">
	<div>
		{buildAvatar(post.user, "24px", true)}
	</div>
	<div class="text-truncate">
		<a href="{{{ if post.user.userslug }}}{config.relative_path}/user/{post.user.userslug}{{{else }}}#{{{ end }}}">{post.user.displayname}</a>
	</div>
	<span class="timeago text-nowrap text-muted" title="{post.timestampISO}"></span>
</div>

<div class="text-sm">{post.content}</div>