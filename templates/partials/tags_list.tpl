{{{each tags}}}
<a href="{config.relative_path}/tags/{./valueEncoded}" data-tag="{./valueEscaped}" class="btn-ghost ff-secondary flex-column gap-0 align-items-start justify-content-start text-truncate p-2 ff-base">
	<div class="fw-semibold text-nowrap tag-item w-100 text-truncate">{./valueEscaped}</div>
	<div class="text-xs text-muted text-nowrap tag-topic-count">[[global:x-topics, {formattedNumber(./score)}]]</div>
</a>
{{{end}}}