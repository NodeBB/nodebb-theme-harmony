{{{ if !rooms.length }}}
<li class="text-center"><a href="#" class="text-reset">[[modules:chat.no_active]]</a></li>
{{{ end }}}

{{{ each rooms }}}
<li class="{{{ if ./unread }}}unread{{{ end }}} dropdown-item rounded-1 p-2 d-flex gap-2 pointer" data-roomid="{./roomId}">
	<div class="main-avatar">
	{{{ if ./users.length }}}
		{{{ if ./groupChat}}}
		<div class="position-relative" style="width:32px; height:32px;">
			<a class="position-absolute top-0" style="left: 8px;" href="{config.relative_path}/user/{./users.1.userslug}" class="text-decoration-none">{buildAvatar(./users.1, "24px", true)}</a>
			<a class="position-absolute start-0" style="top: 8px;" href="{config.relative_path}/user/{./users.0.userslug}" class="text-decoration-none">{buildAvatar(./users.0, "24px", true)}</a>
		</div>
		{{{ else }}}
		<a href="{config.relative_path}/user/{./users.0.userslug}" class="text-decoration-none">{buildAvatar(./users.0, "32px", true)}</a>
		{{{ end }}}
	{{{ else }}}
	<span class="avatar avatar-rounded text-bg-warning" component="avatar/icon" style="--avatar-size: 32px;">?</span>
	{{{ end }}}
	</div>

	<div class="notification-chat-content d-flex flex-grow-1 flex-column w-100">
		<div class="room-name fw-semibold text-xs">
			{{{ if !./lastUser.uid }}}
			<span>[[modules:chat.no-users-in-room]]</span>
			{{{ else }}}
			{{{ if ./roomName }}}{./roomName}{{{ else }}}{./usernames}{{{ end }}}
			{{{ end }}}
		</div>
		<div class="teaser-content text-sm line-clamp-3">
			<a href="#" class="text-decoration-none">{buildAvatar(./teaser.user, "14px", true)}</a>
			<strong class="text-xs fw-semibold teaser-username">{./teaser.user.username}:</strong>
			{./teaser.content}
		</div>
		<div class="teaser-timestamp notification-chat-controls text-muted text-xs">{./teaser.timeagoLong}</div>
	</div>
</li>
{{{ end }}}
