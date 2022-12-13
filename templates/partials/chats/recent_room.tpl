<li component="chat/recent/room" data-roomid="{rooms.roomId}" class="{{{ if rooms.unread }}}unread{{{ end }}} card card-body p-1 mb-1 border-0 pointer"
	style="">
	<ul class="members list-unstyled">
	{{{ each rooms.users}}}
	{{{ if @first }}}
	<div class="main-avatar">
		<a href="{config.relative_path}/user/{rooms.users.userslug}">{buildAvatar(rooms.users, "24px", false, "rounded")}</a>
		<span component="chat/title">{{{ if rooms.roomName }}}{rooms.roomName}{{{ else }}}{rooms.usernames}{{{ end }}}</span>
	</div>
	{{{ else }}}
		<a href="{config.relative_path}/user/{rooms.users.userslug}">{buildAvatar(rooms.users, "24px", true, "rounded")}</a>
	{{{ end }}}
	{{{ end }}}
	</ul>

	<div class="notification-chat-content">
		<strong class="room-name">
			<!-- IF !rooms.lastUser.uid -->
			<span>[[modules:chat.no-users-in-room]]</span>
			<!-- ENDIF !rooms.lastUser.uid -->
		</strong>
	</div>
</li>