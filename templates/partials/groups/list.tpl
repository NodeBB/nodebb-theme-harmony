{{{ each groups }}}
<div class="col-xxl-4 col-lg-6 col-sm-12 mb-3" component="groups/summary" data-slug="{groups.slug}">
	<div class="card h-100 group-hover-bg">
		<a href="{config.relative_path}/groups/{groups.slug}" class="card-header pointer d-block list-cover" style="{{{ if groups.cover:thumb:url }}}background-image: url({./cover:thumb:url});background-size: cover;	min-height: 125px; background-position: 50% 50%;{{{ end }}}"></a>
		<a href="{config.relative_path}/groups/{groups.slug}" class="d-block h-100 text-reset text-decoration-none">
			<div class="card-body d-flex flex-column gap-1">
				<div class="d-flex">
					<div class="flex-1 fs-6 fw-semibold">{./displayName}</div>
					<div class="text-sm"><i class="text-muted fa-solid fa-user"></i> {./memberCount}</div>
				</div>
				<div class="text-sm">{./description}</div>
			</div>
		</a>
	</div>
</div>
{{{ end }}}