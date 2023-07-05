<div class="chats-full d-flex gap-1 h-100 mt-3 mt-md-0 py-md-3">
	<div class="flex-shrink-0 d-flex flex-column h-100" component="chat/nav-wrapper" data-loaded="{{{ if roomId }}}1{{{ else }}}0{{{ end }}}">

		<div class="mb-2">
			<button component="chat/create" class="btn btn-primary btn-sm w-100">[[modules:chat.create-room]]</button>
		</div>

		{{{ if publicRooms.length }}}
		<hr class="my-1">
		<div component="" class="">
			<div class="d-flex gap-1 align-items-center">
				<button class="btn-ghost-sm p-1" data-bs-toggle="collapse" data-bs-target="#public-rooms"
				onclick="$(this).find('i').toggleClass('fa-chevron-right').toggleClass('fa-chevron-down');"><i class="fa fa-fw fa-chevron-down"></i></button>
				<label class="text-sm text-muted">[[modules:chat.public-rooms]]</label>
			</div>
			<div id="public-rooms" component="chat/public" class="collapse show">
				{{{ each publicRooms }}}
				<div component="chat/public/room" class="btn-ghost-sm ff-sans justify-content-start {{{ if ./unread}}}unread{{{ end }}}" data-roomid="{./roomId}"># {./roomName}</div>
				{{{ end }}}
			</div>
		</div>
		{{{ end }}}

		<hr class="my-1">

		{{{ if publicRooms.length }}}
		<div class="d-flex gap-1 align-items-center">
			<button class="btn-ghost-sm p-1" data-bs-toggle="collapse" data-bs-target="#private-rooms"
			onclick="$(this).find('i').toggleClass('fa-chevron-right').toggleClass('fa-chevron-down');"><i class="fa fa-fw fa-chevron-down"></i></button>
			<label class="text-sm text-muted">[[modules:chat.private-rooms]]</label>
		</div>
		{{{ end }}}

		<div id="private-rooms" component="chat/recent" class="chats-list overflow-auto mb-0 pe-1 collapse show" data-nextstart="{nextStart}">
			{{{each rooms}}}
			<!-- IMPORT partials/chats/recent_room.tpl -->
			{{{end}}}
		</div>
	</div>
	<div class="flex-grow-1 ms-md-2 ps-md-2 border-1 border-start-md h-100" component="chat/main-wrapper" style="min-width: 0;">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
	<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>
</div>