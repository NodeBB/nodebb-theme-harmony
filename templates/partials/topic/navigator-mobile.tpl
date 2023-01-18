<div class="d-flex justify-content-end w-100">
	<div class="pagination-block text-bg-light m-2 rounded-1 border border-gray-300" style="height:50px;">
		<div class="position-relative">
			<div class="progress-bar rounded-1 bg-info d-block position-absolute" style="height:50px;"></div>
		</div>
		<div class="wrapper d-flex align-items-center h-100" style="padding: 5px 0px;">
			<i class="fa fa-2x fa-angle-double-up pointer fa-fw pagetop" style="z-index: 1;"></i>

			<a href="#" class="text-reset dropdown-toggle d-inline-block px-3 text-decoration-none" data-bs-toggle="dropdown">
				<span class="pagination-text position-relative fw-bold"></span>
			</a>

			<i class="fa fa-2x fa-angle-double-down pointer fa-fw pagebottom" style="z-index: 1;"></i>
			<ul class="dropdown-menu p-0" role="menu" style="width: 100%;">
				<li class="p-3">
					<div class="row">
						<div class="col-8 post-content overflow-hidden mb-3" style="height: 350px;"></div>
						<div class="col-4 text-end">
							<div class="scroller-content">
								<span class="pointer pagetop">[[topic:first-post]] <i class="fa fa-angle-double-up"></i></span>
								<div class="scroller-container border-gray-200" style="height: 300px; border-right: 3px solid; margin-right: 5.5px;">
									<div class="scroller-thumb position-relative" style="height: 40px;right: -6px; padding-right: 15px; margin-right: -15px;">
										<span class="thumb-text fw-bold user-select-none position-relative" style="top: -15px; padding-right: 10px;"></span>
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
							<input type="number" class="form-control" id="indexInput" placeholder="[[global:pagination.enter_index]]">
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>