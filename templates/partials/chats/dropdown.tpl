{{{ if !rooms.length }}}
<li class="text-center p-2">[[modules:chat.no_active]]</li>
{{{ end }}}

{{{ each rooms }}}
<!-- IMPORT partials/chats/recent_room.tpl -->
{{{ end }}}