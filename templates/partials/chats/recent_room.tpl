<li component="chat/recent/room" data-roomid="{./roomId}" data-full="1" class="rounded-1 {{{ if ./unread }}}unread{{{ end }}}">
	<div class="d-flex gap-1 justify-content-between">
		<div class="position-relative d-flex flex-grow-1 gap-2 p-2 justify-content-start align-items-start">
			<a class="stretched-link" href="{config.relative_path}/me/chats/{./roomId}"></a>
			<div class="main-avatar">
				{{{ if ./users.length }}}
				{{{ if ./groupChat}}}
				<div class="position-relative" style="width:32px; height:32px;">
					<span class="text-decoration-none position-absolute top-0" style="left: 8px;" href="{config.relative_path}/user/{./users.1.userslug}">{buildAvatar(./users.1, "24px", true)}</span>
					<span class="text-decoration-none position-absolute start-0" style="top: 8px;" href="{config.relative_path}/user/{./users.0.userslug}" >{buildAvatar(./users.0, "24px", true)}</span>
				</div>
				{{{ else }}}
				<span href="{config.relative_path}/user/{./users.0.userslug}" class="text-decoration-none">{buildAvatar(./users.0, "32px", true)}</span>
				{{{ end }}}
				{{{ else }}}
				<span class="avatar avatar-rounded text-bg-warning" component="avatar/icon" style="--avatar-size: 32px;">?</span>
				{{{ end }}}
			</div>

			<div class="d-flex flex-grow-1 flex-column w-100">
				<div class="room-name fw-semibold text-xs">
					{{{ if !./lastUser.uid }}}
					<span>[[modules:chat.no-users-in-room]]</span>
					{{{ else }}}
					{{{ if ./roomName }}}{./roomName}{{{ else }}}{./usernames}{{{ end }}}
					{{{ end }}}
				</div>
				{{{ if ./teaser }}}
				<div class="teaser-content text-sm line-clamp-3 text-break">
					<span href="#" class="text-decoration-none">{buildAvatar(./teaser.user, "14px", true)}</span>
					<strong class="text-xs fw-semibold teaser-username">{./teaser.user.username}:</strong>
					{./teaser.content}
				</div>
				<div class="teaser-timestamp text-muted text-xs">{./teaser.timeagoLong}</div>
				{{{ end }}}
			</div>
		</div>
		<div>
			<button class="mark-read btn-ghost-sm" style="width: 1.5rem; height: 1.5rem;">
				<i class="unread fa fa-2xs fa-circle text-primary {{{ if !./unread }}}hidden{{{ end }}}"></i>
				<i class="read fa fa-2xs fa-circle-o text-secondary {{{ if ./unread }}}hidden{{{ end }}}"></i>
			</button>
		</div>
	</div>
</li>
<hr class="text-muted opacity-25 my-1"/>
