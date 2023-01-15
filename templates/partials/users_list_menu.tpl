<div component="user/list/menu" class="text-sm d-flex flex-wrap align-items-center gap-2">
	<a class="btn-ghost fw-semibold" href="{config.relative_path}/users?section=online">[[global:online]]</a>

	<a class="btn-ghost fw-semibold" href="{config.relative_path}/users?section=sort-posts">[[users:top_posters]]</a>

	{{{ if !reputation:disabled }}}
	<a class="btn-ghost fw-semibold" href="{config.relative_path}/users?section=sort-reputation">[[users:most_reputation]]</a>
	{{{ end }}}

	{{{ if isAdminOrGlobalMod }}}
	<a class="btn-ghost fw-semibold" href="{config.relative_path}/users?section=flagged">[[users:most_flags]]</a>

	<a class="btn-ghost fw-semibold" href="{config.relative_path}/users?section=banned">[[user:banned]]</a>
	{{{ end }}}
</div>