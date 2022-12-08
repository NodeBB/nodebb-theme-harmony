<ul component="category" class="list-unstyled topic-list" itemscope itemtype="http://www.schema.org/ItemList" data-nextstart="{nextStart}" data-set="{set}">
	{{{each topics}}}
	<li component="category/topic" class="row clearfix category-item pb-4 {function.generateTopicClass}" <!-- IMPORT partials/data/category.tpl -->>
		<link itemprop="url" content="{config.relative_path}/topic/{./slug}" />
		<meta itemprop="name" content="{function.stripTags, ./title}" />
		<meta itemprop="itemListOrder" content="descending" />
		<meta itemprop="position" content="{./index}" />
		<a id="{./index}" data-index="{./index}" component="topic/anchor"></a>

		<div class="col-md-6 col-sm-9 col-10 content d-flex gap-2">
			<div class="avatar">
				{{{ if showSelect }}}
				<div class="select" component="topic/select">
					{{{ if ./thumbs.length }}}
					<img src="{./thumbs.0.url}" class="not-responsive" />
					{{{ else }}}
					{buildAvatar(../user, "40px", true, "not-responsive")}
					{{{ end }}}
					<i class="fa fa-check"></i>
				</div>
				{{{ end }}}

				{{{ if !showSelect }}}
				<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" class="">
					{{{ if ./thumbs.length }}}
					<img src="{./thumbs.0.url}" class="not-responsive" />
					{{{ else }}}
					{buildAvatar(../user, "40px", true, "not-responsive")}
					{{{ end }}}
				</a>
				{{{ end }}}
			</div>
			<div class="d-flex flex-column">
				<h2 component="topic/header" class="title mb-1 fs-5 fw-bold">
					<i component="topic/scheduled" class="fa fa-clock-o {{{ if !topics.scheduled }}}hide{{{ end }}}" title="[[topic:scheduled]]"></i>
					<i component="topic/pinned" class="fa fa-thumb-tack {{{ if (topics.scheduled || !topics.pinned) }}}hide{{{ end }}}" title="{{{ if !../pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {../pinExpiryISO}]]{{{ end }}}"></i>
					<i component="topic/locked" class="fa fa-lock {{{ if !topics.locked }}}hide{{{ end }}}" title="[[topic:locked]]"></i>
					<i component="topic/moved" class="fa fa-arrow-circle-right {{{ if !topics.oldCid }}}hide{{{ end }}}" title="[[topic:moved]]"></i>
					{{{each topics.icons}}}{@value}{{{end}}}

					{{{ if topics.noAnchor }}}
					<span>{./title}</span>
					{{{ else }}}
					<a class="text-reset" href="{config.relative_path}/topic/{./slug}{{{ if ./bookmark }}}/{./bookmark}{{{ end }}}">{./title}</a>
					{{{ end }}}
				</h2>
				<div class="info">
					<!-- IF !template.category -->
					<div class="category-item d-inline-block">
						{buildCategoryIcon(./category, "24px", "rounded-circle")}
						<a class="text-muted" href="{config.relative_path}/category/{topics.category.slug}">{topics.category.name}</a>
					</div>
					&bull;
					<!-- ENDIF !template.category -->

					{{{ if topics.tags.length }}}
					<span class="tag-list hidden-xs">
						{{{ each ./tags }}}
						<!-- IMPORT partials/topic/tag.tpl -->
						{{{ end }}}
						&bull;
					</span>
					{{{ end }}}

					<span class="hidden-xs"><span class="timeago text-muted" title="{./timestampISO}"></span> &bull; <a class="text-muted" href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">{./user.displayname}</a></span>

					<span class="visible-xs-inline timeago text-muted" title="{{{ if ./teaser.timestampISO }}}{./teaser.timestampISO}{{{ else }}}{./timestampISO}{{{ end }}}"></span>
				</div>
			</div>
		</div>

		<div class="mobile-stat col-2 visible-xs text-end">
			<span class="human-readable-number">{topics.postcount}</span> <a href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}"><i class="fa fa-arrow-circle-right"></i></a>
		</div>


		<div class="col-md-3 d-none d-md-flex stats text-muted gap-2 px-0">
			<div class="stats-votes flex-grow-1">
				<div class="d-flex flex-column align-items-center text-secondary bg-light p-2 rounded-1">
					{{{ if !reputation:disabled }}}
					<span class="human-readable-number fs-5 fw-semibold ff-secondary" title="{./votes}">{./votes}</span>
					<span class="text-lowercase text-xs">[[global:votes]]</span>
					{{{ end }}}
				</div>
			</div>
			<div class="stats-postcount flex-grow-1">
				<div class="d-flex flex-column align-items-center text-secondary bg-light p-2 rounded-1">
					<span class="human-readable-number fs-5 fw-semibold ff-secondary" title="{./postcount}">{./postcount}</span>
					<span class="text-lowercase text-xs">[[global:posts]]</span>
				</div>
			</div>
			<div class="stats-viewcount flex-grow-1">
				<div class="d-flex flex-column align-items-center text-secondary bg-light p-2 rounded-1">
					<span class="human-readable-number fs-5 fw-semibold ff-secondary" title="{./viewcount}">{./viewcount}</span>
					<span class="text-lowercase text-xs">[[global:views]]</span>
				</div>
			</div>
		</div>

		<div class="col-md-3 col-sm-3 teaser hidden-xs overflow-hidden" component="topic/teaser">
			<div class="lastpost background-link-container" style="border-color: {topics.category.bgColor}">
				<a class="background-link" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}"></a>
				<!-- IF topics.unreplied -->
				<p>
					[[category:no_replies]]
				</p>
				<!-- ELSE -->
				<!-- IF topics.teaser.pid -->
				<p>
					<a href="{config.relative_path}/user/{topics.teaser.user.userslug}">{buildAvatar(topics.teaser.user, "24px", true, "not-responsive")}</a>
					<a class="permalink text-muted" href="{config.relative_path}/topic/{topics.slug}/{topics.teaser.index}">
						<span class="timeago" title="{topics.teaser.timestampISO}"></span>
					</a>
				</p>
				<div class="post-content mt-2 overflow-hidden text-xs line-clamp-3">
					{./teaser.content}
				</div>
				<!-- ENDIF topics.teaser.pid -->
				<!-- ENDIF topics.unreplied -->
			</div>
		</div>
	</li>
	{{{end}}}
</ul>
