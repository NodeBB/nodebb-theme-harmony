<nav class="topic-list-header sticky-tools navbar navbar-expand p-0 border-0 rounded">
	<div class="card card-header flex-row p-2 border rounded ff-secondary w-100">
		<ul class="navbar-nav me-auto gap-2 align-items-center">
			{{{ if template.category }}}
			<!-- IMPORT partials/category/watch.tpl -->
			<!-- IMPORT partials/category/sort.tpl -->
			{{{ end }}}
			{{{ if (template.popular || template.top)}}}
			<!-- IMPORT partials/topic-terms.tpl -->
			{{{ end }}}
			{{{ if (template.unread || (template.recent || (template.popular || template.top))) }}}
			<!-- IMPORT partials/topic-filters.tpl -->
			<!-- IMPORT partials/category-filter.tpl -->
			{{{ end }}}
			{{{ if template.unread }}}
			<div class="markread btn-group {{{ if !topics.length }}}hidden{{{ end }}}">
				<!-- IMPORT partials/category-selector.tpl -->
			</div>
			{{{ end }}}
			{{{ if template.tag }}}
			<!-- IMPORT partials/category-filter.tpl -->
			{{{ end }}}
			<!-- IMPORT partials/category/tools.tpl -->

			{{{ if (!feeds:disableRSS && rssFeedUrl) }}}
			<a class="btn btn-link link-primary" target="_blank" href="{rssFeedUrl}" itemprop="item"><i class="fa fa-rss"></i></a>
			{{{ end }}}

			<a href="{config.relative_path}{{{ if template.category }}}{url}{{{ else }}}/{selectedFilter.url}{querystring}{{{ end }}}" class="d-inline-block">
				<div class="alert alert-warning h-100 m-0 px-2 py-1 d-flex align-items-center hide" id="new-topics-alert"></div>
			</a>
		</ul>

		<div class="d-flex gap-1 align-items-stretch">
			{{{ if template.category }}}
				{{{ if privileges.topics:create }}}
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary text-nowrap" data-ajaxify="false" role="button">[[category:new_topic_button]]</a>
				{{{ else }}}
					{{{ if !loggedIn }}}
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					{{{ end }}}
				{{{ end }}}
			{{{ else }}}
				{{{ if canPost }}}
				<!-- IMPORT partials/buttons/newTopic.tpl -->
				{{{ else }}}
					{{{ if !loggedIn }}}
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					{{{ end }}}
				{{{ end }}}
			{{{ end }}}
		</div>
	</div>
</nav>