<div id="users-container" class="users-container row row-cols-2 row-cols-md-3 row-cols-lg-4 row-cols-xl-5 g-2">
{{{ each users }}}
	<a href="{config.relative_path}/user/{./userslug}" class="btn-ghost align-items-start">
		{buildAvatar(@value, "48px", true)}
		<div class="d-flex flex-1 flex-column">
			<div class="fw-semibold">{./displayname}</div>
			<div class="text-xs text-muted">@{./username}</div>
		</div>
	</a>
{{{ end }}}
</div>