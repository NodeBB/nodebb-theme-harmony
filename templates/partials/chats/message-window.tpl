<div class="d-flex flex-column h-100">
	{{{ if !roomId }}}
	<div class="d-flex flex-column align-items-center gap-3 p-5">
		<i class="fa-solid fa-wind fs-2 text-muted"></i>
		<span class="text-muted text-sm">[[modules:chat.no_active]]</span>
	</div>
	{{{ end }}}

	{{{ if roomId }}}
	<div component="chat/header" class="d-flex align-items-center px-md-3 gap-3">
		<a href="#" data-action="close" role="button" class="flex-shrink-0 d-flex d-md-none btn btn-outline align-text-top"><i class="fa fa-chevron-left"></i></a>
		<h5 class="members flex-grow-1 fw-semibold tracking-tight mb-0">
			{./chatWithMessage}
		</h5>

		<!-- IMPORT partials/chats/options.tpl -->
	</div>
	<hr class="my-1"/>
	<div class="d-flex flex-grow-1 gap-1 overflow-auto" style="min-width: 0px;">
		<div component="chat/messages" class="expanded-chat d-flex flex-column flex-grow-1" data-roomid="{roomId}" style="min-width: 0px;">
			<div class="position-relative">
				<div component="chat/messages/scroll-up-alert" class="py-1 position-absolute start-50 translate-middle-x text-sm scroll-up-alert alert alert-info d-none d-md-block text-nowrap" role="button" style="z-index: 500;"><i class="fa fa-fw fa-arrow-down"></i> [[modules:chat.scroll-up-alert]]</div>
			</div>
			<ul class="chat-content p-0 m-0 list-unstyled overflow-auto flex-grow-1">
				<!-- IMPORT partials/chats/messages.tpl -->
			</ul>
			<!-- IMPORT partials/chats/composer.tpl -->
		</div>

		<div component="chat/users/list" class="border-start hidden d-flex flex-column gap-2 p-1 overflow-auto" style="min-width:200px;">
			{{{ each users }}}
			<a class="btn-ghost-sm d-flex justify-content-start align-items-center gap-2" href="{config.relative_path}/uid/{./uid}">{buildAvatar(users, "24px", true)} {./username}</a>
			{{{ end }}}
		</div>
	</div>
	{{{ end }}}
</div>