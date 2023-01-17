<nav class="{{{ if config.stickyToolbar }}}sticky-tools{{{ end }}} navbar navbar-expand mt-4 p-0 border-0 rounded topic-main-buttons">
	<div class="card card-header flex-row p-2 border rounded ff-secondary w-100">
		<ul class="navbar-nav me-auto gap-2 align-items-center">
			{{{ if loggedIn }}}
			<button component="topic/mark-unread" class="btn-ghost-sm d-flex gap-2 align-items-center">
				<i class="fa fa-fw fa-inbox text-primary"></i>
				<span class="d-none d-md-inline fw-semibold">[[topic:mark_unread]]</span>
			</button>
			{{{ end }}}

			<!-- IMPORT partials/topic/watch.tpl -->
			<!-- IMPORT partials/topic/sort.tpl -->
			<!-- IMPORT partials/topic/tools.tpl -->

			{{{ if (!feeds:disableRSS && rssFeedUrl) }}}
			<a class="btn-ghost-sm d-none d-lg-flex align-self-stretch" target="_blank" href="{rssFeedUrl}" itemprop="item"><i class="fa fa-rss text-primary"></i></a>
			{{{ end }}}

			{{{ if browsingUsers }}}
			<div class="hidden-xs">
			<!-- IMPORT partials/topic/browsing-users.tpl -->
			</div>
			{{{ end }}}
		</ul>
		<!-- IMPORT partials/topic/reply-button.tpl -->
	</div>

</nav>
