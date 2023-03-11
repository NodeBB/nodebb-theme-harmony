{{{ if !notifications.length }}}
<li class="no-notifs text-center p-2">[[notifications:no_notifs]]</li>
{{{ end }}}

{{{ each notifications }}}
<li class="{./readClass} mb-2 p-1" data-nid="{./nid}" data-path="{./path}" {{{ if ./pid }}}data-pid="{./pid}"{{{ end }}}{{{ if ./tid }}}data-tid="{./tid}"{{{ end }}}>
	<div class="d-flex gap-1 justify-content-between">
		<div class="d-flex gap-2">
			{{{ if ./image }}}
			{{{ if ./from }}}
			<a class="text-decoration-none" href="{config.relative_path}/user/{./user.userslug}"><img class="avatar avatar-rounded" style="--avatar-size: 32px;" src="{./image}" /></a>
			{{{ end }}}
			{{{ else }}}
			<a class="text-decoration-none"  href="{config.relative_path}/user/{./user.userslug}"><div class="avatar avatar-rounded" style="--avatar-size: 32px; background-color: {./user.icon:bgColor};">{./user.icon:text}</div></a>
			{{{ end }}}
			<div class=" d-flex flex-column">
				<a href="{./path}" class="text-decoration-none text-reset text-break text-sm">
					{./bodyShort}
				</a>
				<div class="text-xs text-muted">{{{ if ./timeagoLong }}}{./timeagoLong}{{{ else }}}<span class="timeago" title="{./datetimeISO}"></span>{{{ end }}}</div>
			</div>
		</div>
		<div>
			{{{ if ./nid }}}
			<button class="mark-read btn-ghost-sm" style="width: 1.5rem; height: 1.5rem;">
				<i class="unread fa fa-2xs fa-circle text-primary {{{ if ./read }}}hidden{{{ end }}}"></i>
				<i class="read fa fa-2xs fa-circle-o text-secondary {{{ if !./read }}}hidden{{{ end }}}"></i>
			</button>
			{{{ end }}}
		</div>
	</div>
</li>
{{{end}}}
