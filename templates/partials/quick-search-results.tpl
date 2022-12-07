{{{ if multiplePages }}}
<div class="show-more-container">
	<div class="text-center d-block d-md-none">
		<a href="{url}" class="btn btn-primary">
			[[search:see-more-results, {matchCount}]]
		</a>
	</div>
	<li role="separator" class="dropdown-divider d-block d-md-none"></li>
</div>
{{{ end }}}

<ul id="quick-search-results" class="quick-search-results list-unstyled mb-0 p-0 overflow-auto" style="max-width:400px; max-height: 500px;">
	<li role="separator" class="dropdown-divider d-none d-md-block"></li>
	{{{ each posts }}}
	<li data-tid="{posts.topic.tid}" data-pid="{posts.pid}" class="d-flex flex-column gap-1">
		<a href="{config.relative_path}/post/{posts.pid}"
			class="dropdown-item rounded-1 text-reset d-block text-truncate px-2 py-1">
			<span class="quick-search-title fw-semibold text-sm">{posts.topic.title}</span>
			<br/>
			<p class="snippet text-xs text-break text-wrap mb-0">
			{posts.snippet}
			</p>
		</a>
		<div class="d-flex gap-1 post-info px-2 text-xs">
			<div class="category-item d-inline-block">
				<span>{function.buildCategoryLabel, posts.category}</span>
			</div>
			<span class="timeago text-muted" title="{posts.timestampISO}"></span>
		</div>
	</li>
	<li role="separator" class="dropdown-divider"></li>
	{{{ end }}}

</ul>

{{{ if multiplePages }}}
<div class="text-center mt-2 d-none d-md-block">
	<a href="{url}" class="btn btn-sm btn-primary">
		[[search:see-more-results, {matchCount}]]
	</a>
</div>
{{{ end }}}

{{{if !posts.length}}}
<div class="text-center no-results">[[search:no-matches]]</li>
<li role="separator" class="dropdown-divider d-block d-md-none"></li>
{{{end}}}