<a href="{config.relative_path}/user/{./userslug}" class="btn-ghost align-items-start justify-content-start">
	{buildAvatar(@value, "48px", true, "flex-shrink-0")}
	<div class="d-flex flex-column text-truncate">
		<div class="fw-semibold text-truncate" title="{./displayname}">{./displayname}</div>
		<div class="text-xs text-muted text-truncate">@{./username}</div>

		<div class="align-self-start">
			{{{ if section_online }}}
			<div class="card card-header border py-0 px-1 text-xs">
				<span class="timeago" title="{./lastonlineISO}"></span>
			</div>
			{{{ end }}}

			{{{ if section_joindate }}}
			<div class="card card-header border py-0 px-1 text-xs">
				<span class="timeago" title="{./joindateISO}"></span>
			</div>
			{{{ end }}}

			{{{ if section_sort-reputation }}}
			<div class="card card-header border py-0 px-1 text-xs">
				<span class="formatted-number">{./reputation}</span>
			</div>
			{{{ end }}}

			{{{ if section_sort-posts }}}
			<div class="card card-header border py-0 px-1 text-xs">
				<span class="formatted-number">{./postcount}</span>
			</div>
			{{{ end }}}

			{{{ if section_flagged }}}
			<div class="card card-header border py-0 px-1 text-xs">
				<span class="formatted-number">{./flags}</span>
			</div>
			{{{ end }}}
		</div>
	</div>
</a>