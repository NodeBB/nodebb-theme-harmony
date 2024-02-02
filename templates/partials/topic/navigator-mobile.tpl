<div class="d-flex w-100">
	<div class="pagination-block text-bg-light m-2 rounded-1 border border-gray-300 w-100" style="height:30px;">
		<div class="position-relative">
			<div class="progress-bar rounded-1 bg-info d-block position-absolute" style="height:28px;"></div>
		</div>
		<div class="wrapper dropup-center d-flex align-items-center justify-content-between w-100 h-100" style="padding: 5px 0px;">
			<div class="d-flex">
				<div class="lh-1 px-2">
					<i class="fa fa-angles-left pointer fa-fw pagetop fs-5" style="z-index: 1;"></i>
				</div>
				{{{ if config.usePagination }}}
				<div class="lh-1 px-2">
					<i class="fa fa-angle-left pointer fa-fw pageprev fs-5" style="z-index: 1;"></i>
				</div>
				{{{ end }}}
			</div>

			<a href="#" class="text-reset dropdown-toggle d-inline-block px-3 text-decoration-none" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<span class="d-inline-flex gap-2 align-items-center pagination-text position-relative fw-bold"></span>
			</a>

			<div class="d-flex">
				{{{ if config.usePagination }}}
				<div class="lh-1 px-2">
					<i class="fa fa-angle-right pointer fa-fw pagenext fs-5" style="z-index: 1;"></i>
				</div>
				{{{ end }}}
				<div class="lh-1 px-2">
					<i class="fa fa-angles-right pointer fa-fw pagebottom fs-5" style="z-index: 1;"></i>
				</div>
			</div>

			<ul class="dropdown-menu p-0" role="menu" style="width: 100%;">
				<li class="p-3">
					<div class="row">
						<div class="col-8 post-content overflow-hidden mb-3" style="height: 350px;"></div>
						<div class="col-4 ps-0 text-end">
							<div class="scroller-content">
								<span class="pointer pagetop">[[topic:first-post]] <i class="fa fa-angle-double-up"></i></span>
								<div class="scroller-container border-gray-200" style="height: 300px;">
									<div class="scroller-thumb position-relative text-nowrap" style="height: 40px;">
										<span class="thumb-text text-sm fw-bold user-select-none position-relative pe-2" style="top: -15px;"></span>
										<div class="rounded-2 scroller-thumb-icon bg-primary d-inline-block position-relative" style="width: 9px; height:40px;"></div>
									</div>
								</div>
								<span class="pointer pagebottom">[[topic:last-post]] <i class="fa fa-angle-double-down"></i></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-6">
							<button id="myNextPostBtn" class="btn btn-outline-secondary form-control text-truncate" disabled>[[topic:go-to-my-next-post]]</button>
						</div>
						<div class="col-6">
							<input type="number" class="form-control" id="indexInput" placeholder="[[global:pagination.enter-index]]">
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>