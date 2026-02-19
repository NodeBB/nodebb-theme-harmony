<div component="topic/reply/container" class="btn-group {{{ if !privileges.topics:reply }}}hidden{{{ end }}}">
	<a href="{config.relative_path}/compose?tid={tid}" class="d-flex {{{ if !config.theme.topicSidebarTools}}}px-3{{{ end }}} gap-2 align-items-center btn btn-sm btn-primary fw-semibold" component="topic/reply" role="button"><i class="fa fa-fw fa-reply d-none {{{ if config.theme.topicSidebarTools}}} d-md-block{{{ end }}}"></i><span class="text-truncate text-nowrap">[[topic:reply]]</span></a>
	<button type="button" class="btn btn-sm btn-primary dropdown-toggle flex-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" aria-label="[[topic:reply-options]]">
		<span class="caret"></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end p-1 text-sm" role="menu">
		<li><a class="dropdown-item rounded-1" href="#" component="topic/reply-as-topic" role="menuitem">[[topic:reply-as-topic]]</a></li>
	</ul>
</div>

{{{ if loggedIn }}}
	<a href="#" component="topic/reply/locked" class="d-flex gap-2 align-items-center fw-semibold btn btn-sm btn-primary disabled {{{ if (privileges.topics:reply || !locked) }}}hidden{{{ end }}}" disabled><i class="fa fa-fw fa-lock"></i> [[topic:locked]]</a>
{{{ else }}}
	{{{ if !privileges.topics:reply }}}
	<a component="topic/reply/guest" href="{config.relative_path}/login" class="d-flex gap-2 align-items-center fw-semibold btn btn-sm btn-primary"><i class="fa fa-fw fa-sign-in {{{ if !config.theme.topicSidebarTools}}} d-sm-block d-md-none {{{ end }}}"></i><span>[[topic:guest-login-reply]]</span></a>
	{{{ end }}}
{{{ end }}}