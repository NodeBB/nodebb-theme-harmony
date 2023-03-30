<ul component="category" class="topics-list list-unstyled {{{ if template.account/topics }}}narrow{{{ end}}}" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">

	{{{ each topics }}}
	<li component="category/topic" class="category-item position-relative {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<link itemprop="url" content="{config.relative_path}/topic/{./slug}" />
		<meta itemprop="name" content="{function.stripTags, ./title}" />
		<meta itemprop="itemListOrder" content="descending" />
		<meta itemprop="position" content="{./index}" />
		<a id="{./index}" data-index="{./index}" component="topic/anchor"></a>


		<div class="thumb-avatar-box">
			{{{ if ./thumbs.length }}}
			<a class="text-decoration-none" href="{./thumbs.0.url}" target="_blank">
				<img class="topic-thumb rounded-1" width="40" style="height: auto;" src="{./thumbs.0.url}"/>
			</a>
			{{{ else }}}
			<a class="text-decoration-none" href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">
				{buildAvatar(./user, "40px", true, "avatar avatar-tooltip")}
			</a>
			{{{ end }}}
		</div>

		<div class="wrapper">
			<div class="wrapper2">
				<div class="title_badges">
					<h2 component="topic/header" class="text-break title text-md fw-semibold m-0">
						{{{ if topics.noAnchor }}}
						<span>{./title}</span>
						{{{ else }}}
						<a class="text-reset" href="{config.relative_path}/topic/{./slug}{{{ if ./bookmark }}}/{./bookmark}{{{ end }}}">{./title}</a>
						{{{ end }}}
					</h2>
					<div class="info">
						<span component="topic/labels" class="d-flex flex-wrap gap-1 {{{ if (!./scheduled && (!./pinned && (!./locked && (!./oldCid && !./icons.length)))) }}}hidden{{{ end }}}">
							<span component="topic/scheduled" class="badge border border-gray-300 text-primary {{{ if !./scheduled }}}hidden{{{ end }}}">
								<i class="fa fa-clock-o"></i>
								[[topic:scheduled]]
							</span>
							<span component="topic/pinned" class="badge border border-gray-300 text-primary {{{ if (./scheduled || !./pinned) }}}hidden{{{ end }}}">
								<i class="fa fa-thumb-tack"></i>
								{{{ if !./pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {./pinExpiryISO}]]{{{ end }}}
							</span>
							<span component="topic/locked" class="badge border border-gray-300 text-primary {{{ if !./locked }}}hidden{{{ end }}}">
								<i class="fa fa-lock"></i>
								[[topic:locked]]
							</span>
							<span class="badge border border-gray-300 text-primary {{{ if !./oldCid }}}hidden{{{ end }}}">
								<i class="fa fa-arrow-circle-right"></i>
								[[topic:moved]]
							</span>
							{{{each ./icons}}}<span class="lh-1">{@value}</span>{{{end}}}
						</span>
						{{{ if !template.category }}}
						<a class="lh-1" href="{config.relative_path}/category/{./category.slug}">{function.buildCategoryLabel, ./category, "border"}</a>
						{{{ end }}}
						{{{ if ./tags.length }}}
						<span class="lh-1 tag-list hidden-xs d-flex flex-wrap gap-1">
							{{{ each ./tags }}}
							<a href="{config.relative_path}/tags/{./valueEncoded}"><span class="badge border border-gray-300 text-xs fw-normal tag tag-class-{./class}" data-tag="{./value}">{./valueEscaped}</span></a>
							{{{ end }}}
						</span>
						{{{ end }}}
						<span class="hidden-xs text-xs timeago text-muted" title="{./timestampISO}"></span>
					</div>
				</div>
				<div class="meta stats">
					{{{ if !reputation:disabled }}}
					<div class="stats-votes card card-header">
						<i class="fa fa-fw fa-thumbs-up"></i>
						<span class="human-readable-number ff-secondary" title="{./votes}" data-toFixed="0">{./votes}</span>
						<span class="text-lowercase text-xs">[[global:votes]]</span>
					</div>
					{{{ end }}}
					<div class="stats-postcount card card-header">
						<i class="fa fa-fw fa-bars"></i>
						<span class="human-readable-number ff-secondary" title="{./postcount}" data-toFixed="0">{./postcount}</span>
						<span class="text-lowercase text-xs">[[global:posts]]</span>
					</div>
					<div class="stats-viewcount card card-header">
						<i class="fa fa-fw fa-eye"></i>
						<span class="human-readable-number ff-secondary" title="{./viewcount}" data-toFixed="0">{./viewcount}</span>
						<span class="text-lowercase text-xs">[[global:views]]</span>
					</div>
				</div>
			</div>

			<div class="meta teaser" component="topic/teaser">
				<div class="lastpost background-link-container border-start border-2" style="border-color: {./category.bgColor}!important;">
					<a class="background-link" href="{config.relative_path}/topic/{./slug}/{./teaser.index}"></a>
					{{{ if ./unreplied }}}
					<p class="ps-2 text-xs lh-1">
						[[category:no_replies]]
					</p>
					{{{ else }}}
					{{{ if ./teaser.pid }}}
					<p class="ps-2 mb-0 lh-1">
						<a href="{config.relative_path}/user/{./teaser.user.userslug}" class="text-decoration-none">{buildAvatar(./teaser.user, "18px", true, "avatar-tooltip not-responsive")}</a>
						<a class="permalink text-muted timeago text-xs" href="{config.relative_path}/topic/{./slug}/{./teaser.index}" title="{./teaser.timestampISO}">
						</a>
					</p>
					<div class="post-content text-xs ps-2">
						{./teaser.content}
					</div>
					{{{ end }}}
					{{{ end }}}
				</div>
			</div>

		</div><!-- /wrapper -->

		{{{ if showSelect }}}
		<div class="checkbox">
			<i component="topic/select" class="fa fa-square-o fs-5 text-muted pointer"></i>
		</div>
		{{{ end }}}
	</li>
	{{{end}}}

</ul>
