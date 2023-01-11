<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="{{{ if rooms.unread }}}unread{{{ end }}} card card-body p-1 mb-1 border-0 pointer">
	<div class="members">
	{{{ each rooms.users}}}
	{{{ if @first }}}
	<div class="main-avatar">
		<a href="{config.relative_path}/user/{rooms.users.userslug}" class="text-decoration-none">{buildAvatar(rooms.users, "24px", true)}</a>
		<span component="chat/title">{{{ if rooms.roomName }}}{rooms.roomName}{{{ else }}}{rooms.usernames}{{{ end }}}</span>
	</div>
	{{{ else }}}
	<a href="{config.relative_path}/user/{rooms.users.userslug}" class="text-decoration-none">{buildAvatar(rooms.users, "24px", true)}</a>
	{{{ end }}}
	{{{ end }}}
	{{{ if !./users.length}}}
	<span class="avatar avatar-rounded text-bg-warning" component="avatar/icon" style="--avatar-size: 24px;">?</span>
	{{{ if !rooms.lastUser.uid }}}
	<span class="text-muted">[[modules:chat.no-users-in-room]]</span>
	{{{ end }}}
	{{{ end }}}
	</div>
</li>