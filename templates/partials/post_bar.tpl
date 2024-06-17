<div class="{{{ if config.theme.stickyToolbar }}}sticky-tools{{{ end }}}">
	<nav class="d-flex flex-nowrap my-2 p-0 border-0 rounded topic-main-buttons">
		<div class="d-flex flex-row p-2 text-bg-light border rounded w-100 align-items-center">
			<div class="d-flex me-auto mb-0 gap-2 align-items-center flex-wrap">
				{{{ if loggedIn }}}
				<button component="topic/mark-unread" class="btn-ghost-sm ff-secondary d-flex gap-2 align-items-center">
					<i class="fa fa-fw fa-inbox text-primary"></i>
					<span class="d-none d-md-inline fw-semibold">[[topic:mark-unread]]</span>
				</button>
				{{{ end }}}

				<!-- IMPORT partials/topic/watch.tpl -->
				<!-- IMPORT partials/topic/sort.tpl -->
				<!-- IMPORT partials/topic/tools.tpl -->

				{{{ if (!feeds:disableRSS && rssFeedUrl) }}}
				<a class="btn-ghost-sm d-none d-lg-flex align-self-stretch" target="_blank" href="{rssFeedUrl}" title="[[global:rss-feed]]"><i class="fa fa-rss text-primary"></i></a>
				{{{ end }}}

				{{{ if browsingUsers }}}
				<div class="hidden-xs"><!-- IMPORT partials/topic/browsing-users.tpl --></div>
				{{{ end }}}
			</div>
			<!-- IMPORT partials/topic/reply-button.tpl -->
		</div>
	</nav>
</div>
