<div component="chat/user/list" class="border-start hidden d-flex flex-column gap-2 p-1 overflow-auto" style="min-width:200px;">
	{{{ each users }}}
	<a data-index="{./index}" class="btn-ghost-sm d-flex justify-content-start align-items-center gap-2" href="{config.relative_path}/uid/{./uid}">{buildAvatar(users, "24px", true)} {./username}</a>
	{{{ end }}}
</div>