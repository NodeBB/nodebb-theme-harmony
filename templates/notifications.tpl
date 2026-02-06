<div class="notifications flex-fill">
	<div class="d-flex flex-column flex-md-row">
		<div class="d-flex flex-column flex-shrink-0 pe-2 border-end-md text-sm mb-3 flex-basis-md-200 gap-2">

			<button class="btn btn-sm btn-light w-100" component="notifications/mark_all"><i class="fa fa-check-double"></i> [[notifications:mark-all-read]]</a></button>


			<div class="nav sticky-top d-flex flex-row flex-md-column flex-wrap gap-1" style="z-index: 1;">
				{{{ each filters }}}
				{{{ if ./separator }}}
				<hr/>
				{{{ else }}}
				<a class="btn btn-ghost d-flex gap-2 text-start align-items-center text-sm ff-secondary fw-semibold {{{ if ./selected }}}active{{{ end }}}" href="{config.relative_path}/notifications?filter={./filter}">
					<div class="flex-grow-1">{filters.name}</div>
					<span class="flex-shrink-0 text-xs" title="{./count}">{humanReadableNumber(./count)}</span>
				</a>
				{{{ end }}}
				{{{ end }}}
			</div>
		</div>
		<div class="flex-grow-1 ps-md-2 ps-lg-5">
			<ul component="notifications/list" class="notifications-list list-unstyled" data-nextstart="{nextStart}">
				<!-- IMPORT partials/notifications_list.tpl -->
			</ul>
			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>


