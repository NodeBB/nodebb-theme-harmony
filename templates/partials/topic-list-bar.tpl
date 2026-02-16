<div class="{{{ if config.theme.stickyToolbar }}}sticky-tools{{{ end }}} mb-3" style="top: {{{ if (config.theme.topMobilebar && !config.theme.autohideBottombar) }}}var(--panel-offset){{{ else }}}0{{{ end }}};">
	<nav class="topic-list-header d-flex flex-nowrap my-2 p-0 border-0 rounded">
		<div class="d-flex flex-row p-2 text-bg-light gap-1 border rounded w-100 align-items-center">
			<div component="category/controls" class="d-flex flex-wrap align-items-stretch me-auto mb-0 gap-2">
				{{{ if template.category }}}
				<!-- IMPORT partials/category/watch.tpl -->
				<!-- IMPORT partials/tags/filter-dropdown-left.tpl -->
				<!-- IMPORT partials/category/sort.tpl -->
				{{{ end }}}
				{{{ if (template.popular || template.top)}}}
				<!-- IMPORT partials/topic-terms.tpl -->
				{{{ end }}}
				{{{ if (template.unread || (template.recent || (template.popular || template.top))) }}}
				<!-- IMPORT partials/topic-filters.tpl -->
				<!-- IMPORT partials/category/filter-dropdown-left.tpl -->
				<!-- IMPORT partials/tags/filter-dropdown-left.tpl -->
				{{{ end }}}
				{{{ if template.unread }}}
				<div class="markread {{{ if !topics.length }}}hidden{{{ end }}}">
					<!-- IMPORT partials/category/selector-dropdown-left.tpl -->
				</div>
				{{{ end }}}
				{{{ if template.tag }}}
				<!-- IMPORT partials/category/filter-dropdown-left.tpl -->
				<!-- IMPORT partials/tags/watch.tpl -->
				{{{ end }}}

				{{{ if template.world }}}
				<div class="dropdown bottom-sheet">
					<button class="btn btn-ghost btn-sm ff-secondary d-flex gap-2 align-items-center dropdown-toggle" data-bs-toggle="dropdown">
						<i class="fa fa-fw fa-arrow-down-wide-short text-primary"></i>
						<span id="sort-label" class="visible-md-inline visible-lg-inline fw-semibold"></span>
					</button>
					<ul class="dropdown-menu" id="sort-options">
						<li><a class="dropdown-item rounded-1" href="{config.relative_path}/world">[[world:latest]]</a></li>
						<li><a class="dropdown-item rounded-1" href="{config.relative_path}/world?sort=popular&term=day">[[world:popular-day]]</a></li>
						<li><a class="dropdown-item rounded-1" href="{config.relative_path}/world?sort=popular&term=week">[[world:popular-week]]</a></li>
						<li><a class="dropdown-item rounded-1" href="{config.relative_path}/world?sort=popular&term=month">[[world:popular-month]]</a></li>
						<li><a class="dropdown-item rounded-1" href="{config.relative_path}/world?sort=popular&term=year">[[world:popular-year]]</a></li>
						<li><a class="dropdown-item rounded-1" href="{config.relative_path}/world?sort=popular&term=alltime">[[world:popular-alltime]]</a></li>
					</ul>
				</div>
				<a class="btn btn-ghost btn-sm ff-secondary d-flex gap-2 align-items-center fw-semibold" href="#" id="world-help">
					<i class="fa fa-question text-primary"></i>
					<span class="visible-md-inline visible-lg-inline">[[world:help]]</span>
				</a>
				{{{ end }}}

				<!-- IMPORT partials/category/tools-dropdown-left.tpl -->

				{{{ if (!feeds:disableRSS && rssFeedUrl) }}}
				<a class="btn btn-ghost btn-sm d-none d-lg-flex align-items-center align-self-stretch" target="_blank" href="{rssFeedUrl}" itemprop="item" title="[[global:rss-feed]]"><i class="fa fa-rss text-primary"></i></a>
				{{{ end }}}

				<a href="{{{ if (template.category || template.world) }}}{url}{{{ else }}}{config.relative_path}/{selectedFilter.url}{querystring}{{{ end }}}" class="btn btn-secondary fw-semibold position-absolute top-100 translate-middle-x start-50 mt-1 hide" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;" id="new-topics-alert">
					<i class="fa fa-fw fa-arrow-up"></i> [[recent:load-new-posts]]
				</a>
			</div>

			<div class="d-flex gap-1 align-items-center">
				{{{ if (template.category || template.world) }}}
					{{{ if privileges.topics:create }}}
					<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary btn-sm text-nowrap" data-ajaxify="false" role="button">[[category:new-topic-button]]</a>
					{{{ end }}}
				{{{ else }}}
					{{{ if canPost }}}
					<!-- IMPORT partials/buttons/newTopic.tpl -->
					{{{ end }}}
				{{{ end }}}
				<!-- only show login button if not logged in and doesn't have any posting privilege -->
				{{{ if (!loggedIn && (!privileges.topics:create && !canPost))}}}
				<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-sm btn-primary">[[category:guest-login-post]]</a>
				{{{ end }}}
			</div>
		</div>
	</nav>
</div>