<div class="col-12 col-md-3 col-lg-2 border-end-md text-sm mb-3">
	<div class="sticky-top d-flex flex-row flex-md-column flex-wrap gap-1" style="z-index: 1;">
		<a href="{config.relative_path}/user/{userslug}" class="btn-ghost fw-semibold {{{ if template.account/profile }}}active{{{ end }}}">
			<div class="flex-1">[[global:about]]</div>
		</a>
		<a href="{config.relative_path}/user/{userslug}/posts"class="btn-ghost fw-semibold
			{{{ if template.account/posts }}}active{{{ end }}}
			{{{ if template.account/best }}}active{{{ end }}}
			{{{ if template.account/controversial }}}active{{{ end }}}
			{{{ if template.account/upvoted }}}active{{{ end }}}
			{{{ if template.account/downvoted }}}active{{{ end }}}
			{{{ if template.account/bookmarks }}}active{{{ end }}}">
			<div class="flex-1">[[global:posts]]</div>
			<span class="text-xs human-readable-number" title="{counts.posts}">{counts.posts}</span>
		</a>
		<a href="{config.relative_path}/user/{userslug}/topics" class="btn-ghost fw-semibold
			{{{ if template.account/topics }}}active{{{ end }}}
			{{{ if template.account/watched }}}active{{{ end }}}
			{{{ if template.account/ignored }}}active{{{ end }}}">
			<div class="flex-1">[[global:topics]]</div>
			<span class="text-xs human-readable-number" title="{counts.topics}">{counts.topics}</span>
		</a>
		<a href="{config.relative_path}/user/{userslug}/groups" class="btn-ghost fw-semibold">
			<div class="flex-1">[[global:header.groups]]</div>
			<span class="text-xs human-readable-number" title="{counts.groups}">{counts.groups}</span>
		</a>

		<a href="{config.relative_path}/user/{userslug}/followers" class="btn-ghost fw-semibold">
			<div class="flex-1">[[user:followers]]</div>
			<span class="text-xs human-readable-number" title="{counts.followers}">{counts.followers}</span>
		</a>

		<a href="{config.relative_path}/user/{userslug}/following" class="btn-ghost fw-semibold">
			<div class="flex-1">[[user:following]]</div>
			<span class="text-xs human-readable-number" title="{counts.following}">{counts.following}</span>
		</a>

		{{{ if canEdit }}}
		<a href="{config.relative_path}/user/{userslug}/blocks" class="btn-ghost fw-semibold">
			<div class="flex-1">[[user:blocked-users]]</div>
			<span class="text-xs human-readable-number" title="{counts.blocks}">{counts.blocks}</span>
		</a>

		<a href="{config.relative_path}/user/{userslug}/uploads" class="btn-ghost fw-semibold">
			<div class="flex-1">[[global:uploads]]</div>
			<span class="text-xs human-readable-number" title="{counts.uploaded}">{counts.uploaded}</span>
		</a>
		{{{ end }}}

		<hr/>
		{{{ if (loggedIn && (!isSelf && !banned)) }}}
		<a href="#" component="account/flag" class="btn-ghost-sm">
			<i class="fa-solid fa-flag text-danger"></i>
			<div class="flex-1 text-nowrap">[[user:flag-profile]]</div>
		</a>
		<a href="#" component="account/block" class="btn-ghost-sm {{{ if isBlocked }}}hidden{{{ end }}}">
			<i class="fa-solid fa-ban text-danger"></i>
			<div class="flex-1 text-nowrap">[[user:block_user]]</div>
		</a>
		<a href="#" component="account/unblock" class="btn-ghost-sm {{{ if !isBlocked }}}hidden{{{ end }}}">
			<i class="fa-solid fa-ban text-danger"></i>
			<div class="flex-1 text-nowrap">[[user:unblock_user]]</div>
		</a>
		<hr/>
		{{{ end }}}

		{{{ if canEdit }}}
		<a href="{config.relative_path}/user/{userslug}/edit" class="btn-ghost-sm text-xs">
			<div class="flex-1">[[user:edit-profile]]</div>
		</a>
		<a href="{config.relative_path}/user/{userslug}/settings" class="btn-ghost-sm text-xs">
			<div class="flex-1">[[user:settings]]</div>
		</a>
		{{{ end }}}

		{{{ each profile_links }}}
		<a href="{config.relative_path}/user/{userslug}/{./route}" class="btn-ghost-sm text-xs plugin-link {{{ if ./public }}}public{{{ else }}}private{{{ end }}}" id="{./id}">
			<div class="flex-1">{./name}</div>
		</a>
		{{{end}}}
	</div>
</div>
