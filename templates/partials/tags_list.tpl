{{{each tags}}}
<h5 class="tag-container fw-bold d-flex">
	<a class="text-truncate" href="{config.relative_path}/tags/{tags.valueEncoded}" data-tag="{tags.valueEscaped}"><span class="tag-item text-muted text-uppercase text-nowrap tag-class-{tags.class} me-2" data-tag="{tags.valueEscaped}">{tags.valueEscaped}</span></a>
	<span class="tag-topic-count text-primary text-nowrap human-readable-number" title="{tags.score}">{tags.score}</span>
</h5>
{{{end}}}