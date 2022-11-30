<li component="topic/event" class="timeline-event text-muted d-flex gap-2 pt-4" data-topic-event-id="{./id}" data-topic-event-type="{./type}">
	<div class="timeline-badge">
		<i class="fa {{{ if ./icon }}}{./icon}{{{ else }}}fa-circle{{{ end }}} small"></i>
	</div>
	{{{ if ./user }}}
		{{{ if ./user.system }}}
		<span class="timeline-text small">[[global:system-user]]</span>
		{{{ else }}}
		<a class="fw-bold text-decoration-none small" href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "20px", true)}</a>
		<a class="fw-bold text-decoration-none small" href="{config.relative_path}/user/{./user.userslug}">{./user.username}</a>
		{{{ end }}}
	{{{ end }}}
	<span class="timeline-text small">
		{{{ if ./href}}}
		<a href="{config.relative_path}{./href}">{./x-text}</a>
		{{{ else }}}
		{./x-text}
		{{{ end }}}
	</span>
	<span class="timeago timeline-text small" title="{./timestampISO}"></span>

	{{{ if privileges.isAdminOrMod }}}
	<span component="topic/event/delete" data-topic-event-id="{./id}" data-topic-event-type="{./type}" class="timeline-text pointer" title="[[topic:delete-event]]"><i class="fa fa-trash"></i></span>
	{{{ end }}}
</li>

