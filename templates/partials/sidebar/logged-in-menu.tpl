<li id="user_label" class="nav-item mx-2 dropstart usermenu" title="{user.username}" role="menuitem">
	<!-- IMPORT partials/sidebar/user-menu.tpl -->
</li>

{{{ if (config.searchEnabled && user.privileges.search:content) }}}
<li component="sidebar/search" class="nav-item mx-2 search dropstart position-relative" title="[[global:header.search]]" role="menuitem">
<!-- IMPORT partials/sidebar/search.tpl -->
</li>
{{{ end }}}

<li component="notifications" class="nav-item mx-2 notifications dropstart" title="[[global:header.notifications]]" role="menuitem">
<!-- IMPORT partials/sidebar/notifications.tpl -->
</li>

{{{ if canChat }}}
<li class="nav-item mx-2 chats dropstart" title="[[global:header.chats]]" role="menuitem">
<!-- IMPORT partials/sidebar/chats.tpl -->
</li>
{{{ end }}}

<li component="sidebar/drafts" class="nav-item mx-2 drafts dropstart" title="[[global:header.drafts]]" role="menuitem">
<!-- IMPORT partials/sidebar/drafts.tpl -->
</li>