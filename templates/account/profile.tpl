<div class="account mx-auto">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->

		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			{{{ if aboutme }}}
			<div component="aboutme" class="text-sm">
			{aboutmeParsed}
			</div>
			{{{ end }}}

			<div class="account-stats container">
				<div class="row row-cols-2 row-cols-lg-3 row-cols-xl-4 g-2">
					{{{ if !reputation:disabled }}}
					<div class="stat">
						<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100">
							<span class="stat-label text-xs fw-semibold">[[global:reputation]]</span>
							<span class="human-readable-number fs-2 ff-secondary" title="{reputation}">{reputation}</span>
						</div>
					</div>
					{{{ end }}}
					<div class="stat">
						<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100">
							<span class="stat-label text-xs fw-semibold">[[user:profile_views]]</span>
							<span class="human-readable-number fs-2 ff-secondary" title="
							{profileviews}">{profileviews}</span>
						</div>
					</div>

					<div class="stat">
						<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
							<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-cake-candles"></i> <span>[[user:joined]]</span></span>
							<span class="timeago fs-6 ff-secondary" title="{joindateISO}"></span>
						</div>
					</div>

					<div class="stat">
						<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
							<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-clock"></i> <span>[[user:lastonline]]</span></span>
							<span class="timeago fs-6 ff-secondary" title="{lastonlineISO}"></span>
						</div>
					</div>

					{{{ if email }}}
					<div class="stat">
						<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
							<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-envelope"></i> <span>[[user:email]]</span> {{{ if emailHidden}}}<span class="text-lowercase">([[global:hidden]])</span>{{{ end }}}</span>
							<span class="fs-6 ff-secondary">{email}</span>
						</div>
					</div>
					{{{ end }}}

					{{{ if websiteName }}}
					<div class="stat">
						<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
							<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-globe"></i> <span>[[user:website]]</span></span>
							<a class="fs-6 ff-secondary text-underline text-reset" href="{websiteLink}" rel="nofollow noopener noreferrer">{websiteName}</a>
						</div>
					</div>
					{{{ end }}}

					{{{ if location }}}
					<div class="stat">
						<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
							<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-map-pin"></i> <span>[[user:location]]</span></span>
							<span class="fs-6 ff-secondary">{location}</span>
						</div>
					</div>
					{{{ end }}}

					{{{ if age }}}
					<div class="stat">
						<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
							<span class="stat-label text-xs fw-semibold"><span>[[user:age]]</span></span>
							<span class="fs-6 ff-secondary">{age}</span>
						</div>
					</div>
					{{{ end }}}
				</div>
			</div>
		</div>
	</div>
</div>
