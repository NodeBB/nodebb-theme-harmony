{{{ if privileges.editable }}}
<li {{{ if locked }}}hidden{{{ end }}}><a component="topic/lock" href="#" class="dropdown-item {{{ if locked }}}hidden{{{ end }}}"><i class="fa fa-fw fa-lock"></i> [[topic:thread_tools.lock]]</a></li>
<li {{{ if !locked }}}hidden{{{ end }}}><a component="topic/unlock" href="#" class="dropdown-item {{{ if !locked }}}hidden{{{ end }}}"><i class="fa fa-fw fa-unlock"></i> [[topic:thread_tools.unlock]]</a></li>
<li {{{ if pinned }}}hidden{{{ end }}}><a component="topic/pin" href="#" class="dropdown-item {{{ if pinned }}}hidden{{{ end }}}"><i class="fa fa-fw fa-thumb-tack"></i> [[topic:thread_tools.pin]]</a></li>
<li {{{ if !pinned }}}hidden{{{ end }}}><a component="topic/unpin" href="#" class="dropdown-item {{{ if !pinned }}}hidden{{{ end }}}"><i class="fa fa-fw fa-thumb-tack fa-rotate-90"></i> [[topic:thread_tools.unpin]]</a></li>

<li><a component="topic/move" class="dropdown-item" href="#"><i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move]]</a></li>
<li><a component="topic/merge" class="dropdown-item" href="#"><i class="fa fa-fw fa-code-fork"></i> [[topic:thread_tools.merge]]</a></li>
<li><a component="topic/fork" class="dropdown-item" href="#"><i class="fa fa-fw fa-code-fork"></i> [[topic:thread_tools.fork]]</a></li>
{{{ if !scheduled }}}
<li><a component="topic/move-posts" class="dropdown-item" href="#"><i class="fa fa-fw fa-arrows"></i> [[topic:thread_tools.move-posts]]</a></li>
{{{ end }}}
<li><a component="topic/mark-unread-for-all" class="dropdown-item" href="#"><i class="fa fa-fw fa-inbox"></i> [[topic:thread_tools.markAsUnreadForAll]]</a></li>
<li class="dropdown-divider"></li>
{{{ end }}}

{{{ if privileges.deletable }}}
<li {{{ if deleted }}}hidden{{{ end }}}><a component="topic/delete" href="#" class="dropdown-item {{{ if deleted }}}hidden{{{ end }}}"><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete]]</a></li>
{{{ if !scheduled }}}
<li {{{ if !deleted }}}hidden{{{ end }}}><a component="topic/restore" href="#" class="dropdown-item {{{ if !deleted }}}hidden{{{ end }}}"><i class="fa fa-fw fa-history"></i> [[topic:thread_tools.restore]]</a></li>
{{{ end }}}
{{{ if privileges.purge }}]
<li {{{ if !deleted }}}hidden{{{ end }}}><a component="topic/purge" href="#" class="dropdown-item {{{ if !deleted }}}hidden{{{ end }}}"><i class="fa fa-fw fa-eraser"></i> [[topic:thread_tools.purge]]</a></li>
{{{ end }}}
{{{ if privileges.isAdminOrMod }}}
<li><a component="topic/delete/posts" class="dropdown-item" href="#"><i class="fa fa-fw fa-trash-o"></i> [[topic:thread_tools.delete-posts]]</a></li>
{{{ end }}}

{{{ each thread_tools }}}
<li><a href="#" class="dropdown-item {./class}"><i class="fa fa-fw {./icon}"></i> {./title}</a></li>
{{{ end }}}
{{{ end }}}