<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>

<div class="cover position-absolute start-0 top-0 w-100" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
	<div class="container">
		{{{ if allowCoverPicture }}}
		{{{ if canEdit }}}
		<div class="controls">
			<span class="upload"><i class="fa fa-fw fa-2x fa-upload"></i></span>
			<span class="resize"><i class="fa fa-fw fa-2x fa-arrows"></i></span>
			<span class="remove"><i class="fa fa-fw fa-2x fa-times"></i></span>
		</div>
		<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		{{{ end }}}
		{{{ end }}}
	</div>
</div>

<div class="d-flex gap-2 w-100 mb-4 mt-2">
	<div class="avatar-wrapper border-4 position-relative align-self-start d-none d-md-block" style="margin-top: -60px;">
		{{{ if picture }}}
		<img src="{picture}" class="avatar avatar-rounded" style="--avatar-size: 142px;" />
		{{{ else }}}
		<div class="avatar avatar-rounded" style="background-color: {icon:bgColor}; --avatar-size: 142px;" title="{username}">{icon:text}</div>
		{{{ end }}}
	</div>
	<div class="d-flex flex-1 flex-column gap-2">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		<div class="d-grid gap-1">
			<h2 class="fullname fw-semibold fs-3">{{{ if fullname }}}{fullname}{{{ else }}}{username}{{{ end }}}</h2>
			<div class="d-flex flex-wrap gap-1 text-sm align-items-center">
				<span class="username fw-bold">{{{ if !banned }}}@{username}{{{ else }}}[[user:banned]]{{{ end }}}</span>
				<div class="d-flex align-items-center gap-1 p-1">
					{{{ if selectedGroup.length }}}
					{{{ each selectedGroup }}}
					{{{ if ./slug }}}
					<!-- IMPORT partials/groups/badge.tpl -->
					{{{ end }}}
					{{{ end }}}
					{{{ end }}}
				</div>
			</div>

			{{{ if isAdminOrGlobalModeratorOrModerator }}}
			{{{ if banned }}}
			<div class="text-xm text-muted">
				{{{ if banned_until }}}
				[[user:info.banned-until, {banned_until_readable}]]
				{{{ else }}}
				[[user:info.banned-permanently]]
				{{{ end }}}
			</div>
			{{{ end }}}
			{{{ end }}}
		</div>
	</div>

	<div class="d-flex gap-1 align-self-start">
		{{{ if loggedIn }}}
		{{{ if !isSelf }}}
		<a component="account/unfollow" href="#" class="btn btn-info{{{ if !isFollowing }}} hide{{{ end }}}">[[user:unfollow]]</a>
		<a component="account/follow" href="#" class="btn btn-primary{{{ if isFollowing }}} hide{{{ end }}}">[[user:follow]]</a>
		{{{ end }}}
		{{{ end }}}

		{{{ if (loggedIn && (!isSelf && (!banned && !config.disableChat))) }}}
		<div class="btn-group">
			<a {{{ if hasPrivateChat }}}component="account/chat"{{{ else }}}component="account/new-chat"{{{ end }}} href="#" class="btn btn-light" role="button">[[user:chat]]</a>
			{{{ if hasPrivateChat}}}
			<button type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown">
				<i class="fa fa-caret-down"></i>
			</button>
			<ul class="dropdown-menu dropdown-menu-end" role="menu">
				<li><a class="dropdown-item" href="#" component="account/new-chat">[[user:new_chat_with, {username}]]</a></li>
			</ul>
			{{{ end }}}
		</div>
		{{{ end }}}
		{{{ if !isSelf }}}
		{{{ if (isAdmin || (canBan || canMute ))}}}
		<!-- IMPORT partials/account/admin-menu.tpl -->
		{{{ end }}}
		{{{ end }}}
	</div>
</div>

