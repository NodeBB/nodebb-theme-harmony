<li component="categories/category" data-cid="{./cid}" class="row clearfix category-{./cid}">
	<meta itemprop="name" content="{./name}">

	<div class="d-flex gap-3 col-12 {{{ if config.hideCategoryLastPost }}}col-md-10 col-sm-12{{{ else }}}col-md-7 col-sm-9{{{ end }}}">
		<div class="">
		{buildCategoryIcon(@value, "40px", "rounded-1")}
		</div>
		<div class="d-flex flex-column gap-1">
			<h2 class="title fw-bold fs-4">
				<!-- IMPORT partials/categories/link.tpl -->
			</h2>
			{{{ if ./descriptionParsed }}}
			<div class="description text-muted small">
				{./descriptionParsed}
			</div>
			{{{ end }}}
			{{{ if !config.hideSubCategories }}}
			{{{ if ./children.length }}}
			<div class="category-children d-flex gap-3">
				{{{ each ./children }}}
				{{{ if !./isSection }}}
				<span class="category-children-item small">
					{{{ if ./link }}}
					<a href="{./link}">{./name}</a>
					{{{ else }}}
					<a href="{config.relative_path}/category/{./slug}">{./name}</a>
					{{{ end }}}
				</span>
				{{{ end }}}
				{{{ end }}}
			</div>
			{{{ end }}}
			{{{ end }}}
			<span class="d-block d-sm-none">
				{{{ if ./teaser.timestampISO }}}
				<a class="permalink" href="{./teaser.url}">
					<small class="timeago" title="{./teaser.timestampISO}"></small>
				</a>
				{{{ end }}}
			</span>
		</div>
	</div>

	{{{ if !./link }}}
	<div class="col-md-2 d-none d-md-flex stats text-muted gap-2 px-0">
		<div class="w-50">
			<div class="card card-header align-items-center px-0 py-2 border-0 rounded-1">
				<span class="{./unread-class} human-readable-number fs-5 fw-semibold ff-secondary" title="{./totalTopicCount}">{./totalTopicCount}</span>
				<span class="text-lowercase text-xs">[[global:topics]]</span>
			</div>
		</div>
		<div class="w-50">
			<div class="card card-header align-items-center px-0 py-2 border-0 rounded-1">
				<span class="{./unread-class} human-readable-number fs-5 fw-semibold ff-secondary" title="{./totalPostCount}">{./totalPostCount}</span>
				<span class="text-lowercase text-xs">[[global:posts]]</span>
			</div>
		</div>
	</div>

	{{{ if !config.hideCategoryLastPost }}}
	<div class="col-md-3 col-sm-3 teaser d-none d-sm-block" component="topic/teaser">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	{{{ end }}}
	{{{ end }}}
</li>
