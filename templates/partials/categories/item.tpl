<li component="categories/category" data-cid="{./cid}" class="{{{ if config.hideCategoryLastPost }}}hideCategoryLastPost{{{ end }}} category-{./cid}">
	<meta itemprop="name" content="{./name}">
	
	<div class="thumb-avatar-box">
	{buildCategoryIcon(@value, "40px", "rounded-1")}
	</div>
	<h2 class="title fw-semibold m-0 tracking-tight">
		<!-- IMPORT partials/categories/link.tpl -->
	</h2>
	<div class="info">
		{{{ if ./descriptionParsed }}}
		<div class="description text-muted text-xs">
			{./descriptionParsed}
		</div>
		{{{ end }}}
		{{{ if !config.hideSubCategories }}}
		{{{ if ./children.length }}}
		<div class="category-children row row-cols-2 g-2 my-1">
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
	{{{ if !./link }}}
	<div class="stats">
		<div class="card card-header">
			<i class="fa fa-fw fa-list"></i>
			<span class="{./unread-class} human-readable-number ff-secondary" title="{./totalTopicCount}" data-toFixed="0">{./totalTopicCount}</span>
			<span class="text-lowercase text-xs">[[global:topics]]</span>
		</div>
		<div class="card card-header">
			<i class="fa fa-fw fa-message"></i>
			<span class="{./unread-class} human-readable-number ff-secondary" title="{./totalPostCount}" data-toFixed="0">{./totalPostCount}</span>
			<span class="text-lowercase text-xs">[[global:posts]]</span>
		</div>
		</div>

		{{{ if !config.hideCategoryLastPost }}}
		<div component="topic/teaser" class="teaser">
			<!-- IMPORT partials/categories/lastpost.tpl -->
		</div>
		{{{ end }}}
		{{{ end }}}
</li>
