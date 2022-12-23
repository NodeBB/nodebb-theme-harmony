{{{ if widgets.header.length }}}
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
{{{ end }}}

<!-- IMPORT partials/breadcrumbs.tpl -->

<h2 component="post/header" class="fs-2 mb-3" itemprop="name">
	<span class="topic-title" component="topic/title">{title}</span>
</h2>

<div class="topic-info d-flex gap-2 align-items-center">
	<span component="topic/labels" class="d-flex gap-2">
		<span component="topic/scheduled" class="badge bg-primary {{{ if !scheduled }}}hidden{{{ end }}}">
			<i class="fa fa-clock-o"></i>
			[[topic:scheduled]]
		</span>
		<span component="topic/pinned" class="badge bg-primary {{{ if (scheduled || !pinned) }}}hidden{{{ end }}}">
			<i class="fa fa-thumb-tack"></i>
			{{{ if !pinExpiry }}}[[topic:pinned]]{{{ else }}}[[topic:pinned-with-expiry, {pinExpiryISO}]]{{{ end }}}
		</span>
		<span component="topic/locked" class="badge bg-primary {{{ if !locked }}}hidden{{{ end }}}">
			<i class="fa fa-lock"></i>
			[[topic:locked]]
		</span>
		<span class="badge bg-primary {{{ if !oldCid }}}hidden{{{ end }}}">
			<i class="fa fa-arrow-circle-right"></i>
			{{{ if privileges.isAdminOrMod }}}[[topic:moved-from, {oldCategory.name}]]{{{ else }}}[[topic:moved]]{{{ end }}}
		</span>
		{{{each icons}}}<span class="align-middle">{@value}</span>{{{end}}}
	</span>
	<a class="lh-1" href="{config.relative_path}/category/{category.slug}">{function.buildCategoryLabel, category}</a>
	<div class="lh-1 tags tag-list d-flex hidden-xs gap-2"><!-- IMPORT partials/topic/tags.tpl --></div>
	<div class="d-flex hidden-xs gap-2">
		<!-- IMPORT partials/topic/stats.tpl -->
	</div>
</div>

<div class="row">
	<div class="topic {{{ if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<!-- IMPORT partials/post_bar.tpl -->

		{{{ if merger }}}
		<!-- IMPORT partials/topic/merged-message.tpl -->
		{{{ end }}}

		{{{ if !scheduled }}}
		<!-- IMPORT partials/topic/deleted-message.tpl -->
		{{{ end }}}

		<ul component="topic" class="posts timeline mt-sm-4 p-0 py-3" data-tid="{tid}" data-cid="{cid}">
			{{{each posts}}}
				<li component="post" class="pt-4 {{{ if posts.deleted }}}deleted{{{ end }}} {{{ if posts.selfPost }}}self-post{{{ end }}} {{{ if posts.topicOwnerPost }}}topic-owner-post{{{ end }}}" <!-- IMPORT partials/data/topic.tpl -->>
					<a component="post/anchor" data-index="{posts.index}" id="{posts.index}"></a>

					<meta itemprop="datePublished" content="{posts.timestampISO}">
					<meta itemprop="dateModified" content="{posts.editedISO}">

					<!-- IMPORT partials/topic/post.tpl -->
				</li>
				{{{ if (config.topicPostSort != "most_votes") }}}
				{{{ each ./events}}}
				<!-- IMPORT partials/topic/event.tpl -->
				{{{ end }}}
				{{{ end }}}
			{{{end}}}
		</ul>

		{{{ if browsingUsers }}}
		<div class="visible-xs">
			<!-- IMPORT partials/topic/browsing-users.tpl -->
			<hr/>
		</div>
		{{{ end }}}

		{{{ if config.enableQuickReply }}}
		<!-- IMPORT partials/topic/quickreply.tpl -->
		{{{ end }}}

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
