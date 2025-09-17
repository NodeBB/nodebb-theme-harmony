<li component="categories/category" data-cid="{./cid}" class="w-100 border-bottom py-3 py-lg-4 gap-lg-0 gap-2 d-flex flex-column flex-lg-row align-items-start category-{./cid} {./unread-class}">
	<meta itemprop="name" content="{./name}">

	<div class="d-flex col-lg-7 gap-2 gap-lg-3">
		<div class="flex-shrink-0">
		{buildCategoryIcon(@value, "40px", "rounded-1")}
		</div>
		<div class="flex-grow-1 d-flex flex-wrap gap-1 me-0 me-lg-2">
			<h2 class="title text-break fs-4 fw-semibold m-0 tracking-tight w-100">
				<!-- IMPORT partials/categories/link.tpl -->
			</h2>
			{{{ if ./descriptionParsed }}}
			<div class="description text-muted text-sm w-100 line-clamp-sm-5">
				{./descriptionParsed}
			</div>
			{{{ end }}}
			{{{ if !./link }}}
			<div class="d-flex gap-1 d-block d-lg-none w-100">
				<span class="badge text-body border stats text-xs text-muted">
					<i class="fa fa-fw fa-list"></i>
					<span class="fw-normal">{humanReadableNumber(./totalTopicCount, 0)}</span>
				</span>
				<span class="badge text-body border stats text-xs text-muted">
					<i class="fa-regular fa-fw fa-message"></i>
					<span class="fw-normal">{humanReadableNumber(./totalPostCount, 0)}</span>
				</span>
				{{{ if ./teaser }}}
				<a href="{config.relative_path}{./teaser.url}" class="border badge bg-transparent text-muted fw-normal timeago {{{ if (!./teaser.timestampISO || config.theme.mobileTopicTeasers) }}}hidden{{{ end }}}" title="{./teaser.timestampISO}"></a>
				{{{ end }}}
			</div>
			{{{ end }}}
			{{{ if !config.hideSubCategories }}}
			{{{ if ./children.length }}}
			<!-- IMPORT partials/categories/children.tpl -->
			{{{ end }}}
			{{{ end }}}
		</div>
	</div>
	{{{ if !./link }}}
	<div class="d-flex col-lg-5 col-12 align-content-stretch">
		<div class="meta stats d-none d-lg-grid col-6 gap-1 pe-2 text-muted" style="grid-template-columns: 1fr 1fr;">
			<div class="card card-header border-0 p-2 overflow-hidden rounded-1 d-flex flex-column align-items-center">
				<span class="fs-5 ff-secondary lh-1" title="{./totalTopicCount}">{humanReadableNumber(./totalTopicCount, 0)}</span>
				<span class="d-none d-xl-flex text-lowercase text-xs">[[global:topics]]</span>
				<i class="d-xl-none fa fa-fw text-xs text-muted opacity-75 fa-list"></i>
			</div>
			<div class="card card-header border-0 p-2 overflow-hidden rounded-1 d-flex flex-column align-items-center">
				<span class="fs-5 ff-secondary lh-1" title="{./totalPostCount}">{humanReadableNumber(./totalPostCount, 0)}</span>
				<span class="d-none d-xl-flex text-lowercase text-xs">[[global:posts]]</span>
				<i class="d-xl-none fa-regular fa-fw text-xs text-muted opacity-75 fa-message"></i>
			</div>
		</div>
		{{{ if !config.hideCategoryLastPost }}}
		<div component="topic/teaser" class="teaser ps-5 ps-lg-0 col-lg-6 col-12 {{{ if !config.theme.mobileTopicTeasers }}}d-none d-lg-block{{{ end }}}">
			<!-- IMPORT partials/categories/lastpost.tpl -->
		</div>
		{{{ end }}}
	</div>
	{{{ end }}}
</li>
