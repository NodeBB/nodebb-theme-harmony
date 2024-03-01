<div class="btn-group bottom-sheet" component="thread/sort">
	<button class="btn-ghost-sm ff-secondary d-flex gap-2 align-items-center dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" aria-label="[[aria:post-sort-option, {sortOptionLabel}]]">
		<i class="fa fa-fw fa-arrow-down-wide-short text-primary"></i>
		<span class="d-none d-md-inline fw-semibold">{sortOptionLabel}</span>
	</button>

	<ul class="dropdown-menu p-1 text-sm" role="menu">
		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" class="oldest_to_newest" data-sort="oldest_to_newest" role="menuitem">
				<span class="flex-grow-1">[[topic:oldest-to-newest]]</span>
				<i class="flex-shrink-0 fa fa-fw text-secondary"></i>
			</a>
		</li>
		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" class="newest_to_oldest" data-sort="newest_to_oldest" role="menuitem">
				<span class="flex-grow-1">[[topic:newest-to-oldest]]</span>
				<i class="flex-shrink-0 fa fa-fw text-secondary"></i>
			</a>
		</li>
		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2" href="#" class="most_votes" data-sort="most_votes" role="menuitem">
				<span class="flex-grow-1">[[topic:most-votes]]</span>
				<i class="flex-shrink-0 fa fa-fw text-secondary"></i>
			</a>
		</li>
	</ul>
</div>
