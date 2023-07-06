<div class="chats-full d-flex gap-1 h-100 mt-3 mt-md-0 py-md-3">
	<div component="chat/nav-wrapper" class="flex-shrink-0 d-flex flex-column h-100 gap-1" data-loaded="{{{ if roomId }}}1{{{ else }}}0{{{ end }}}">

		<div>
			<button component="chat/create" class="btn btn-primary btn-sm w-100">[[modules:chat.create-room]]</button>
		</div>

		{{{ if publicRooms.length }}}
		<hr class="my-1">

		<div component="" class="">
			<div class="d-flex gap-1 align-items-center justify-content-between justify-content-lg-start">
				<button class="btn-ghost-sm p-1 order-1 order-lg-0" data-bs-toggle="collapse" data-bs-target="#public-rooms"
				onclick="$(this).find('i').toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');"><i class="fa fa-fw fa-chevron-up"></i></button>
				<label class="text-sm text-muted lh-1">[[modules:chat.public-rooms]]</label>
			</div>
			<div id="public-rooms" component="chat/public" class="collapse show">
				{{{ each publicRooms }}}
				<div component="chat/public/room" class="btn-ghost-sm ff-sans justify-content-between {{{ if ./unread}}}unread{{{ end }}}" data-roomid="{./roomId}"><div># {./roomName}</div><div component="chat/public/room/unread/count" data-count="{./unreadCount}" class="badge border text-primary {{{ if !./unreadCount }}}hidden{{{ end }}}">{./unreadCountText}</div></div>
				{{{ end }}}
			</div>
		</div>
		{{{ end }}}

		<hr class="my-1">

		{{{ if publicRooms.length }}}
		<div class="d-flex gap-1 align-items-center justify-content-between justify-content-lg-start">
			<button class="btn-ghost-sm p-1 order-1 order-lg-0" data-bs-toggle="collapse" data-bs-target="#private-rooms"
			onclick="$(this).find('i').toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');"><i class="fa fa-fw fa-chevron-up"></i></button>
			<label class="text-sm text-muted lh-1">[[modules:chat.private-rooms]]</label>
		</div>
		{{{ end }}}

		<div id="private-rooms" component="chat/recent" class="chats-list overflow-auto mb-0 pe-1 collapse show" data-nextstart="{nextStart}">
			{{{each rooms}}}
			<!-- IMPORT partials/chats/recent_room.tpl -->
			{{{end}}}
		</div>
	</div>
	<div component="chat/main-wrapper" class="flex-grow-1 ms-md-2 ps-md-2 border-1 border-start-md h-100" style="min-width: 0;">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
	<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>
</div>