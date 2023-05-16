<div class="dropdown">
  <button class="btn-ghost-sm" data-bs-toggle="dropdown" component="chat/controlsToggle">
    <i class="fa fa-gear text-muted"></i>
  </button>
  <ul class="dropdown-menu dropdown-menu-end p-1 text-sm" component="chat/controls">
    <li class="dropdown-header">[[modules:chat.options]]</li>
    <li>
      <a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" data-action="members">
        <i class="fa fa-fw text-muted fa-cog"></i> [[modules:chat.manage-room]]
      </a>
    </li>
    <li>
      <a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" data-action="rename">
        <i class="fa fa-fw text-muted fa-edit"></i> [[modules:chat.rename-room]]
      </a>
    </li>
    <li>
      <a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" data-action="leave">
        <i class="fa fa-fw text-muted fa-sign-out"></i> [[modules:chat.leave]]
      </a>
    </li>
    {{{ if users.length }}}
    <li role="separator" class="dropdown-divider"></li>
    <li class="dropdown-header">[[modules:chat.in-room]]</li>
    {{{ each users }}}
    <li>
      <a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="{config.relative_path}/uid/{../uid}">{buildAvatar(users, "24px", true)} {../username}</a>
    </li>
    {{{ end }}}
    {{{ end }}}
  </ul>
</div>
