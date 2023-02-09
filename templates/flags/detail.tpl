<!-- IMPORT partials/breadcrumbs.tpl -->

<div class="d-flex flex-column flex-md-row">
	<div class="d-flex flex-column gap-3 flex-0 border-end-md text-sm mb-3 pe-4" style="flex-basis: 240px !important;">
		<div class="d-grid gap-1">
			<a class="btn btn-ghost border btn-sm justify-content-start" href="{config.relative_path}/{type_path}/{targetId}">
				<i class="fa fa-fw fa-external-link text-primary"></i>
				[[flags:go-to-target]]
			</a>

			{{{ if target.uid }}}
			<div class="btn-group dropend" data-uid="{target.uid}">
				<button type="button" class="btn btn-ghost border btn-sm justify-content-start dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					<i class="fa fa-fw fa-street-view text-primary"></i>
					[[flags:flagged-user]]
				</button>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="{config.relative_path}/uid/{target.uid}">[[flags:view-profile]]</a></li>
					{{{ if !config.disableChat }}}
						<li><a class="dropdown-item" href="#" data-action="chat">[[flags:start-new-chat]]</a></li>
					{{{ end }}}
					<li class="dropdown-divider"></li>
					{{{ if privileges.ban }}}
					<li class="{{{ if target.user.banned }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="ban">[[user:ban_account]]</a></li>
					<li class="{{{ if !target.user.banned }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="unban">[[user:unban_account]]</a></li>
					{{{ end }}}
					{{{ if privileges.mute}}}
					<li class="{{{ if target.user.muted }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="mute">[[user:mute_account]]</a></li>
					<li class="{{{ if !target.user.muted }}}hidden{{{ end }}}"><a class="dropdown-item" href="#" data-action="unmute">[[user:unmute_account]]</a></li>
					{{{ end }}}
					{{{ if privileges.admin:users }}}
					<li><a class="dropdown-item" href="#" data-action="delete-account">[[user:delete_account_as_admin]]</a></li>
					<li><a class="dropdown-item" href="#" data-action="delete-content">[[user:delete_content]]</a></li>
					<li><a class="dropdown-item" href="#" data-action="delete-all">[[user:delete_all]]</a></li>
					{{{ end }}}
				</ul>
			</div>
			{{{ end }}}

			<a class="btn btn-ghost border btn-sm justify-content-start" href="#" data-action="assign">
				<i class="fa fa-fw fa-id-card-o text-primary"></i>
				[[flags:assign-to-me]]
			</a>

			{{{ if type_bool.post }}}
			{{{ if !target.deleted}}}
			<a class="d-flex gap-2 align-items-center btn btn-sm btn-outline-danger border border-secondary-subtle text-start" href="#" data-action="delete-post"><i class="fa fa-fw fa-trash"></i> [[flags:delete-post]]</a>
			{{{ else }}}
			<a class="d-flex gap-2 align-items-center btn btn-sm btn-danger border border-secondary-subtle text-start" href="#" data-action="purge-post"><i class="fa fa-fw fa-trash"></i> [[flags:purge-post]]</a>
			<a class="d-flex gap-2 align-items-center btn btn-sm btn-outline-success border border-secondary-subtle text-start" href="#" data-action="restore-post"><i class="fa fa-fw fa-reply"></i><i class="fa fa-trash"></i> [[flags:restore-post]]</a>
			{{{ end }}}
			{{{ end }}}
		</div>

		<div class="d-flex flex-column gap-3">
			<div>
				<label class="text-muted fw-semibold" for="state">[[flags:state]]</label>
				<select class="form-select form-select-sm" id="state" name="state" disabled>
					<option value="open">[[flags:state-open]]</option>
					<option value="wip">[[flags:state-wip]]</option>
					<option value="resolved">[[flags:state-resolved]]</option>
					<option value="rejected">[[flags:state-rejected]]</option>
				</select>
			</div>
			<div>
				<label class="text-muted fw-semibold" for="assignee">[[flags:assignee]]</label>
				<select class="form-control form-control-sm" id="assignee" name="assignee" disabled>
					<option value="">[[flags:no-assignee]]</option>
					{{{each assignees}}}
					<option value="{../uid}">{../username}</option>
					{{{end}}}
				</select>
			</div>
			<div class="d-grid">
				<button type="button" class="btn btn-primary" data-action="update">[[flags:update]]</button>
			</div>
		</div>

		<div component="flag/history">
			<h2 class="h6 fw-semibold">[[flags:history]]</h2>
			{{{ if !history.length }}}
			<div class="alert alert-success text-center">[[flags:no-history]]</div>
			{{{ end }}}
			{{{ each history }}}
			<div class="d-flex flex-column gap-1">
				<div class="d-flex gap-2">
					<a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "16px", true)}</a>
					<a href="{config.relative_path}/user/{./user.userslug}">{./user.username}</a>
					<span class="timeago text-muted" title="{./datetimeISO}"></span>
				</div>
				<div>
					<ul class="list-unstyled">
						{{{ each ./fields }}}
						<li>
							[[flags:{@key}]]{{{ if @value }}} &rarr; <span class="fw-semibold">{@value}</span>{{{ end }}}
						</li>
						{{{ end }}}
						{{{ each ./meta }}}
						<li>
							{{./key}}{{{ if ./value }}} &rarr; <span class="fw-semibold">{./value}</span>{{{ end }}}
						</li>
						{{{ end }}}
					</ul>
				</div>
			</div>
			{{{ end }}}
		</div>
	</div>
	<div class="flex-1 ps-md-2 ps-lg-5" style="min-width:0;">
		<div class="d-flex flex-column gap-3">
			test derp
		</div>
	</div>
