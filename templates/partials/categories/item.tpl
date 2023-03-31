<li component="categories/category" data-cid="{./cid}" class="w-100 border-bottom py-3 py-lg-4 row gy-1 gy-xl-0 d-flex flex-column flex-lg-row align-items-start category-{./cid}">
	<meta itemprop="name" content="{./name}">
	
	<div class="d-flex col-lg-7 gap-2 gap-lg-3">
		<div class="flex-shrink-0">
		{buildCategoryIcon(@value, "40px", "rounded-1")}
		</div>
		<div class="flex-grow-1 d-flex flex-wrap gap-1">
			<h2 class="title text-break fs-4 fw-semibold m-0 tracking-tight w-100">
				<!-- IMPORT partials/categories/link.tpl -->
			</h2>
			{{{ if ./descriptionParsed }}}
			<div class="description text-muted text-xs w-100">
				{./descriptionParsed}
			</div>
			{{{ end }}}
			{{{ if !config.hideSubCategories }}}
			{{{ if ./children.length }}}
			<div class="category-children row row-cols-2 g-2 my-1 w-100">
				{{{ each ./children }}}
				{{{ if !./isSection }}}
				<span class="category-children-item small">
					{{{ if ./link }}}
					<div class="d-flex align-items-start gap-1">
						<i class="fa fa-fw fa-caret-right text-primary mt-1"></i>
						<a href="{./link}" class="text-reset fw-semibold">{./name}</a>
					</div>
					{{{ else }}}
					<div class="d-flex align-items-start gap-1">
						<i class="fa fa-fw fa-caret-right text-primary mt-1"></i>
						<a href="{config.relative_path}/category/{./slug}" class="text-reset fw-semibold">{./name}</a>
					</div>
					{{{ end }}}
				</span>
				{{{ end }}}
				{{{ end }}}
			</div>
			{{{ end }}}
			{{{ end }}}
		</div>
	</div>
	{{{ if !./link }}}
		<div class="d-flex col-lg-5 align-content-stretch">
			<div class="meta stats d-none d-lg-grid col-6 gap-1 pe-2 text-muted" style="grid-template-columns: 1fr 1fr;">
				<div class="card card-header border-0 p-1 overflow-hidden rounded-1 d-flex flex-column gap-1 align-items-center">
					<span class="{./unread-class} human-readable-number fs-5 ff-secondary lh-1" title="{./totalTopicCount}" data-toFixed="0">{./totalTopicCount}</span>
					<span class="d-none d-xl-flex text-lowercase text-xs">[[global:topics]]</span>
					<i class="d-xl-none fa fa-fw text-xs text-muted opacity-75 fa-list"></i>
				</div>
				<div class="card card-header border-0 p-1 overflow-hidden rounded-1 d-flex flex-column gap-1 align-items-center">
					<span class="{./unread-class} human-readable-number fs-5 ff-secondary lh-1" title="{./totalPostCount}" data-toFixed="0">{./totalPostCount}</span>
					<span class="d-none d-xl-flex text-lowercase text-xs">[[global:posts]]</span>
					<i class="d-xl-none fa fa-fw text-xs text-muted opacity-75 fa-message"></i>
				</div>
			</div>
			{{{ if !config.hideCategoryLastPost }}}
			<div component="topic/teaser" class="teaser col-lg-6">
				<!-- IMPORT partials/categories/lastpost.tpl -->
			</div>
			{{{ end }}}
		</div>
	{{{ end }}}
</li>
