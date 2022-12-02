<li component="categories/category" data-cid="{./cid}" class="row clearfix category-{./cid}">
	<meta itemprop="name" content="{./name}">

	<div class="d-flex gap-3 col-12 {{{ if config.hideCategoryLastPost }}}col-md-10 col-sm-12{{{ else }}}col-md-7 col-sm-9{{{ end }}}">
		<div class="">
		{buildCategoryIcon(@value, "40px", "rounded-1")}
		</div>
		<div class="d-flex flex-column">
			<h2 class="title fw-bold fs-4">
				<!-- IMPORT partials/categories/link.tpl -->
			</h2>
			<div>
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
			</div>
			<span class="d-block d-sm-none float-end">
				{{{ if ./teaser.timestampISO }}}
				<a class="permalink" href="{./teaser.url}">
					<small class="timeago" title="{./teaser.timestampISO}"></small>
				</a>
				{{{ end }}}
			</span>
		</div>
	</div>

	{{{ if !./link }}}
	<div class="col-md-1 d-none d-md-block stats text-muted">
		<span class="{./unread-class} human-readable-number" title="{./totalTopicCount}">{./totalTopicCount}</span><br />
		<small>[[global:topics]]</small>
	</div>
	<div class="col-md-1 d-none d-md-block stats text-muted">
		<span class="{./unread-class} human-readable-number" title="{./totalPostCount}">{./totalPostCount}</span><br />
		<small>[[global:posts]]</small>
	</div>
	{{{ if !config.hideCategoryLastPost }}}
	<div class="col-md-3 col-sm-3 teaser d-none d-sm-block" component="topic/teaser">
		<!-- IMPORT partials/categories/lastpost.tpl -->
	</div>
	{{{ end }}}
	{{{ end }}}
</li>
