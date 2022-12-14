<div component="topic/reply/container" class="btn-group action-bar bottom-sheet <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">
	<a href="{config.relative_path}/compose?tid={tid}&title={title}" class="d-flex align-items-center btn btn-primary px-3 py-2 fw-semibold border border-0 " component="topic/reply" data-ajaxify="false" role="button"><i class="fa fa-reply visible-xs-inline"></i><span class="visible-sm-inline visible-md-inline visible-lg-inline"> [[topic:reply]]</span></a>
	<button type="button" class="btn btn-sm btn-primary dropdown-toggle border border-0 border-start border-primary" data-bs-toggle="dropdown">
		<span class="caret"></span>
	</button>
	<ul class="dropdown-menu dropdown-menu-end" role="menu">
		<li><a class="dropdown-item" href="#" component="topic/reply-as-topic">[[topic:reply-as-topic]]</a></li>
	</ul>
</div>

{{{ if loggedIn }}}
	{{{ if !privileges.topics:reply }}}
		{{{ if locked }}}
		<a component="topic/reply/locked" class="d-flex gap-2 align-items-center fw-semibold btn btn-primary disabled" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
		{{{ end }}}
	{{{ end }}}

	{{{ if !locked }}}
	<a component="topic/reply/locked" class="d-flex gap-2 align-items-center fw-semibold btn btn-primary disabled hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</a>
	{{{ end }}}
{{{ else }}}
	{{{ if !privileges.topics:reply }}}
	<a component="topic/reply/guest" href="{config.relative_path}/login" class="d-flex align-items-center fw-semibold btn btn-primary">[[topic:guest-login-reply]]</a>
	{{{ end }}}
{{{ end }}}