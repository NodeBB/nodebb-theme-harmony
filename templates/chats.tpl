<div class="chats-full d-flex gap-1 vh-100 py-3">
	<div class="d-flex flex-column h-100" component="chat/nav-wrapper" data-loaded="{{{ if roomId }}}1{{{ else }}}0{{{ end }}}">
		<div class="chat-search dropdown mb-2">
			<input class="form-control" type="text" component="chat/search" placeholder="[[users:search-user-for-chat]]" data-bs-toggle="dropdown" />
			<ul component="chat/search/list" class="dropdown-menu">
				<li><a href="#" class="dropdown-item">[[admin/menu:search.start-typing]]</a></li>
			</ul>
		</div>
		<ul component="chat/recent" class="chats-list list-unstyled overflow-auto mb-0 pe-2" data-nextstart="{nextStart}">
			{{{each rooms}}}
			<!-- IMPORT partials/chats/recent_room.tpl -->
			{{{end}}}
		</ul>
	</div>
	<div class="flex-1 ms-md-2 ps-md-2 border-1 border-start-md" component="chat/main-wrapper">
		<!-- IMPORT partials/chats/message-window.tpl -->
	</div>
	<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>
</div>