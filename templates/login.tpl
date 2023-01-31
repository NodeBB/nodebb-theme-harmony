<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>
<div class="row login">
	<div class="d-flex flex-column gap-2 {{{ if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		<h2 class="tracking-tight fw-semibold text-center">[[global:login]]</h2>
		<div class="row justify-content-center gap-5">
			{{{ if allowLocalLogin }}}
			<div class="col-12 col-md-5 col-lg-3 px-md-0">
				<div class="login-block">
					<div class="alert alert-danger alert-dismissible" id="login-error-notify" {{{ if error }}}style="display:block"{{{ else }}}style="display: none;"{{{ end }}}>
						<button type="button" class="btn-close" data-bs-dismiss="alert"></button>
						<strong>[[login:failed_login_attempt]]</strong>
						<p>{error}</p>
					</div>

					<form class="d-flex flex-column gap-3" role="form" method="post" id="login-form">
						<div class="mb-2 d-flex flex-column gap-2">
							<label for="username">{allowLoginWith}</label>
							<div>
								<input class="form-control" type="text" placeholder="{allowLoginWith}" name="username" id="username" autocorrect="off" autocapitalize="off" value="{username}"/>
							</div>
						</div>
						<div class="mb-2 d-flex flex-column gap-2">
							<div class="d-flex justify-content-between align-items-center">
								<label for="password">[[user:password]]</label>
								{{{ if allowPasswordReset }}}
								<a id="reset-link" tabindex="-1" class="text-sm text-reset text-decoration-underline" href="{config.relative_path}/reset">[[login:forgot_password]]</a>
								{{{ end }}}
							</div>
							<div>
								<input class="form-control" type="password" placeholder="[[user:password]]" name="password" id="password" {{{ if username }}}autocomplete="off"{{{ end }}}/>
								<p id="caps-lock-warning" class="text-danger hidden">
									<i class="fa fa-exclamation-triangle"></i> [[login:caps-lock-enabled]]
								</p>
							</div>
						</div>
						<div class="mb-2">
							<div class="checkbox">
								<label>
									<input type="checkbox" name="remember" id="remember" checked /> [[login:remember_me]]
								</label>
							</div>
						</div>
						{{{each loginFormEntry}}}
						<div class="mb-2 loginFormEntry d-flex flex-column gap-2">
							<label for="login-{loginFormEntry.styleName}">{loginFormEntry.label}</label>
							<div id="login-{loginFormEntry.styleName}">{{loginFormEntry.html}}</div>
						</div>
						{{{end}}}

						<input type="hidden" name="_csrf" value="{config.csrf_token}" />
						<input type="hidden" name="noscript" id="noscript" value="true" />

						<button class="btn btn-primary" id="login" type="submit">[[global:login]]</button>

						<hr/>

						{{{ if allowRegistration }}}
						<span class="text-sm">[[login:dont_have_account]]</span>
						<a class="btn btn-outline-light text-body" href="{config.relative_path}/register">[[register:register]]</a>
						{{{ end }}}
					</form>
				</div>
			</div>
			{{{ end }}}

			{{{ if alternate_logins }}}
			<div class="col-12 col-md-5 col-lg-3 px-md-0">
				<div class="alt-login-block d-flex flex-column gap-2">
					<label>[[login:alternative_logins]]</label>
					<ul class="alt-logins list-unstyled">
						{{{ each authentication }}}
						<li class="{./name} mb-2">
							<a class="btn btn-outline-light d-flex align-items-center" rel="nofollow noopener noreferrer" target="_top" href="{config.relative_path}{./url}">
								{{{ if ./icons.svg }}}
								{./icons.svg}
								{{{ else }}}
								<i class="{./icons.normal}" style="color:{./color};"></i>
								{{{ end }}}
								{{{ if ./labels.login }}}
								<div class="flex-1 text-body text-sm">{./labels.login}</div>
								{{{ end }}}
							</a></li>
						{{{ end }}}
					</ul>
				</div>
			</div>
			{{{ end }}}
		</div>
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>
<div data-widget-area="footer">
	{{{each widgets.footer}}}
	{{widgets.footer.html}}
	{{{end}}}
</div>