</div>

<div class="row">
	<div class="col-12">
		<h2 class="h4">
			{target_readable}
			<small><span class="text-muted timeago" title="{datetimeISO}"></span></small>
		</h2>

		<hr />

		{{{ if type_bool.post }}}
		<div class="d-flex">
			<div class="flex-shrink-0">
				<a href="{config.relative_path}/user/{target.user.userslug}">{buildAvatar(target.user, "64px", true, "media-object")}</a>
			</div>
			<div class="flex-grow-1 ms-3">
				<h4 class="media-heading"><a href="{config.relative_path}/user/{target.user.userslug}">{target.user.username}</a></h4>
				{target.content}
			</div>
		</div>
		{{{ end }}}

		{{{ if type_bool.user }}}
		<div class="d-flex">
			<div class="flex-shrink-0">
				<a href="{config.relative_path}/user/{target.userslug}">{buildAvatar(target, "64px", true, "media-object")}</a>
			</div>
			<div class="flex-grow-1 ms-3">
				<h4 class="media-heading"><a href="{config.relative_path}/user/{target.userslug}">{target.username}</a></h4>
				<p class="lead">
					<a href="{config.relative_path}/uid/{target.uid}">[[flags:user-view]]</a> |
					<a href="{config.relative_path}/uid/{target.uid}/edit">[[flags:user-edit]]</a>
				</p>
			</div>
		</div>
		{{{ end }}}

		{{{ if type_bool.empty }}}
		<div class="alert alert-warning" role="alert">[[flags:target-purged]]</div>
		{{{ end }}}

		<hr />

		<div class="row">
			<div class="col-sm-6">
				<form role="form" id="attributes">
					<div class="mb-3">
						<h2 class="h4">[[flags:reports]]</h2>
						<ul class="list-group" component="flag/reports">
							{{{ each reports }}}
							<li class="list-group-item">
								<a href="{config.relative_path}/user/{./reporter.userslug}">{buildAvatar(./reporter, "24px", true)}</a>
								&ndash; <span class="timeago" title="{./timestampISO}"></span>
								<blockquote><em>{./value}</em></blockquote>
							</li>
							{{{ end }}}
						</ul>
					</div>
				</form>

				<hr />

				<form role="form">
					<div class="mb-3">
						<h2 class="h4" for="note">[[flags:notes]]</h2>
						<textarea id="note" class="form-control"></textarea>
						<div class="d-grid">
							<button type="button" class="btn btn-block btn-primary" data-action="appendNote">[[flags:add-note]]</button>
						</div>
					</div>
				</form>

				<div component="flag/notes">
					{{{ if !notes.length }}}
					<div class="alert alert-success text-center">[[flags:no-notes]]</div>
					{{{ end }}}
					{{{ each notes }}}
					<div class="d-flex mb-3">
						<div class="flex-shrink-0">
							<a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "32px", true, "media-object")}</a>
						</div>
						<div class="flex-grow-1 mx-3">
							<h2 class="h5">
								<a href="{config.relative_path}/user/{./user.userslug}">{./user.username}</a>
								<small><span class="timeago" title="{./datetimeISO}"></span></small>
							</h4>
							{./content}
						</div>
						<div class="flex-shrink-0">
							<a href="#" class="btn btn-sm btn-link" data-action="prepare-edit"><i class="fa fa-pencil"></i></a>
							<a href="#" class="btn btn-sm btn-link" data-action="delete-note"><i class="fa fa-trash text-danger"></i></a>
						</div>
					</div>
					{{{ end }}}
				</div>
			</div>
		</div>
	</div>
</div>
