<div class="col-12 col-md-2 d-flex flex-row flex-md-column flex-wrap gap-1 border-end text-sm mb-3">
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
</div>
