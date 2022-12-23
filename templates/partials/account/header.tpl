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
			<span class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></span>
			<span class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
			<span class="remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
		</div>
		<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		{{{ end }}}
		{{{ end }}}
	</div>
</div>

<div class="d-flex gap-2 w-100 mb-4">
	<div class="avatar-wrapper border-4 position-relative align-self-start d-none d-md-block" style="margin-top: -3.5rem;">
		{{{ if picture }}}
		<img src="{picture}" class="avatar avatar-rounded" style="--avatar-size: 128px;" />
		{{{ else }}}
		<div class="avatar avatar-rounded" style="background-color: {icon:bgColor}; --avatar-size: 128px;" title="{username}">{icon:text}</div>
		{{{ end }}}
	</div>
	<div class="d-flex flex-1 flex-column gap-2">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		<div class="d-grid gap-1">
			<h2 class="fullname fw-semibold fs-3">{{{ if fullname }}}{fullname}{{{ else }}}{username}{{{ end }}}</h2>
			<div class="d-flex flex-wrap gap-1 text-sm">
				<span class="username fw-bold">{{{ if !banned }}}@{username}{{{ else }}}[[user:banned]]{{{ end }}}</span>
				<div class="d-flex align-items-center gap-1 p-1">
					{{{ if selectedGroup.length }}}
					{{{ each selectedGroup }}}
					<!-- IF selectedGroup.slug -->
					<!-- IMPORT partials/groups/badge.tpl -->
					<!-- ENDIF selectedGroup.slug -->
					{{{end}}}
					{{{ end }}}
				</div>
			</div>

			{{{ if isAdminOrGlobalModeratorOrModerator }}}
			{{{ if banned }}}
			<div class="">
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

		<!-- IMPORT partials/account/menu.tpl -->
	</div>
</div>

