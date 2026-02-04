<!-- used if config.theme.alternativeNavigation is on-->


{{{ if (config.searchEnabled && user.privileges.search:content) }}}
<li component="sidebar/search" class="nav-item mx-2 search dropdown-right position-relative" title="[[global:header.search]]" role="menuitem" data-bs-placement="bottom">
<!-- IMPORT partials/sidebar/search.tpl -->
</li>
{{{ end }}}


<li component="sidebar/drafts" class="nav-item mx-2 drafts dropdown-right" title="[[global:header.drafts]]" role="menuitem" data-bs-placement="bottom">
<!-- IMPORT partials/sidebar/drafts.tpl -->
</li>

{{{ if canChat }}}
<li class="nav-item mx-2 chats dropdown-right " title="[[global:header.chats]]" role="menuitem" data-bs-placement="bottom">
<!-- IMPORT partials/sidebar/chats.tpl -->
</li>
{{{ end }}}


<li component="notifications" class="nav-item mx-2 notifications dropdown-right" title="[[global:header.notifications]]" role="menuitem" data-bs-placement="bottom">
<!-- IMPORT partials/sidebar/notifications.tpl -->
</li>

<li id="user_label" class="nav-item mx-2 usermenu dropdown-right" title="{user.username}" role="menuitem" data-bs-placement="bottom">
	<!-- IMPORT partials/sidebar/user-menu.tpl -->
</li>