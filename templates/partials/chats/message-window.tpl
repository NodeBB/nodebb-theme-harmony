{{{ if !roomId }}}
<div class="text-center p-2">
	[[modules:chat.no_active]]
</div>
{{{ end }}}

{{{ if roomId }}}
<div component="chat/messages" class="expanded-chat d-flex flex-column h-100" data-roomid="{roomId}">
	<div component="chat/header" class="d-flex align-items-center px-3 gap-1">
		<h5 class="members flex-1 fw-semibold tracking-tight">
			{./chatWithMessage}
		</h5>

		<!-- IMPORT partials/chats/options.tpl -->
	</div>
	<hr class="text-muted opacity-25"/>
	<div class="row position-relative justify-content-center mx-5">
		<div component="chat/messages/scroll-up-alert" class="col-12 col-xl-6 position-absolute text-sm scroll-up-alert alert alert-info hidden d-none d-md-block" role="button" style="z-index: 1;">[[modules:chat.scroll-up-alert]]</div>
	</div>
	<ul class="chat-content p-0 m-0 list-unstyled overflow-auto flex-grow-1">
		<!-- IMPORT partials/chats/messages.tpl -->
	</ul>
	<div component="chat/composer" class="d-flex gap-1 border-top pt-2">
		<div class="flex-grow-1 position-relative">
			<textarea component="chat/input" placeholder="[[modules:chat.placeholder]]" class="form-control chat-input mousetrap" rows="2" style="resize:none;"></textarea>
			<span component="chat/message/remaining" class="text-muted position-absolute me-1 mb-1" style="right: 0px; bottom:0px;">{maximumChatMessageLength}</span>
		</div>
		<button class="btn btn-primary" type="button" data-action="send"><i class="fa fa-fw fa-2x fa-paper-plane"></i></button>
		<form component="chat/upload" method="post" enctype="multipart/form-data">
			<input type="file" name="files[]" multiple class="hidden"/>
		</form>
	</div>
</div>
{{{ end }}}