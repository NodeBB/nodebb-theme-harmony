<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link nav-btn d-flex gap-2 justify-content-between align-items-center position-relative" title="[[global:header.drafts]]">
	<span class="d-flex gap-2 align-items-center text-nowrap truncate-open">
		<span class="position-relative">
			<i component="drafts/icon" class="fa fa-fw fa-pen-to-square unread-count"></i>
			<span component="drafts/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary hidden">0</span>
		</span>
		<span class="nav-text small visible-open fw-semibold">[[global:header.drafts]]</span>
	</span>
	<span component="drafts/count" class="visible-open badge rounded-1 bg-primary hidden">0</span>
</a>
<ul class="drafts-dropdown dropdown-menu p-1 shadow">
	<li>
		<ul component="drafts/list" class="draft-list list-unstyled d-flex flex-column gap-1 pe-1">
			<li class="no-drafts text-center p-2">[[modules:composer.no-drafts]]</li>

			{{{ each drafts }}}
			{{{ if !@first}}}
			<hr class="m-0"/>
			{{{ end }}}
			<li class="" data-save-id="{./save_id}">
				<div class="d-flex gap-1 justify-content-between ff-base">
					<div class="dropdown-item rounded-1 p-2 d-flex flex-column gap-2 pointer" component="drafts/open" data-save-id="{./save_id}">
						{{{ if (./action == "topics.post") }}}
						{{{ if ./title}}}
						<div class="text text-xs fw-semibold line-clamp-2 text-break">{./title}</div>
						{{{ end }}}
						{{{ end }}}

						{{{ if (./action == "posts.reply") }}}
						<div class="text text-xs fw-semibold line-clamp-2 text-break">[[topic:composer.replying_to, "{./title}"]]</div>
						{{{ end }}}

						{{{ if (./action == "posts.edit") }}}
						<div class="text text-xs fw-semibold line-clamp-2">[[topic:composer.editing]]</div>
						{{{ end }}}

						{{{ if ./text }}}
						<div class="text text-sm line-clamp-3">{./text}</div>
						{{{ end }}}
						<div class="timeago text-xs text-muted" title="{./timestampISO}"></div>
					</div>
					<div class="">
						<button component="drafts/delete" data-save-id="{./save_id}" class="btn btn-light btn-sm">
							<i class="unread fa fa-xs fa-trash text-secondary"></i>
						</button>
					</div>
				</div>
			</li>
			{{{ end }}}
		</ul>
	</li>
</ul>
