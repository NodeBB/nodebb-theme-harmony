<nav class="sticky-tools navbar navbar-expand mt-4 p-0 border-0 rounded topic-main-buttons">
	<div class="card card-header flex-row p-2 border rounded ff-secondary w-100">
		<ul class="navbar-nav me-auto gap-2 align-items-center">
			{{{ if loggedIn }}}
			<button component="topic/mark-unread" class="btn btn-link d-flex gap-2 align-items-center">
				<i class="fa fa-fw fa-inbox small link-primary"></i>
				<span class="d-none d-md-inline small">[[topic:mark_unread]]</span>
			</button>
			{{{ end }}}

			<!-- IMPORT partials/topic/watch.tpl -->
			<!-- IMPORT partials/topic/sort.tpl -->
			<!-- IMPORT partials/topic/tools.tpl -->

			{{{ if (!feeds:disableRSS && rssFeedUrl) }}}
			<a class="btn btn-link link-primary" target="_blank" href="{rssFeedUrl}" itemprop="item"><i class="fa fa-rss"></i></a>
			{{{ end }}}

			<span class="loading-indicator btn float-start text-muted navbar-text hidden" done="0">
				<i class="fa fa-refresh fa-spin"></i>
				<span class="hidden-xs">[[topic:loading_more_posts]]</span>
			</span>
		</ul>
		<!-- IMPORT partials/topic/reply-button.tpl -->
	</div>

</nav>
