<!-- THIS FILE IS STILL PERSONA -->

<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>

<div class="cover position-absolute start-0 top-0 w-100" component="account/cover" style="background-image: url({cover:url}); background-position: {cover:position};">
	<div class="container">
		<!-- IF allowCoverPicture -->
		<!-- IF canEdit -->
		<div class="controls">
			<span class="upload"><i class="fa fa-fw fa-4x fa-upload"></i></span>
			<span class="resize"><i class="fa fa-fw fa-4x fa-arrows"></i></span>
			<span class="remove"><i class="fa fa-fw fa-4x fa-times"></i></span>
		</div>
		<div class="save">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
		<div class="indicator">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
		<!-- ENDIF canEdit -->
		<!-- ENDIF allowCoverPicture -->
	</div>
</div>

<div class="d-flex gap-2 w-100">
	<div class="avatar-wrapper border-4 position-relative align-self-start" style="margin-top: -3.5rem;">
		<!-- IF picture -->
		<img src="{picture}" class="avatar avatar-rounded" style="--avatar-size: 128px;" />
		<!-- ELSE -->
		<div class="avatar avatar-rounded" style="background-color: {icon:bgColor}; --avatar-size: 128px;" title="{username}">{icon:text}</div>
		<!-- ENDIF picture -->
	</div>
	<div class="d-flex flex-1 flex-column gap-2">
		<!-- IMPORT partials/breadcrumbs.tpl -->
		<div class="d-grid gap-1 {{{ if !template.account/profile }}} hidden {{{ end }}}">
			<h2 class="fullname fw-semibold fs-3">{{{ if fullname }}}{fullname}{{{ else }}}{username}{{{ end }}}</h2>
			<div class="d-flex flex-wrap gap-1 text-sm">
				<span class="username fw-bold">{{{ if !banned }}}@{username}{{{ else }}}[[user:banned]]{{{ end }}}</span>
				<div class="d-flex align-items-center gap-1 p-1">
					{{{ if selectedGroup.length }}}
					<div class="text-center">
						{{{ each selectedGroup }}}
						<!-- IF selectedGroup.slug -->
						<!-- IMPORT partials/groups/badge.tpl -->
						<!-- ENDIF selectedGroup.slug -->
						{{{end}}}
					</div>
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
		{{{ if aboutme }}}
		<div component="aboutme" class="text-sm {{{ if !template.account/profile }}} hidden {{{ end }}}">
		{aboutmeParsed}
		</div>
		{{{ end }}}
		<div class="account-stats d-flex gap-1 {{{ if !template.account/profile }}} hidden{{{ end }}}">
			{{{ if !reputation:disabled }}}
			<div class="stat">
				<div class="align-items-center card card-header px-0 border-0 rounded-1">
					<span class="human-readable-number fs-5 fw-semibold ff-secondary" title="{reputation}">{reputation}</span>
					<span class="stat-label text-xs">[[global:reputation]]</span>
				</div>
			</div>
			{{{ end }}}
			<div class="stat">
				<div class="align-items-center card card-header px-0 border-0 rounded-1">
					<span class="human-readable-number fs-5 fw-semibold ff-secondary" title="{profileviews}">{profileviews}</span>
					<span class="stat-label text-xs">[[user:profile_views]]</span>
				</div>
			</div>

			<div class="stat">
				<div class="align-items-center card card-header px-0 border-0 rounded-1">
					<div><a href="{config.relative_path}/user/{userslug}/posts" class="human-readable-number fs-5 fw-semibold ff-secondary" title="{counts.posts}">{counts.posts}</a></div>
					<span class="stat-label text-xs">[[global:posts]]</span>
				</div>
			</div>

			<div class="stat">
				<div class="align-items-center card card-header px-0 border-0 rounded-1">
					<div><a href="{config.relative_path}/user/{userslug}/followers" class="human-readable-number fs-5 fw-semibold ff-secondary" title="{counts.followers}">{counts.followers}</a></div>
					<span class="stat-label text-xs">[[user:followers]]</span>
				</div>
			</div>

			<div class="stat">
				<div class="align-items-center card card-header px-0 border-0 rounded-1">
					<div><a href="{config.relative_path}/user/{userslug}/following" class="human-readable-number fs-5 fw-semibold ff-secondary" title="{counts.following}">{counts.following}</a></div>
					<span class="stat-label text-xs">[[user:following]]</span>
				</div>
			</div>
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

<div class="profile border rounded p-3 my-4 {{{ if !template.account/profile }}} hidden {{{ end }}}">
	<div class="row row-cols-3">
		<div class="col">
			<div class="text-muted fw-semibold text-xs">[[user:joined]]</div>
			<div class="timeago" title="{joindateISO}"></div>
		</div>
		<div class="col">
			<div class="text-muted fw-semibold text-xs">[[user:lastonline]]</div>
			<div class="timeago" title="{lastonlineISO}"></div>
		</div>

		{{{ if email }}}
		<div class="col">
			<div class="text-muted fw-semibold text-xs">[[user:email]] {{{ if emailHidden}}}<span class="text-lowercase">([[global:hidden]])</span>{{{ end }}}</div>
			<div>{email}</div>
		</div>
		{{{ end }}}

		{{{ if websiteName }}}
		<div class="col">
			<div class="text-muted fw-semibold text-xs">[[user:website]]</div>
			<div><a href="{websiteLink}" rel="nofollow noopener noreferrer">{websiteName}</a></div>
		</div>
		{{{ end }}}

		{{{ if location }}}
		<div class="col">
			<div class="text-muted fw-semibold text-xs">[[user:location]]</div>
			<div>{location}</div>
		</div>
		{{{ end }}}

		{{{ if age }}}
		<div class="col">
			<div class="text-muted fw-semibold text-xs">[[user:age]]</div>
			<div>{age}</div>
		</div>
		{{{ end }}}
	</div>
</div>