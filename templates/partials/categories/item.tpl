<li component="categories/category" data-cid="{./cid}" class="row clearfix category-{./cid}">
	<meta itemprop="name" content="{./name}">

	<div class="d-flex gap-3 col-12 {{{ if config.hideCategoryLastPost }}}col-md-10 col-sm-12{{{ else }}}col-md-7 col-sm-9{{{ end }}}">
		<div class="">
		{buildCategoryIcon(@value, "40px", "rounded-1")}
		</div>
		<div class="d-flex flex-column gap-1 flex-1">
			<h2 class="title fw-semibold fs-4 m-0 tracking-tight">
				<!-- IMPORT partials/categories/link.tpl -->
			</h2>
			{{{ if ./descriptionParsed }}}
			<div class="description text-muted text-xs">
				{./descriptionParsed}
			</div>
			{{{ end }}}
			{{{ if !config.hideSubCategories }}}
			{{{ if ./children.length }}}
			<div class="category-children row row-cols-2 g-2">
				{{{ each ./children }}}
				{{{ if !./isSection }}}
				<span class="category-children-item small">
					{{{ if ./link }}}
					<div class="d-flex align-items-center gap-1"><i class="fa fa-fw fa-caret-right text-primary"></i><a href="{./link}" class="text-dark fw-semibold">{./name}</a></div>
					{{{ else }}}
					<div class="d-flex align-items-center gap-1"><i class="fa fa-fw fa-caret-right text-primary"></i><a href="{config.relative_path}/category/{./slug}" class="text-dark fw-semibold">{./name}</a></div>
					{{{ end }}}
				</span>
				{{{ end }}}
				{{{ end }}}
			</div>
			{{{ end }}}
			{{{ end }}}
		</div>
	</div>
	<div class="row col-md-5 col-sm-3 d-none d-md-flex align-self-start">
		{{{ if !./link }}}
		<div class="col-md-5 d-none d-lg-flex stats text-muted gap-2 px-0">
			<div class="w-50">
				<div class="card card-header align-items-center px-0 py-2 border-0 rounded-1">
					<span class="{./unread-class} human-readable-number fs-5 ff-secondary" title="{./totalTopicCount}">{./totalTopicCount}</span>
					<span class="text-lowercase text-xs">[[global:topics]]</span>
				</div>
			</div>
			<div class="w-50">
				<div class="card card-header align-items-center px-0 py-2 border-0 rounded-1">
					<span class="{./unread-class} human-readable-number fs-5 ff-secondary" title="{./totalPostCount}">{./totalPostCount}</span>
					<span class="text-lowercase text-xs">[[global:posts]]</span>
				</div>
			</div>
		</div>

		{{{ if !config.hideCategoryLastPost }}}
		<div class="col-md-7 col-sm-3 teaser d-none d-sm-block" component="topic/teaser">
			<!-- IMPORT partials/categories/lastpost.tpl -->
		</div>
		{{{ end }}}
		{{{ end }}}
	</div>
</li>
