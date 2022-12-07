{{{ if !rooms.length }}}
<li class="text-center"><a href="#" class="text-reset">[[modules:chat.no_active]]</a></li>
{{{ end }}}

{{{ each rooms }}}
<li class="{{{ if ./unread }}}unread{{{ end }}} dropdown-item rounded-1 p-2 d-flex gap-2 pointer" data-roomid="{./roomId}">
	{{{ each ./users}}}
	{{{ if @first }}}
	<div class="main-avatar">
		<!-- IMPORT partials/chats/user.tpl -->
	</div>
	{{{ end }}}
	{{{ end }}}

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
