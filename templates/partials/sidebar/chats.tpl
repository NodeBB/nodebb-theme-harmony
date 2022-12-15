<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link nav-btn d-flex gap-2 justify-content-between align-items-center position-relative" title="[[global:header.chats]]" component="chat/dropdown">
	<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
		<span class="position-relative">
			<i component="chat/icon" class="fa fa-fw {{{ if unreadCount.chat}}}fa-comment{{{ else }}}fa-comment-o{{{ end }}} unread-count" data-content="{unreadCount.chat}"></i>
			<span component="chat/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !unreadCount.chat }}}hidden{{{ end }}}">{unreadCount.chat}</span>
		</span>
		<span class="nav-text small visible-open fw-semibold">[[global:header.chats]]</span>
	</span>
	<span component="chat/count" class="visible-open badge rounded-1 bg-primary {{{ if !unreadCount.chat }}}hidden{{{ end }}}">{unreadCount.chat}</span>
</a>
<ul class="chats-dropdown dropdown-menu p-1 shadow">
	<li>
		<ul component="chat/list" class="chat-list chats-list list-unstyled p-2">
			<li class="dropdown-item rounded-1 p-2 d-flex gap-2 placeholder-wave">
				<div class="main-avatar">
					<div class="placeholder" style="width: 32px; height: 32px;"></div>
				</div>
				<div class="d-flex flex-grow-1 flex-column w-100">
					<div class="text-xs placeholder col-3">&nbsp;</div>
					<div class="text-sm placeholder col-11">&nbsp;</div>
					<div class="text-xs placeholder col-4">&nbsp;</div>
				</div>
			</li>
			<li class="dropdown-item rounded-1 p-2 d-flex gap-2 placeholder-wave">
				<div class="main-avatar">
					<div class="placeholder" style="width: 32px; height: 32px;"></div>
				</div>
				<div class="d-flex flex-grow-1 flex-column w-100">
					<div class="text-xs placeholder col-3">&nbsp;</div>
					<div class="text-sm placeholder col-11">&nbsp;</div>
					<div class="text-xs placeholder col-4">&nbsp;</div>
				</div>
			</li>
			<li class="dropdown-item rounded-1 p-2 d-flex gap-2 placeholder-wave">
				<div class="main-avatar">
					<div class="placeholder" style="width: 32px; height: 32px;"></div>
				</div>
				<div class="d-flex flex-grow-1 flex-column w-100">
					<div class="text-xs placeholder col-3">&nbsp;</div>
					<div class="text-sm placeholder col-11">&nbsp;</div>
					<div class="text-xs placeholder col-4">&nbsp;</div>
				</div>
			</li>
		</ul>
	</li>
	<li class="dropdown-divider"></li>
	<li class="notif-dropdown-link">
		<div class="d-flex justify-content-center gap-1 flex-nowrap">
			<a component="chats/mark-all-read" role="button" href="#" class="btn btn-sm btn-light mark-all-read flex-fill text-nowrap ff-secondary"><i class="fa fa-check-double"></i> [[modules:chat.mark_all_read]]</a>
			<a class="btn btn-sm btn-primary flex-fill text-nowrap ff-secondary" href="{relative_path}/user/{user.userslug}/chats"><i class="fa fa-list"></i> [[modules:chat.see_all]]</a>
		</div>
	</li>
</ul>
