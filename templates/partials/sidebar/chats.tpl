<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link d-flex gap-2 justify-content-between align-items-center position-relative" component="chat/dropdown" aria-haspopup="true" aria-expanded="false" aria-label="[[global:header.chats]]">
	<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
		<span class="position-relative">
			<i component="chat/icon" class="fa fa-fw {{{ if unreadCount.chat}}}fa-comment{{{ else }}}fa-comment-o{{{ end }}} unread-count" data-content="{unreadCount.chat}"></i>
			<span component="chat/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !unreadCount.chat }}}hidden{{{ end }}}">{unreadCount.chat}</span>
		</span>
		<span class="nav-text small visible-open fw-semibold">[[global:header.chats]]</span>
	</span>
	<span component="chat/count" class="visible-open badge rounded-1 bg-primary {{{ if !unreadCount.chat }}}hidden{{{ end }}}">{unreadCount.chat}</span>
</a>
<ul class="chats-dropdown dropdown-menu p-1 shadow" role="menu">
	<li>
		<div component="chat/list" class="list-container chats-list overscroll-behavior-contain p-0 pe-1 ff-base ghost-scrollbar">
			<div class="rounded-1">
				<div class="d-flex gap-1 justify-content-between">
					<div class="dropdown-item p-2 d-flex gap-2 placeholder-wave">
						<div class="main-avatar">
							<div class="placeholder" style="width: 32px; height: 32px;"></div>
						</div>
						<div class="d-flex flex-grow-1 flex-column w-100">
							<div class="text-xs"><div class="placeholder col-3"></div></div>
							<div class="text-sm"><div class="placeholder col-11"></div></div>
							<div class="text-xs"><div class="placeholder col-4"></div></div>
						</div>
					</div>
					<div>
						<button class="mark-read btn-ghost-sm" style="width: 1.5rem; height: 1.5rem;">
							<i class="unread fa fa-2xs fa-circle text-primary"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</li>
	<li class="dropdown-divider"></li>
	<li>
		<div class="d-flex justify-content-center gap-1 flex-wrap">
			<a component="chats/mark-all-read" role="button" href="#" class="btn btn-sm btn-light mark-all-read flex-fill text-nowrap text-truncate ff-secondary"><i class="fa fa-check-double"></i> [[modules:chat.mark-all-read]]</a>
			<!-- on md and up see all chats button goes to last room -->
			<a class="d-none d-md-inline btn btn-sm btn-primary flex-fill text-nowrap text-truncate ff-secondary" href="{relative_path}/user/{user.userslug}/chats{{{ if user.lastRoomId }}}/{user.lastRoomId}{{{ end }}}"><i class="fa fa-list"></i> [[modules:chat.see-all]]</a>
			<!-- on xs&sm the see all chats button goes to the list of chats -->
			<a class="d-inline d-md-none btn btn-sm btn-primary flex-fill text-nowrap text-truncate ff-secondary" href="{relative_path}/user/{user.userslug}/chats"><i class="fa fa-list"></i> [[modules:chat.see-all]]</a>
		</div>
	</li>
</ul>
