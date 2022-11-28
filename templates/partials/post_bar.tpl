<nav class="navbar navbar-expand-lg bg-light mt-4 p-2 border rounded topic-main-buttons">
	<ul class="navbar-nav me-auto gap-2">
		{{{ if loggedIn }}}
		<button component="topic/mark-unread" class="btn btn-link text-decoration-none text-dark d-flex gap-2 align-items-baseline">
			<i class="fa fa-fw fa-inbox link-primary"></i>
			<span class="visible-sm-inline visible-md-inline visible-lg-inline">[[topic:mark_unread]]</span>
		</button>
		{{{ end }}}

		<!-- IMPORT partials/topic/watch.tpl -->
		<!-- IMPORT partials/topic/sort.tpl -->
		<!-- IMPORT partials/thread_tools.tpl -->

		{{{ if (!feeds:disableRSS && rssFeedUrl) }}}
		<a class="btn btn-link" target="_blank" href="{rssFeedUrl}" itemprop="item"><i class="fa fa-rss"></i></a>
		{{{ end }}}

		<span class="loading-indicator btn float-start text-muted navbar-text hidden" done="0">
			<i class="fa fa-refresh fa-spin"></i>
			<span class="hidden-xs">[[topic:loading_more_posts]]</span>
		</span>
	</ul>
	<!-- IMPORT partials/topic/reply-button.tpl -->
</nav>
