<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="row gx-md-5">
		<!-- IMPORT partials/account/sidebar-left.tpl -->

		<div class="col-12 col-md-9 col-lg-10 ps-md-5">
			<p class="lead">[[user:sessions.description]]</p>
			<hr />
			<ul class="list-group" component="user/sessions">
				{{{each sessions}}}
				<li class="list-group-item" data-uuid="{../uuid}">
					<div class="float-end">
						<!-- IF isSelfOrAdminOrGlobalModerator -->
						<!-- IF !../current -->
						<button class="btn btn-sm btn-outline-secondary" type="button" data-action="revokeSession">Revoke Session</button>
						<!-- ENDIF !../current -->
						<!-- ENDIF isSelfOrAdminOrGlobalModerator -->
						{function.userAgentIcons}
						<i class="fa fa-circle text-<!-- IF ../current -->success<!-- ELSE -->muted<!-- ENDIF ../current -->"></i>
					</div>
					{../browser} {../version} on {../platform}<br />
					<small class="timeago text-muted" title="{../datetimeISO}"></small>
					<ul>
						<li><strong>[[global:ip_address]]</strong>: {../ip}</li>
					</ul>
				</li>
				{{{end}}}
			</ul>
		</div>
	</div>
</div>