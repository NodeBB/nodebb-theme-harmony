{{{ if !rooms.length }}}
<li class="text-center"><a href="#" class="text-decoration-none text-reset">[[modules:chat.no_active]]</a></li>
{{{ end }}}

{{{ each rooms }}}
<li class="{{{ if ./unread }}}unread{{{ end }}}" data-roomid="{./roomId}">
	{{{ each ./users}}}
	<!-- IF @first -->
	<div class="main-avatar">
		<!-- IMPORT partials/chats/user.tpl -->
	</div>
	<!-- ENDIF @first -->
	{{{ end }}}

	<ul class="members list-unstyled">
		{{{each ./users}}}
		<li>
			<!-- IMPORT partials/chats/user.tpl -->
		</li>
		{{{end}}}
	</ul>

	<div class="notification-chat-content">
		<strong class="room-name">
			{{{ if !./lastUser.uid }}}
			<span>[[modules:chat.no-users-in-room]]</span>
			{{{ else }}}
			{{{ if ./roomName }}}{./roomName}{{{ else }}}{rooms.usernames}{{{ end }}}
			{{{ end }}}
		</strong>
		<span class="teaser-content">
			<strong class="teaser-username">{./teaser.user.username}:</strong>
			{./teaser.content}
		</span>
	</div>
	<div class="teaser-timestamp notification-chat-controls">{./teaser.timeago}</div>
</li>
{{{ end }}}
