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
					<div component="chat/messages/scroll-up-alert" class="py-1 position-absolute start-50 translate-middle text-sm scroll-up-alert alert alert-info d-none d-md-block text-nowrap" role="button" style="z-index: 500;"><i class="fa fa-fw fa-arrow-down"></i> [[modules:chat.scroll-up-alert]]</div>
				</div>
				<ul class="chat-content p-0 m-0 list-unstyled d-flex flex-column overflow-auto flex-grow-1" component="chat/messages">
					<!-- IMPORT partials/chats/messages.tpl -->
				</ul>

				<!-- IMPORT partials/chats/composer.tpl -->
			</div>
			<div class="imagedrop"><div>[[topic:composer.drag_and_drop_images]]</div></div>
		</div>
	</div>
</div>
