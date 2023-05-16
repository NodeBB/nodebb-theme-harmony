<div id="chat-modal" class="chat-modal d-flex flex-nowrap modal hide overflow-visible" tabindex="-1" role="dialog" aria-labelledby="Chat" aria-hidden="true" data-center="false">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header d-flex gap-4 justify-content-between">
				<div class="fs-6 flex-grow-1" component="chat/room/name">{./chatWithMessage}</div>
				<div class="d-flex gap-1 align-items-center">
					<button type="button" class="btn-ghost-sm d-none d-md-flex" data-action="maximize">
						<i class="fa fa-fw fa-expand text-muted"></i>
					</button>

					<!-- IMPORT partials/chats/options.tpl -->

					<button id="chat-close-btn" type="button" class="btn-close btn-ghost-sm" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
			</div>

			<div class="modal-body d-flex flex-column" style="height: 500px;">
				<div class="position-relative">
					<div component="chat/messages/scroll-up-alert" class="position-absolute scroll-up-alert alert alert-info hidden w-100" role="button" style="z-index: 1;">[[modules:chat.scroll-up-alert]]</div>
				</div>
				<ul class="chat-content p-0 m-0 list-unstyled d-flex flex-column overflow-auto flex-grow-1" component="chat/messages">
					<!-- IMPORT partials/chats/messages.tpl -->
				</ul>

				<div component="chat/composer" class="d-flex flex-column flex-md-row gap-2 border-top pt-2 align-items-start align-items-md-end">
					<div class="w-100 flex-grow-1 flex-nowrap position-relative input-group">
						<button component="chat/upload/button" class="btn btn-outline-primary btn-sm align-self-stretch px-3 px-md-2" type="button"><i class="fa fa-fw fa-upload"></i></button>
						<div class="flex-grow-1 position-relative">
							<textarea component="chat/input" placeholder="[[modules:chat.placeholder.mobile]]" class="form-control chat-input mousetrap rounded-0" style="height:0;max-height:30vh;resize:none;"></textarea>
							<span component="chat/message/remaining" class="text-xs text-muted position-absolute me-1 mb-1 end-0 bottom-0">{maximumChatMessageLength}</span>
						</div>
						<button class="btn btn-primary btn-sm align-self-stretch px-3 px-md-2" type="button" data-action="send"><i class="fa fa-fw fa-paper-plane"></i></button>
					</div>
					<form class="hidden" component="chat/upload" method="post" enctype="multipart/form-data">
						<input type="file" name="files[]" multiple class="hidden"/>
					</form>
				</div>
			</div>
			<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>
		</div>
	</div>
</div>
