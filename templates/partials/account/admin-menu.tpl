<div class="btn-group bottom-sheet">
	<button type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		<i class="fa fa-gear fa-fw"></i>
	</button>
	<ul class="dropdown-menu dropdown-menu-end account-sub-links">
		<li>
			<a class="dropdown-item" href="{config.relative_path}/user/{userslug}/info">[[user:account_info]]</a>
		</li>
		{{{ if (canBan || canMute) }}}
		<li role="separator" class="dropdown-divider"></li>
		{{{ end }}}
		{{{ if canBan }}}
		<li class="{{{ if banned }}}hide{{{ end }}}">
			<a class="dropdown-item" component="account/ban" href="#">[[user:ban_account]]</a>
		</li>
		<li class="{{{ if !banned }}}hide{{{ end }}}">
			<a class="dropdown-item" component="account/unban" href="#">[[user:unban_account]]</a>
		</li>
		{{{ end }}}
		{{{ if canMute }}}
		<li class="{{{ if muted }}}hide{{{ end }}}">
			<a class="dropdown-item" component="account/mute" href="#">[[user:mute_account]]</a>
		</li>
		<li class="{{{ if !muted }}}hide{{{ end }}}">
			<a class="dropdown-item" component="account/unmute" href="#">[[user:unmute_account]]</a>
		</li>
		{{{ end }}}
		{{{ if isAdmin }}}
		<li>
			<a component="account/delete-account" href="#" class="dropdown-item">[[user:delete_account_as_admin]]</a>
			<a component="account/delete-content" href="#" class="dropdown-item">[[user:delete_content]]</a>
			<a component="account/delete-all" href="#" class="dropdown-item">[[user:delete_all]]</a>
		</li>
		{{{ end }}}
	</ul>
</div>
