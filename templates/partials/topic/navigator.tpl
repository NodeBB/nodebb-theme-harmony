<div class="pagination-block d-none d-lg-block flex-grow-1 mb-4">
	<div class="d-flex justify-content-end sticky-top mt-4" style="top:6rem;z-index:1;">
		<div class="ps-1 ps-md-0 d-inline-block">
			<div class="scroller-content d-flex gap-2 flex-column align-items-start">
				<button class="pagetop btn-ghost-sm ff-secondary d-inline-flex border-0" style="padding: 4px;"><i class="fa fa-chevron-up"></i> <span class="timeago text-xs text-muted text-nowrap" title="{./timestampISO}"></span></button>
				<div class="scroller-container position-relative">
					<div class="scroller-thumb d-flex gap-2 text-nowrap position-relative" style="height: 40px;">
						<div class="scroller-thumb-icon bg-primary rounded d-inline-block" style="width:9px; height: 40px;"></div>
						<div>
							<p class="small thumb-text d-none d-md-inline-block ff-secondary fw-semibold user-select-none mb-0"></p>
							<p class="meta thumb-timestamp timeago text-xs text-muted ff-secondary fw-semibold mb-0 user-select-none"></p>
						</div>
					</div>

					<div class="unread d-inline-block position-absolute bottom-0">
						<div class="meta small position-absolute top-50 translate-middle-y text-nowrap fw-semibold ms-2">
							<a class="text-decoration-none" href="{url}" tabindex="-1" aria-disabled="true" aria-label="[[topic:unread-posts-link]]"></a>
						</div>
					</div>
				</div>
				<button class="pagebottom btn-ghost-sm ff-secondary d-inline-flex border-0" style="padding: 4px;"><i class="fa fa-chevron-down"></i> <span class="timeago text-xs text-muted text-nowrap" title="{./lastposttimeISO}"></span></button>
			</div>
		</div>
	</div>
</div>

