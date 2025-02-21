{{{ if ./items.length }}}
<li component="topic/event" class="timeline-event text-muted d-flex gap-2 pt-4">
	<div class="d-flex flex-column">
		<div class="d-flex text-start align-self-start align-items-center">
			<div class="timeline-badge">
				<i class="fa {{{ if ./icon }}}{./icon}{{{ else }}}fa-circle{{{ end }}} small"></i>
			</div>
			<button class="btn btn-sm btn-ghost" type="button" data-bs-toggle="collapse" data-bs-target="#event-collapse-{./id}" aria-expanded="false" aria-controls="collapseExample">
				[[topic:announcers-x, {./items.length}]]
			</button>
		</div>
		<div class="collapse align-self-start ps-5" id="event-collapse-{./id}">
			<div component="topic/event/items">
				{{{ each ./items }}}
				<div class="d-flex gap-2 pt-2" data-topic-event-id="{./id}" data-topic-event-type="{./type}">
					<span class="timeline-text small d-flex align-items-center gap-1 flex-wrap">
						{./text}
					</span>
					{{{ if (privileges.isAdminOrMod && ./id) }}}
					<span component="topic/event/delete" data-topic-event-id="{./id}" data-topic-event-type="{./type}" class="timeline-text pointer" title="[[topic:delete-event]]"><i class="fa fa-trash"></i></span>
					{{{ end }}}
				</div>
				{{{ end }}}
			</div>
		</div>
	</div>
</li>
{{{ else }}}
<li component="topic/event" class="timeline-event text-muted d-flex gap-2 pt-4" data-topic-event-id="{./id}" data-topic-event-type="{./type}">
	<div class="timeline-badge">
		<i class="fa {{{ if ./icon }}}{./icon}{{{ else }}}fa-circle{{{ end }}} small"></i>
	</div>
	<span class="timeline-text small d-flex align-items-center gap-1 flex-wrap">
		{./text}
	</span>
	{{{ if (privileges.isAdminOrMod && ./id) }}}
	<span component="topic/event/delete" data-topic-event-id="{./id}" data-topic-event-type="{./type}" class="timeline-text pointer" title="[[topic:delete-event]]"><i class="fa fa-trash"></i></span>
	{{{ end }}}
</li>
{{{ end }}}

