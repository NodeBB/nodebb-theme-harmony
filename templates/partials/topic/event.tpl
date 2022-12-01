<li component="topic/event" class="timeline-event text-muted d-flex gap-2 pt-4" data-topic-event-id="{./id}" data-topic-event-type="{./type}">
	<div class="timeline-badge">
		<i class="fa {{{ if ./icon }}}{./icon}{{{ else }}}fa-circle{{{ end }}} small"></i>
	</div>
	<span class="timeline-text small">
		{./text}
	</span>
	{{{ if privileges.isAdminOrMod }}}
	<span component="topic/event/delete" data-topic-event-id="{./id}" data-topic-event-type="{./type}" class="timeline-text pointer" title="[[topic:delete-event]]"><i class="fa fa-trash"></i></span>
	{{{ end }}}
</li>

