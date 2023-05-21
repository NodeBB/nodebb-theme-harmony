{{{ if !roomId }}}
<div class="text-center p-2">
	[[modules:chat.no_active]]
</div>
{{{ end }}}

{{{ if roomId }}}
<div component="chat/messages" class="expanded-chat d-flex flex-column h-100" data-roomid="{roomId}">
	<div component="chat/header" class="d-flex align-items-center px-md-3 gap-3">
		<a href="#" data-action="close" role="button" class="flex-shrink-0 d-flex d-md-none btn btn-outline align-text-top"><i class="fa fa-chevron-left"></i></a>
		<h5 class="members flex-grow-1 fw-semibold tracking-tight mb-0">
			{./chatWithMessage}
		</h5>

		<!-- IMPORT partials/chats/options.tpl -->
	</div>
	<hr class="my-1"/>
	<div class="position-relative">
		<div component="chat/messages/scroll-up-alert" class="py-1 position-absolute start-50 translate-middle text-sm scroll-up-alert alert alert-info d-none d-md-block text-nowrap" role="button" style="z-index: 500;"><i class="fa fa-fw fa-arrow-down"></i> [[modules:chat.scroll-up-alert]]</div>
	</div>
	<ul class="chat-content p-0 m-0 list-unstyled overflow-auto flex-grow-1">
		<!-- IMPORT partials/chats/messages.tpl -->
	</ul>
	<!-- IMPORT partials/chats/composer.tpl -->
</div>
{{{ end }}}