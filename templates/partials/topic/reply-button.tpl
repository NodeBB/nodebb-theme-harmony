<div component="topic/reply/container" class="btn-group action-bar {{{ if !privileges.topics:reply }}}hidden{{{ end }}}">
	<a href="{config.relative_path}/compose?tid={tid}" class="d-flex align-items-center btn btn-sm btn-primary px-3 fw-semibold " component="topic/reply" data-ajaxify="false" role="button"><i class="fa fa-reply d-sm-block d-md-none"></i><span class="d-none d-md-block"> [[topic:reply]]</span></a>
	<button type="button" class="btn btn-sm btn-primary dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<span class="caret"></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end p-1 text-sm" role="menu">
		<li><a class="dropdown-item rounded-1" href="#" component="topic/reply-as-topic" role="menuitem">[[topic:reply-as-topic]]</a></li>
	</ul>
</div>

{{{ if loggedIn }}}
	{{{ if !privileges.topics:reply }}}
		{{{ if locked }}}
		<a component="topic/reply/locked" class="d-flex gap-2 align-items-center fw-semibold btn btn-sm btn-primary disabled" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
		{{{ end }}}
	{{{ end }}}

	{{{ if !locked }}}
	<a component="topic/reply/locked" class="d-flex gap-2 align-items-center fw-semibold btn btn-sm btn-primary disabled hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
	{{{ end }}}
{{{ else }}}
	{{{ if !privileges.topics:reply }}}
	<a component="topic/reply/guest" href="{config.relative_path}/login" class="d-flex align-items-center fw-semibold btn btn-sm btn-primary">[[topic:guest-login-reply]]</a>
	{{{ end }}}
{{{ end }}}