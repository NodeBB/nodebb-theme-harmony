<li id="user_label" class="nav-item mx-2 dropstart usermenu" title="[[global:header.profile]]">
	<!-- IMPORT partials/sidebar/user-menu.tpl -->
</li>

{{{ if config.searchEnabled }}}
<li component="sidebar/search" class="nav-item mx-2 search dropstart position-relative">
<!-- IMPORT partials/sidebar/search.tpl -->
</li>
{{{ end }}}

<li component="notifications" class="nav-item mx-2 notifications dropstart">
<!-- IMPORT partials/sidebar/notifications.tpl -->
</li>

{{{ if canChat }}}
<li class="nav-item mx-2 chats dropstart">
<!-- IMPORT partials/sidebar/chats.tpl -->
</li>
{{{ end }}}

<li component="sidebar/drafts" class="nav-item mx-2 drafts dropstart">
<!-- IMPORT partials/sidebar/drafts.tpl -->
</li>