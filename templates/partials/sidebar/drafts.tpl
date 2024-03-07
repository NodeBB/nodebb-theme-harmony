<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link d-flex gap-2 justify-content-between align-items-center position-relative" aria-haspopup="true" aria-expanded="false" aria-label="[[global:header.drafts]]">
	<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
		<span class="position-relative">
			<i component="drafts/icon" class="fa fa-fw fa-pen-to-square unread-count"></i>
			<span component="drafts/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary hidden">0</span>
		</span>
		<span class="nav-text small visible-open fw-semibold">[[global:header.drafts]]</span>
	</span>
	<span component="drafts/count" class="visible-open badge rounded-1 bg-primary hidden">0</span>
</a>
<ul class="drafts-dropdown dropdown-menu p-1 shadow" role="menu">
	<li>
		<div component="drafts/list" class="list-container draft-list list-unstyled d-flex flex-column overscroll-behavior-contain gap-1 pe-1 ghost-scrollbar">
			<div class="dropdown-item rounded-1 p-2 d-flex gap-2 placeholder-wave">
				<div class="d-flex flex-grow-1 flex-column w-100">
					<div class="text-xs placeholder col-3">&nbsp;</div>
					<div class="text-sm placeholder col-11">&nbsp;</div>
					<div class="text-xs placeholder col-4">&nbsp;</div>
				</div>
			</div>
			<div class="hidden no-drafts text-center p-4 d-flex flex-column">
				<div class="p-4"><i class="fa-solid fa-wind fs-2 text-muted"></i></div>
				<div class="text-xs fw-semibold text-muted">[[modules:composer.no-drafts]]</div>
			</div>
			<div class="draft-item-container">
				{{{ each drafts }}}
				{{{ if !@first}}}
				<hr class="my-1"/>
				{{{ end }}}
				<div data-save-id="{./save_id}">
					<div class="d-flex gap-1 justify-content-between ff-base">
						<div class="dropdown-item rounded-1 p-2 d-flex flex-column gap-2 pointer" component="drafts/open" data-save-id="{./save_id}" role="menuitem">
							{{{ if (./action == "topics.post") }}}
							{{{ if ./title}}}
							<div class="text text-xs fw-semibold line-clamp-2 text-break">{./title}</div>
							{{{ end }}}
							{{{ end }}}

							{{{ if (./action == "posts.reply") }}}
							<div class="text text-xs fw-semibold line-clamp-2 text-break">[[topic:composer.replying-to, "{./title}"]]</div>
							{{{ end }}}

							{{{ if (./action == "posts.edit") }}}
							<div class="text text-xs fw-semibold line-clamp-2">[[topic:composer.editing-in, "{./title}"]]</div>
							{{{ end }}}

							{{{ if ./text }}}
							<div class="text text-sm line-clamp-3 text-break">{./text}</div>
							{{{ end }}}
							<div class="timeago text-xs text-muted" title="{./timestampISO}"></div>
						</div>
						<div>
							<button component="drafts/delete" data-save-id="{./save_id}" class="btn btn-light btn-sm">
								<i class="unread fa fa-xs fa-trash text-secondary"></i>
							</button>
						</div>
					</div>
				</div>
				{{{ end }}}
			</div>
		</div>
	</li>
</ul>
