<label class="nav-link nav-btn text-truncate d-flex gap-2 align-items-center" data-bs-toggle="dropdown" id="user_dropdown" role="button" component="header/avatar">
	{buildAvatar(user, "20px", true)}
	<span id="user-header-name" class="nav-text small visible-open fw-semibold">{user.username}</span>
</label>
<ul id="user-control-list" component="header/usercontrol" class="overscroll-behavior-contain user-dropdown dropdown-menu shadow p-1 text-sm ff-base" aria-labelledby="user_dropdown">
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="header/profilelink" href="{relative_path}/user/{user.userslug}">
			<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status {user.status}"><span class="visually-hidden">[[global:{user.status}]]</span></span>
			<span class="fw-semibold" component="header/username">{user.username}</span>
		</a>
	</li>
	<li role="presentation" class="dropdown-divider"></li>
	<li><h6 class="dropdown-header text-xs">[[global:status]]</h6></li>
	<li>
		<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-2 {{{ if user.online }}}selected{{{ end }}}" data-status="online">
			<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status online"><span class="visually-hidden">[[global:online]]</span></span>
			<span class="flex-grow-1">[[global:online]]</span>
			<i class="fa-solid fa-check text-muted flex-shrink-0"></i>
		</a>
	</li>
	<li>
		<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-2 {{{ if user.away }}}selected{{{ end }}}" data-status="away">
			<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status away"><span class="visually-hidden">[[global:away]]</span></span>
			<span class="flex-grow-1">[[global:away]]</span>
			<i class="fa-solid fa-check text-muted flex-shrink-0"></i>
		</a>
	</li>
	<li>
		<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-2 {{{ if user.dnd }}}selected{{{ end }}}" data-status="dnd">
			<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status dnd"><span class="visually-hidden">[[global:dnd]]</span></span>
			<span class="flex-grow-1">[[global:dnd]]</span>
			<i class="fa-solid fa-check text-muted flex-shrink-0"></i>
		</a>
	</li>
	<li>
		<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-2 {{{ if user.offline }}}selected{{{ end }}}" data-status="offline">
			<span component="user/status" class="flex-shrink-0 border border-white border-2 rounded-circle status offline"><span class="visually-hidden">[[global:invisible]]</span></span>
			<span class="flex-grow-1">[[global:invisible]]</span>
			<i class="fa-solid fa-check text-muted flex-shrink-0"></i>
		</a>
	</li>
	<li role="presentation" class="dropdown-divider"></li>
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="{relative_path}/user/{user.userslug}/bookmarks">
			<i class="fa fa-fw fa-bookmark text-muted"></i> <span>[[user:bookmarks]]</span>
		</a>
	</li>
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="header/profilelink/edit" href="{relative_path}/user/{user.userslug}/edit">
			<i class="fa fa-fw fa-edit text-muted"></i> <span>[[user:edit-profile]]</span>
		</a>
	</li>
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="header/profilelink/settings" href="{relative_path}/user/{user.userslug}/settings">
			<i class="fa fa-fw fa-gear text-muted"></i> <span>[[user:settings]]</span>
		</a>
	</li>
	{{{ if showModMenu }}}
	<li role="presentation" class="dropdown-divider"></li>
	<li><h6 class="dropdown-header text-xs">[[pages:moderator-tools]]</h6></li>
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="{relative_path}/flags">
			<i class="fa fa-fw fa-flag text-muted"></i> <span>[[pages:flagged-content]]</span>
		</a>
	</li>
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="{relative_path}/post-queue">
			<i class="fa fa-fw fa-list-alt text-muted"></i> <span>[[pages:post-queue]]</span>
		</a>
	</li>
	{{{ if registrationQueueEnabled }}}
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="{relative_path}/registration-queue">
			<i class="fa fa-fw fa-list-alt text-muted"></i> <span>[[pages:registration-queue]]</span>
		</a>
	</li>
	{{{ end }}}
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="{relative_path}/ip-blacklist">
			<i class="fa fa-fw fa-ban text-muted"></i> <span>[[pages:ip-blacklist]]</span>
		</a>
	</li>
	{{{ else }}}
	{{{ if postQueueEnabled }}}
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="{relative_path}/post-queue">
			<i class="fa fa-fw fa-list-alt text-muted"></i> <span>[[pages:post-queue]]</span>
		</a>
	</li>
	{{{ end }}}
	{{{ end }}}

	<li role="presentation" class="dropdown-divider"></li>
	<li component="user/logout">
		<form method="post" action="{relative_path}/logout">
			<input type="hidden" name="_csrf" value="{config.csrf_token}">
			<input type="hidden" name="noscript" value="true">
			<button type="submit" class="dropdown-item rounded-1 d-flex align-items-center gap-2">
				<i class="fa fa-fw fa-sign-out text-muted"></i><span>[[global:logout]]</span>
			</button>
		</form>
	</li>
</ul>
