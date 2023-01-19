<div class="account">
	<!-- IMPORT partials/account/header.tpl -->

	<div class="d-flex flex-column flex-md-row">
		<!-- IMPORT partials/account/sidebar-left.tpl -->
		<div class="flex-1 ps-md-2 ps-lg-5" style="min-width: 0;">
			<p class="lead">[[user:sessions.description]]</p>
			<hr />
			<ul class="list-group" component="user/sessions">
				<!-- IMPORT partials/account/session-list.tpl -->
			</ul>
		</div>
	</div>
</div>