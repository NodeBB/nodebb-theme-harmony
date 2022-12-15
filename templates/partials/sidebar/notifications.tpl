<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link nav-btn d-flex gap-2 justify-content-between align-items-center position-relative" title="[[global:header.notifications]]">
	<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
		<span class="position-relative">
			<i component="notifications/icon" class="fa fa-fw {{{ if unreadCount.notification}}}fa-bell{{{ else }}}fa-bell-o{{{ end }}} unread-count" data-content="{unreadCount.notification}"></i>
			<span component="notifications/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary {{{ if !unreadCount.notification }}}hidden{{{ end }}}">{unreadCount.notification}</span>
		</span>
		<span class="nav-text small visible-open fw-semibold">[[global:header.notifications]]</span>
	</span>
	<span component="notifications/count" class="visible-open badge rounded-1 bg-primary {{{ if !unreadCount.notification }}}hidden{{{ end }}}">{unreadCount.notification}</span>
</a>
<ul class="notifications-dropdown dropdown-menu p-2 shadow">
	<li>
		<ul component="notifications/list" class="notification-list list-unstyled p-2">
			<li class="mb-2 placeholder-wave">
				<div class="text-sm placeholder col-11">&nbsp;</div>
				<div class="text-sm placeholder col-5">&nbsp;</div><br />
				<div class="text-xs placeholder col-3">&nbsp;</div>
			</li>
		</ul>
	</li>
	<li class="dropdown-divider"></li>
	<li class="notif-dropdown-link">
		<div class="d-flex justify-content-center gap-1 flex-nowrap">
			<a role="button" href="#" class="btn btn-sm btn-light mark-all-read flex-fill text-nowrap ff-secondary"><i class="fa fa-check-double"></i> [[notifications:mark_all_read]]</a>
			<a class="btn btn-sm btn-primary flex-fill text-nowrap ff-secondary" href="{relative_path}/notifications"><i class="fa fa-list"></i> [[notifications:see_all]]</a>
		</div>
	</li>
</ul>
