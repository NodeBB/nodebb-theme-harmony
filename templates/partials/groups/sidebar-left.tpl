<div class="flex-shrink-0 pe-2 border-end-md text-sm mb-3 flex-basis-md-200">
	<div class="nav sticky-md-top d-flex flex-row flex-md-column flex-wrap gap-1" style="top: 1rem; z-index: 1;">
		<button data-bs-toggle="tab" data-bs-target="#groups-posts" class="btn-ghost ff-secondary fw-semibold {{{ if template.groups/details }}}active{{{ end }}}">
			<div class="flex-grow-1">[[global:posts]]</div>
		</button>
		<button data-bs-toggle="tab" data-bs-target="#groups-members" class="btn-ghost ff-secondary fw-semibold">
			<div class="flex-grow-1">[[groups:members]]</div>
			<span component="group/member/count" class="flex-shrink-0 text-xs" title="{group.memberCount}">{humanReadableNumber(group.memberCount)}</span>
		</button>

		{{{ if group.isOwner }}}
		<button data-bs-toggle="tab" data-bs-target="#groups-pending" class="btn-ghost ff-secondary fw-semibold">
			<div class="flex-grow-1">[[groups:details.pending]]</div>
			<span component="group/pending/count" class="flex-shrink-0 text-xs" title="{group.pending.length}">{humanReadableNumber(group.pending.length)}</span>
		</button>

		<button data-bs-toggle="tab" data-bs-target="#groups-invited" class="btn-ghost ff-secondary fw-semibold">
			<div class="flex-grow-1">[[groups:details.invited]]</div>
			<span component="group/invited/count" class="flex-shrink-0 text-xs" title="{group.invited.length}">{humanReadableNumber(group.invited.length)}</span>
		</button>

		<button data-bs-toggle="tab" data-bs-target="#groups-admin" class="btn-ghost ff-secondary fw-semibold">
			<div class="flex-grow-1">[[global:header.admin]]</div>
		</button>
		{{{ end }}}
	</div>
</div>
