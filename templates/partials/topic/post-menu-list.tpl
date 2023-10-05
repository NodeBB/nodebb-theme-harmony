{{{ if posts.display_moderator_tools }}}
<li>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/edit" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw text-muted fa-pencil"></i></span> [[topic:edit]]
	</a>
</li>
<li {{{ if posts.deleted }}}hidden{{{ end }}}>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/delete" role="menuitem" tabindex="-1" href="#" class="{{{ if posts.deleted }}}hidden{{{ end }}}">
		<span class="menu-icon"><i class="fa fa-fw text-muted fa-trash-o"></i></span> [[topic:delete]]
	</a>
</li>
<li {{{ if !posts.deleted }}}hidden{{{ end }}}>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/restore" role="menuitem" tabindex="-1" href="#" class="{{{ if !posts.deleted }}}hidden{{{ end }}}">
		<span class="menu-icon"><i class="fa fa-fw text-muted fa-history"></i></span> [[topic:restore]]
	</a>
</li>
{{{ if posts.display_purge_tools }}}
<li {{{ if !posts.deleted }}}hidden{{{ end }}}>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/purge" role="menuitem" tabindex="-1" href="#" class="{{{ if !posts.deleted }}}hidden{{{ end }}}">
		<span class="menu-icon"><i class="fa fa-fw text-muted fa-eraser"></i></span> [[topic:purge]]
	</a>
</li>
{{{ end }}}

{{{ if posts.display_move_tools }}}
<li>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/move" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw text-muted fa-arrows"></i></span> [[topic:move]]
	</a>
</li>
{{{ end }}}

{{{ if posts.display_change_owner_tools }}}
<li>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/change-owner" role="menuitem" tabindex="-1" href="#">
		<span class="menu-icon"><i class="fa fa-fw text-muted fa-user"></i></span> [[topic:change-owner]]
	</a>
</li>
{{{ end }}}

{{{ if posts.ip }}}
<li>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/copy-ip" role="menuitem" tabindex="-1" href="#" data-clipboard-text="{posts.ip}">
		<span class="menu-icon" ><i class="fa fa-fw text-muted fa-copy"></i></span> [[topic:copy-ip]] {posts.ip}
	</a>
</li>
{{{ if posts.display_ip_ban }}}
<li>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/ban-ip" role="menuitem" tabindex="-1" href="#" data-ip="{posts.ip}">
		<span class="menu-icon"><i class="fa fa-fw text-muted fa-ban"></i></span> [[topic:ban-ip]] {posts.ip}
	</a>
</li>
{{{ end }}}
{{{ end }}}
{{{ end }}}

{{{ each posts.tools }}}
<li {{{ if ./disabled }}}class="disabled" {{{ end }}}>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" {{{ if ./action}}}component="{./action}"{{{ end }}} role="menuitem" tabindex="-1" href="{{{ if ./href }}}{./href}{{{ else }}}#{{{ end }}}">
		<span class="menu-icon"><i class="fa fa-fw text-muted {./icon}"></i></span> {{./html}}
	</a>
</li>
{{{ end }}}

{{{ if !posts.deleted }}}
	{{{ if (posts.display_history && privileges.posts:history)}}}
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/view-history" role="menuitem" tabindex="-1" href="#">
			<span class="menu-icon"><i class="fa fa-fw text-muted fa-history"></i></span> [[topic:view-history]]
		</a>
	</li>
	{{{ end }}}

	{{{ if config.loggedIn }}}
	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/bookmark" role="menuitem" tabindex="-1" href="#" data-bookmarked="{posts.bookmarked}">
			<span class="menu-icon">
				<i component="post/bookmark/on" class="fa fa-fw text-muted fa-bookmark {{{ if !posts.bookmarked }}}hidden{{{ end }}}"></i>
				<i component="post/bookmark/off" class="fa fa-fw text-muted fa-bookmark-o {{{ if posts.bookmarked }}}hidden{{{ end }}}"></i>
			</span>
			<span class="bookmark-text">[[topic:bookmark]]</span>
			<span component="post/bookmark-count" class="bookmarkCount badge bg-secondary" data-bookmarks="{posts.bookmarks}">{posts.bookmarks}</span>&nbsp;
		</a>
	</li>
	{{{ end }}}

	<li>
		<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" role="menuitem" tabindex="-1" href="#" data-clipboard-text="{posts.absolute_url}">
			<i class="fa fa-fw text-muted fa-link"></i> [[topic:copy-permalink]]
		</a>
	</li>

	{{{ if postSharing.length }}}
	{{{ if config.loggedIn }}}<li class="dropdown-divider"></li>{{{ end }}}
	<li class="dropdown-header">[[topic:share-this-post]]</li>
	{{{ end }}}
	{{{ each postSharing }}}
		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" role="menuitem" component="share/{./id}" tabindex="-1" href="#"><span class="menu-icon"><i class="fa fa-fw text-muted {./class}"></i></span> {./name}</a>
		</li>
	{{{ end }}}
{{{ end }}}

{{{ if posts.display_flag_tools }}}
<li class="dropdown-divider"></li>

<li {{{ if posts.flags.flagged }}}hidden{{{ end }}}>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/flag" role="menuitem" tabindex="-1" href="#"><i class="fa fa-fw text-muted fa-flag"></i> [[topic:flag-post]]</a>
</li>
<li {{{ if !posts.flags.flagged }}}hidden{{{ end }}} class="disabled text-muted">
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/already-flagged" role="menuitem" tabindex="-1" href="#"><i class="fa fa-fw text-muted fa-flag"></i> [[topic:already-flagged]]</a>
</li>

{{{ if (!posts.selfPost && posts.uid) }}}
<li>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/flagUser" role="menuitem" tabindex="-1" href="#"><i class="fa fa-fw text-muted fa-flag"></i> [[topic:flag-user]]</a>
</li>
{{{ end }}}
{{{ end }}}

{{{ if posts.display_moderator_tools }}}
{{{ if posts.flags.exists }}}
<li>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" role="menuitem" tabindex="-1" href="{config.relative_path}/flags/{posts.flags.flagId}"><i class="fa fa-fw text-muted fa-exclamation-circle"></i> [[topic:view-flag-report]]</a>
</li>
{{{ if (posts.flags.state == "open") }}}
<li>
	<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" component="post/flagResolve" data-flagId="{posts.flags.flagId}" role="menuitem" tabindex="-1" href="#"><i class="fa fa-fw text-muted fa-check"></i> [[topic:resolve-flag]]</a>
</li>
{{{ end }}}
{{{ end }}}
{{{ end }}}
