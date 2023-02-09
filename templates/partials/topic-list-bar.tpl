<div class="{{{ if config.theme.stickyToolbar }}}sticky-tools{{{ end }}}">
	<nav class="topic-list-header navbar navbar-expand p-0 border-0 rounded my-2">
		<div class="card card-header flex-row p-2 gap-1 border rounded w-100">
			<ul component="category/controls" class="navbar-nav me-auto gap-2 align-items-center">
				{{{ if template.category }}}
				<!-- IMPORT partials/category/watch.tpl -->
				<!-- IMPORT partials/category/sort.tpl -->
				{{{ end }}}
				{{{ if (template.popular || template.top)}}}
				<!-- IMPORT partials/topic-terms.tpl -->
				{{{ end }}}
				{{{ if (template.unread || (template.recent || (template.popular || template.top))) }}}
				<!-- IMPORT partials/topic-filters.tpl -->
				<!-- IMPORT partials/category/filter-dropdown-left.tpl -->
				{{{ end }}}
				{{{ if template.unread }}}
				<div class="markread btn-group {{{ if !topics.length }}}hidden{{{ end }}}">
					<!-- IMPORT partials/category/selector-dropdown-left.tpl -->
				</div>
				{{{ end }}}
				{{{ if template.tag }}}
				<!-- IMPORT partials/category/filter-dropdown-left.tpl -->
				{{{ end }}}
				<!-- IMPORT partials/category/tools.tpl -->

				{{{ if (!feeds:disableRSS && rssFeedUrl) }}}
				<a class="btn-ghost-sm d-none d-lg-flex align-self-stretch" target="_blank" href="{rssFeedUrl}" itemprop="item"><i class="fa fa-rss text-primary"></i></a>
				{{{ end }}}

				<a href="{config.relative_path}{{{ if template.category }}}{url}{{{ else }}}/{selectedFilter.url}{querystring}{{{ end }}}" class="d-inline-block text-decoration-none">
					<div class="d-md-block alert alert-warning h-100 m-0 px-2 py-1 line-clamp-2 text-sm text-break hide" id="new-topics-alert">There is a new post. Click here to reload.</div>
				</a>
			</ul>

			<div class="d-flex gap-1 align-items-center">
				{{{ if template.category }}}
					{{{ if privileges.topics:create }}}
					<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary btn-sm text-nowrap" data-ajaxify="false" role="button">[[category:new_topic_button]]</a>
					{{{ end }}}
				{{{ else }}}
					{{{ if canPost }}}
					<!-- IMPORT partials/buttons/newTopic.tpl -->
					{{{ end }}}
				{{{ end }}}
				<!-- only show login button if not logged in and doesn't have any posting privilege -->
				{{{ if (!loggedIn && (!privileges.topics:create && !canPost))}}}
				<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
				{{{ end }}}
			</div>
		</div>
	</nav>
</div>