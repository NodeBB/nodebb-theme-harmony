<!-- IMPORT partials/account/header.tpl -->

{{{ if sessions.length }}}
<div class="mb-3">
	<h4>[[global:sessions]]</h4>
	<ul class="list-group" component="user/sessions">
		<!-- IMPORT partials/account/session-list.tpl -->
	</ul>
</div>
{{{ end }}}

<div class="row">
	<div class="col-sm-6 mb-3">
		<div class="card mb-3">
			<h5 class="card-header">
				[[global:recentips]]
			</h5>
			<div class="card-body">
				<ul>
					{{{each ips}}}
					<li>{@value}</li>
					{{{end}}}
				</ul>
			</div>
		</div>

		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.username-history]]
			</h5>
			<div class="card-body">
				<ul class="list-group">
					{{{each usernames}}}
					<li class="list-group-item">
						{../value}
						<small class="float-end"><span class="timeago" title="{../timestampISO}"></span></small>
					</li>
					{{{end}}}
				</ul>
			</div>
		</div>

		<div class="card">
			<h5 class="card-header">
				[[user:info.email-history]]
			</h5>
			<div class="card-body">
				<ul class="list-group">
					{{{each emails}}}
					<li class="list-group-item">
						{../value}
						<small class="float-end"><span class="timeago" title="{../timestampISO}"></span></small>
					</li>
					{{{end}}}
				</ul>
			</div>
		</div>
	</div>
	<div class="col-sm-6 mb-3">
		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.latest-flags]]
			</h5>
			<div class="card-body">
				{{{ if history.flags.length }}}
				<ul class="recent-flags list-unstyled">
					{{{ each history.flags }}}
					<li>
						<p>
							{{{ if history.flags.targetPurged }}}
							<div>[[flags:target-purged]]</div>
							{{{ else }}}
							<a class="title" href="{config.relative_path}/post/{./pid}">{./title}</a><br />
							{{{ end }}}
							<span class="timestamp">[[flags:flagged-timeago-readable, {./timestampISO}, {isoTimeToLocaleString(./timestampISO, config.userLang)}]]</span>
						</p>
					</li>
					{{{ end }}}
				</ul>
				{{{ else }}}
				<div class="alert alert-success">[[user:info.no-flags]]</div>
				{{{ end }}}
			</div>
		</div>

		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.ban-history]]

				{{{ if (!banned && !isSelf) }}}
				<button class="btn btn-sm float-end btn-danger" component="account/ban">[[user:ban-account]]</button>
				{{{ end }}}
				{{{ if (banned && !isSelf) }}}
				<button class="btn btn-sm float-end btn-success" component="account/unban">[[user:unban-account]]</button>
				{{{ end }}}
			</h5>
			<div class="card-body">
				{{{ if history.bans.length }}}
				<ul class="ban-history list-unstyled">
					{{{each history.bans}}}
					<li>
						<p>
							<a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "24px", true)}</a>
							<strong>
								<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{./user.username}" data-uid="{./user.uid}">{./user.username}</a>
							</strong>
							<span class="timestamp timeago" title="{./timestampISO}"></span> &mdash; {isoTimeToLocaleString(./timestampISO, config.userLang)}<br />
							{{{ if ./until }}}
							<span class="expiry">[[user:info.banned-until, {isoTimeToLocaleString(./untilISO, config.userLang)}]]</span><br />
							{{{ else }}}
							<span class="expiry">[[user:info.banned-permanently]]</span><br />
							{{{ end }}}
							<span class="reason"><strong>[[user:info.banned-reason-label]]</strong>: {./reason}</span>
						</p>
					</li>
					{{{end}}}
				</ul>
				{{{ else }}}
				<div class="alert alert-success">[[user:info.no-ban-history]]</div>
				{{{ end }}}
			</div>
		</div>

		<div class="card mb-3">
			<h5 class="card-header">
				[[user:info.mute-history]]

				{{{ if !muted }}}
				{{{ if !isSelf }}}
				<button class="btn btn-sm float-end btn-danger" component="account/mute">[[user:mute-account]]</button>
				{{{ end }}}
				{{{ else }}}
				{{{ if !isSelf }}}
				<button class="btn btn-sm float-end btn-success" component="account/unmute">[[user:unmute-account]]</button>
				{{{ end }}}
				{{{ end }}}
			</h5>
			<div class="card-body">
				{{{ if history.mutes.length }}}
				<ul class="ban-history list-unstyled">
					{{{ each history.mutes }}}
					<li>
						<p>
							<a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "24px", true)}</a>
							<strong>
								<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{./user.username}" data-uid="{./user.uid}">{./user.username}</a>
							</strong>
							<span class="timestamp timeago" title="{./timestampISO}"></span> &mdash; {isoTimeToLocaleString(./timestampISO, config.userLang)}<br />
							{{{ if ./until }}}
							<span class="expiry">[[user:info.muted-until, {isoTimeToLocaleString(./untilISO, config.userLang)}]]</span><br />
							{{{ end }}}

							<span class="reason"><strong>[[user:info.banned-reason-label]]</strong>: {./reason}</span>
						</p>
					</li>
					{{{ end }}}
				</ul>
				{{{ else }}}
				<div class="alert alert-success">[[user:info.no-mute-history]]</div>
				{{{ end }}}
			</div>
		</div>

		{{{ if isAdminOrGlobalModerator }}}
		<div class="card">
			<h5 class="card-header">
				[[user:info.moderation-note]]
			</h5>
			<div class="card-body">
				<textarea component="account/moderation-note" class="form-control mb-3" aria-label="[[user:info.moderation-note]]"></textarea>

				<button class="btn btn-sm float-end btn-success" component="account/save-moderation-note">[[user:info.moderation-note.add]]</button>
				<br/>
				<div component="account/moderation-note/list">
					{{{ each moderationNotes }}}
					<hr/>

					<div>
						<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}">{buildAvatar(./user, "24px", true)}</a>
						<strong>
							<a href="{{{ if ./user.userslug }}}{config.relative_path}/user/{./user.userslug}{{{ else }}}#{{{ end }}}" itemprop="author" data-username="{./user.username}" data-uid="{./user.uid}">{./user.username}</a>
						</strong>

						<div class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
							<span class="timeago" title="{./timestampISO}"></span>
						</div>
						<br />

						<div class="content">
							{./note}
						</div>
					</div>
					{{{ end }}}
				</div>
				<!-- IMPORT partials/paginator.tpl -->
			</div>
		</div>
		{{{ end }}}
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->