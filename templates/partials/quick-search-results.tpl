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
	<li data-tid="{posts.topic.tid}" data-pid="{posts.pid}">
		<a href="{config.relative_path}/post/{posts.pid}"
			class="text-reset clearfix d-block text-truncate px-2 py-1">
			<span class="quick-search-title fw-bold">{posts.topic.title}</span>
			<br/>
			<p class="snippet text-break text-wrap">
			{posts.snippet}
			</p>
			<span class="post-info">
				<div class="category-item d-inline-block">
					<span>{function.buildCategoryLabel, posts.category}</span>
					<span class="timeago text-muted" title="{posts.timestampISO}"></span>
				</div>
			</span>
		</a>
	</li>
	<li role="separator" class="dropdown-divider"></li>
	{{{ end }}}

</ul>

{{{ if multiplePages }}}
<div class="text-center mt-2 d-none d-md-block">
	<a href="{url}" class="btn btn-primary ">
		[[search:see-more-results, {matchCount}]]
	</a>
</div>
{{{ end }}}

{{{if !posts.length}}}
<div class="text-center no-results">[[search:no-matches]]</li>
<li role="separator" class="dropdown-divider d-block d-md-none"></li>
{{{end}}}