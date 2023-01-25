{{{each tags}}}
<div class="tag-container d-flex">
	<div class="d-flex gap-2 align-items-center text-truncate">
	<a class="fs-5 badge border text-bg-light text-truncate text-decoration-none" href="{config.relative_path}/tags/{tags.valueEncoded}" data-tag="{tags.valueEscaped}"><span class="tag-item text-muted text-uppercase text-nowrap tag-class-{tags.class}" data-tag="{tags.valueEscaped}">{tags.valueEscaped}</span></a>
	<span class="tag-topic-count text-secondary fw-semibold text-nowrap human-readable-number" title="{tags.score}">{tags.score}</span>
</div>
</div>
{{{end}}}