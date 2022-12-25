<label class="nav-link nav-btn text-truncate d-flex gap-2 align-items-center" data-bs-toggle="dropdown" id="user_dropdown" role="button">
	{buildAvatar(user, "20px", true)}
	<span id="user-header-name" class="nav-text small visible-open fw-semibold">{user.username}</span>
</label>
<ul id="user-control-list" component="header/usercontrol" class="dropdown-menu shadow p-1 text-sm" aria-labelledby="user_dropdown">
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-1" component="header/profilelink" href="{relative_path}/user/{user.userslug}">
			<div class="text-center"><span component="user/status" class="badge border border-white border-2 rounded-circle status {user.status}"><span class="visually-hidden">[[global:{user.status}]]</span></span></div>
			<span class="fw-semibold" component="header/username">{user.username}</span>
		</a>
	</li>
	<li role="presentation" class="dropdown-divider"></li>
	<li><h6 class="dropdown-header text-xs">[[global:status]]</h6></li>
	<li>
		<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-1" data-status="online">
			<div class="text-center"><span component="user/status" class="badge border border-white border-2 rounded-circle status online"><span class="visually-hidden">[[global:online]]</span></span></div>
			<span{{{ if user.online }}} class="fw-semibold"{{{ end }}}> [[global:online]]</span>
		</a>
	</li>
	<li>
		<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-1" data-status="away">
			<div class="text-center"><span component="user/status" class="badge border border-white border-2 rounded-circle status away"><span class="visually-hidden">[[global:away]]</span></span></div>
			<span{{{ if user.away}}} class="fw-semibold"{{{ end }}}> [[global:away]]</span>
		</a>
	</li>
	<li>
		<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-1" data-status="dnd">
			<div class="text-center"><span component="user/status" class="badge border border-white border-2 rounded-circle status dnd"><span class="visually-hidden">[[global:dnd]]</span></span></div>
			<span{{{ if user.dnd}}} class="fw-semibold"{{{ end }}}> [[global:dnd]]</span>
		</a>
	</li>
	<li>
		<a href="#" class="dropdown-item rounded-1 user-status d-flex align-items-center gap-1" data-status="offline">
			<div class="text-center"><span component="user/status" class="badge border border-white border-2 rounded-circle status offline"><span class="visually-hidden">[[global:invisible]]</span></span></div>
			<span{{{ if user.offline}}} class="fw-semibold"{{{ end }}}> [[global:invisible]]</span>
		</a>
	</li>
	<li role="presentation" class="dropdown-divider"></li>
	<li>
		<a class="dropdown-item rounded-1" component="header/profilelink/edit" href="{relative_path}/user/{user.userslug}/edit">
			<i class="fa fa-fw fa-edit"></i> <span>[[user:edit-profile]]</span>
		</a>
	</li>
	<li>
		<a class="dropdown-item rounded-1" component="header/profilelink/settings" href="{relative_path}/user/{user.userslug}/settings">
			<i class="fa fa-fw fa-gear"></i> <span>[[user:settings]]</span>
		</a>
	</li>
	{{{ if showModMenu }}}
	<li role="presentation" class="dropdown-divider"></li>
	<li><h6 class="dropdown-header text-xs">[[pages:moderator-tools]]</h6></li>
	<li>
		<a class="dropdown-item rounded-1" href="{relative_path}/flags">
			<i class="fa fa-fw fa-flag"></i> <span>[[pages:flagged-content]]</span>
		</a>
	</li>
	<li>
		<a class="dropdown-item rounded-1" href="{relative_path}/post-queue">
			<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
		</a>
	</li>
	<li>
		<a class="dropdown-item rounded-1" href="{relative_path}/ip-blacklist">
			<i class="fa fa-fw fa-ban"></i> <span>[[pages:ip-blacklist]]</span>
		</a>
	</li>
	{{{ else }}}
	{{{ if postQueueEnabled }}}
	<li>
		<a class="dropdown-item rounded-1" href="{relative_path}/post-queue">
			<i class="fa fa-fw fa-list-alt"></i> <span>[[pages:post-queue]]</span>
		</a>
	</li>
	{{{ end }}}
	{{{ end }}}

	<li role="presentation" class="dropdown-divider"></li>
	<li component="user/logout">
		<form method="post" action="{relative_path}/logout">
			<input type="hidden" name="_csrf" value="{config.csrf_token}">
			<input type="hidden" name="noscript" value="true">
			<button type="submit" class="dropdown-item rounded-1">
				<i class="fa fa-fw fa-sign-out"></i><span> [[global:logout]]</span>
			</button>
		</form>
	</li>
</ul>
