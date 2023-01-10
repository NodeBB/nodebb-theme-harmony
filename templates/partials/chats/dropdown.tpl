{{{ if !rooms.length }}}
<li class="text-center"><a href="#" class="text-reset">[[modules:chat.no_active]]</a></li>
{{{ end }}}

{{{ each rooms }}}
<li class="{{{ if ./unread }}}unread{{{ end }}} dropdown-item rounded-1 p-2 d-flex gap-2 pointer" data-roomid="{./roomId}">
	<div class="main-avatar">
	{{{ each ./users}}}
	{{{ if @first }}}
		<!-- IMPORT partials/chats/user.tpl -->
	{{{ end }}}
	{{{ end }}}
	{{{ if !./users.length}}}
	<span class="avatar avatar-rounded text-bg-warning" component="avatar/icon" style="--avatar-size: 32px;">?</span>
	{{{ end }}}
	</div>

	<div class="notification-chat-content d-flex flex-grow-1 flex-column w-100">
		<div class="room-name fw-semibold text-xs">
			{{{ if !./lastUser.uid }}}
			<span>[[modules:chat.no-users-in-room]]</span>
			{{{ else }}}
			{./lastUser.username}
			{{{ end }}}
		</div>
		<div class="teaser-content text-sm line-clamp-3">
			{./teaser.content}
		</div>
		<div class="teaser-timestamp notification-chat-controls text-muted text-xs">{./teaser.timeagoLong}</div>
	</div>
</li>
{{{ end }}}
