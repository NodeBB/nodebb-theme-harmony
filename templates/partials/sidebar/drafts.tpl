<a data-bs-toggle="dropdown" href="#" role="button" class="nav-link nav-btn position-relative" title="[[global:header.drafts]]">
	<span class="d-inline-flex justify-content-between w-100">
		<span class="text-nowrap truncate-open">
			<span class="position-relative">
				<i component="drafts/icon" class="fa fa-fw fa-pen-to-square unread-count"></i>
				<span component="drafts/count" class="visible-closed position-absolute top-0 start-100 translate-middle badge rounded-1 bg-primary hidden">0</span>
			</span>
			<span class="nav-text visible-open px-2 fw-semibold">[[global:header.drafts]]</span>
		</span>
		<span component="drafts/count" class="visible-open badge rounded-1 bg-primary hidden">0</span>
	</span>
</a>
<ul class="drafts-dropdown dropdown-menu p-2 shadow">
	<li>
		<ul component="drafts/list" class="draft-list list-unstyled p-2">
			<li class="no-drafts text-center hidden">[[modules:composer.no-drafts]]</li>

			{{{ each drafts }}}
			<li class="mb-2" data-save-id="{./save_id}">
				<div class="d-flex gap-1 justify-content-between">
					<div component="drafts/open" data-save-id="{./save_id}">
						<a href="#" class="text-reset">
							{{{ if ./title}}}
							<span class="text">{./title}</span>
							{{{ else }}}
							<span class="text">{./text}</span>
							{{{ end }}}
						</a>
						<div class="timeago text-muted" title="{./timestampISO}"></div>
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
	<li class="dropdown-divider"></li>
	<li class="notif-dropdown-link">
		<div class="d-flex justify-content-center flex-nowrap">
			<a component="drafts/delete-all" role="button" href="#" class="btn btn-light text-nowrap"><i class="fa fa-trash"></i> [[modules:composer.discard-all-drafts]]</a>
		</div>
	</li>
</ul>
