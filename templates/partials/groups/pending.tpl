{{{ if group.pending.length }}}
<div class="d-flex justify-content-end gap-2 mb-3">
	<button class="btn btn-outline-secondary btn-sm" data-action="acceptAll">[[groups:pending.accept_all]]</button>
	<button class="btn btn-outline-secondary btn-sm" data-action="rejectAll">[[groups:pending.reject_all]]</button>
</div>
{{{ end }}}

<table component="groups/pending" class="table table-hover">
	{{{ if !group.pending.length }}}
	<div class="alert alert-info">[[groups:pending.none]]</div>
	{{{ end }}}
	{{{each group.pending}}}
	<tr data-uid="{group.pending.uid}">
		<td class="p-2">
			<a class="text-decoration-none" href="{config.relative_path}/user/{group.pending.userslug}">{buildAvatar(group.pending, "24px", true)}</a>
		</td>
		<td class="member-name p-2 w-100">
			<a href="{config.relative_path}/user/{group.pending.userslug}">{group.pending.username}</a>
		</td>
		<td class="p-2">
			<div class="d-flex gap-2">
				<button class="btn btn-outline-secondary btn-sm" data-action="accept">[[groups:pending.accept]]</a></li>
				<button class="btn btn-outline-secondary btn-sm" data-action="reject">[[groups:pending.reject]]</a></li>
			</div>
		</td>
	</tr>
	{{{end}}}
</table>
