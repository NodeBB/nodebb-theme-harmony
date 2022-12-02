{{{ if canChat }}}
<li class="nav-item mx-2 chats dropstart">
	<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link nav-btn position-relative" title="[[global:header.chats]]" component="chat/dropdown">
		<span class="d-inline-flex justify-content-between w-100">
			<span class="text-nowrap truncate-open">
				<span class="position-relative">
					<i component="chat/icon" class="fa fa-fw {{{ if unreadCount.chat}}}fa-comment{{{ else }}}fa-comment-o{{{ end }}} unread-count" data-content="{unreadCount.chat}"></i>
					<span component="chat/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !unreadCount.chat }}}hidden{{{ end }}}">{unreadCount.chat}</span>
				</span>
				<span class="nav-text visible-open px-2 fw-semibold">[[global:header.chats]]</span>
			</span>
			<span component="chat/count" class="visible-open badge rounded-1 bg-primary {{{ if !unreadCount.chat }}}hidden{{{ end }}}">{unreadCount.chat}</span>
		</span>
	</a>
	<ul class="chats-dropdown dropdown-menu p-2 shadow">
		<li>
			<ul component="chat/list" class="chat-list chats-list list-unstyled p-2">
				<li class="loading-text text-center">
					<a href="#" class="text-reset"><i class="fa fa-refresh fa-spin"></i> [[global:chats.loading]]</a>
				</li>
			</ul>
		</li>
		<li class="dropdown-divider"></li>
		<li class="notif-dropdown-link">
			<div class="d-flex justify-content-center gap-1 flex-nowrap">
				<a component="chats/mark-all-read" role="button" href="#" class="btn btn-light mark-all-read text-nowrap"><i class="fa fa-check-double"></i> [[modules:chat.mark_all_read]]</a>
				<a class="btn btn-primary text-nowrap" href="{relative_path}/user/{user.userslug}/chats"><i class="fa fa-list"></i> [[modules:chat.see_all]]</a>
			</div>
		</li>
	</ul>
</li>
{{{ end }}}