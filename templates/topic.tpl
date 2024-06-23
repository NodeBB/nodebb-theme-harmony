<!-- IMPORT partials/breadcrumbs-json-ld.tpl -->
{{{ if config.theme.enableBreadcrumbs }}}
<!-- IMPORT partials/breadcrumbs.tpl -->
{{{ end }}}
{{{ if widgets.header.length }}}
<div data-widget-area="header">
{{{each widgets.header}}}
{{widgets.header.html}}
{{{end}}}
</div>
{{{ end }}}

<div itemid="{url}" itemscope itemtype="https://schema.org/DiscussionForumPosting">
	<meta itemprop="headline" content="{escape(titleRaw)}">
	<meta itemprop="text" content="{escape(titleRaw)}">
	<meta itemprop="url" content="{url}">
	<meta itemprop="datePublished" content="{timestampISO}">
	<meta itemprop="dateModified" content="{lastposttimeISO}">
	<div itemprop="author" itemscope itemtype="https://schema.org/Person">
		<meta itemprop="name" content="{author.username}">
		{{{ if author.userslug }}}<meta itemprop="url" content="{config.relative_path}/user/{author.userslug}">{{{ end }}}
	</div>

	<div class="d-flex flex-column gap-3">
		<div class="d-flex flex-wrap">
			<div class="d-flex flex-column gap-3 flex-grow-1">
				<h1 component="post/header" class="tracking-tight fw-semibold fs-3 mb-0 text-break {{{ if config.theme.centerHeaderElements }}}text-center{{{ end }}}">
					<span class="topic-title" component="topic/title">{title}</span>
				</h1>

				<div class="topic-info d-flex gap-2 align-items-center flex-wrap {{{ if config.theme.centerHeaderElements }}}justify-content-center{{{ end }}}">
					<span component="topic/labels" class="d-flex gap-2 {{{ if (!scheduled && (!pinned && (!locked && (!oldCid && !icons.length)))) }}}hidden{{{ end }}}">
						<span component="topic/scheduled" class="badge badge border border-gray-300 text-body {{{ if !scheduled }}}hidden{{{ end }}}">
							<i class="fa fa-clock-o"></i> [[topic:scheduled]]
						</span>
						<span component="topic/pinned" class="badge badge border border-gray-300 text-body {{{ if (scheduled || !pinned) }}}hidden{{{ end }}}">
							<i class="fa fa-thumb-tack"></i> {{{ if !pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {isoTimeToLocaleString(./pinExpiryISO, config.userLang)}]]{{{ end }}}
						</span>
						<span component="topic/locked" class="badge badge border border-gray-300 text-body {{{ if !locked }}}hidden{{{ end }}}">
							<i class="fa fa-lock"></i> [[topic:locked]]
						</span>
						<a component="topic/moved" href="{config.relative_path}/category/{oldCid}" class="badge badge border border-gray-300 text-body text-decoration-none {{{ if (!oldCid || (oldCid == "-1")) }}}hidden{{{ end }}}">
							<i class="fa fa-arrow-circle-right"></i> {{{ if privileges.isAdminOrMod }}}[[topic:moved-from, {oldCategory.name}]]{{{ else }}}[[topic:moved]]{{{ end }}}
						</a>
						{{{each icons}}}<span class="lh-1">{@value}</span>{{{end}}}
					</span>
					{function.buildCategoryLabel, category, "a", "border"}
					<div data-tid="{./tid}" component="topic/tags" class="lh-1 tags tag-list d-flex flex-wrap hidden-xs hidden-empty gap-2"><!-- IMPORT partials/topic/tags.tpl --></div>
					<div class="d-flex hidden-xs gap-2"><!-- IMPORT partials/topic/stats.tpl --></div>
				</div>
			</div>
			<div class="d-flex gap-2 justify-content-end align-items-center mt-2 hidden-empty" component="topic/thumb/list"><!-- IMPORT partials/topic/thumbs.tpl --></div>
		</div>

		<div class="row mb-4 mb-lg-0">
			<div class="topic {{{ if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
				<!-- IMPORT partials/post_bar.tpl -->
				{{{ if merger }}}
				<!-- IMPORT partials/topic/merged-message.tpl -->
				{{{ end }}}
				{{{ if forker }}}
				<!-- IMPORT partials/topic/forked-message.tpl -->
				{{{ end }}}
				{{{ if !scheduled }}}
				<!-- IMPORT partials/topic/deleted-message.tpl -->
				{{{ end }}}

				<div class="d-flex gap-0 gap-lg-5">
					<div class="posts-container" style="min-width: 0;">
						<ul component="topic" class="posts timeline list-unstyled mt-sm-2 p-0 py-3" style="min-width: 0;" data-tid="{tid}" data-cid="{cid}">
						{{{ each posts }}}
							<li component="post" class="pt-4 {{{ if posts.deleted }}}deleted{{{ end }}} {{{ if posts.selfPost }}}self-post{{{ end }}} {{{ if posts.topicOwnerPost }}}topic-owner-post{{{ end }}}" <!-- IMPORT partials/data/topic.tpl -->>
								<a component="post/anchor" data-index="{./index}" id="{increment(./index, "1")}"></a>
								<meta itemprop="datePublished" content="{./timestampISO}">
								{{{ if ./editedISO }}}
								<meta itemprop="dateModified" content="{./editedISO}">
								{{{ end }}}

								<!-- IMPORT partials/topic/post.tpl -->
							</li>
							{{{ if (config.topicPostSort != "most_votes") }}}
							{{{ each ./events}}}<!-- IMPORT partials/topic/event.tpl -->{{{ end }}}
							{{{ end }}}
						{{{ end }}}
						</ul>
						{{{ if browsingUsers }}}
						<div class="visible-xs">
							<!-- IMPORT partials/topic/browsing-users.tpl -->
							<hr/>
						</div>
						{{{ end }}}
						{{{ if config.theme.enableQuickReply }}}
						<!-- IMPORT partials/topic/quickreply.tpl -->
						{{{ end }}}
					</div>

					<!-- IMPORT partials/topic/navigator.tpl -->
				</div>

				{{{ if config.usePagination }}}
				<!-- IMPORT partials/paginator.tpl -->
				{{{ end }}}
			</div>
			<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
			{{{each widgets.sidebar}}}
			{{widgets.sidebar.html}}
			{{{end}}}
			</div>
		</div>
	</div>
</div>

<div data-widget-area="footer">
{{{each widgets.footer}}}
{{widgets.footer.html}}
{{{end}}}
</div>

{{{ if !config.usePagination }}}
<noscript>
<!-- IMPORT partials/paginator.tpl -->
</noscript>
{{{ end }}}
