{{{ each groups }}}
<div class="col-xl-4 col-lg-6 col-sm-12 mb-3" component="groups/summary" data-slug="{./slug}">
	<div class="card h-100 group-hover-bg border-0">
		<a href="{config.relative_path}/groups/{./slug}" class="card-header border-bottom-0 pointer d-block list-cover" style="{{{ if ./cover:thumb:url }}}background-image: url({./cover:thumb:url});background-size: cover; min-height: 125px; background-position: {./cover:position}{{{ end }}}" aria-label="[[aria:group-page-link-for, {./displayName}]]"></a>
		<a href="{config.relative_path}/groups/{./slug}" class="d-block h-100 text-reset text-decoration-none">
			<div class="card-body d-flex flex-column gap-1 border border-top-0 rounded-bottom h-100">
				<div class="d-flex">
					<div class="flex-grow-1 fs-6 fw-semibold">{./displayName}</div>
					<div class="flex-shrink-0 text-sm"><i class="text-muted fa-solid fa-user"></i> {./memberCount}</div>
				</div>
				<div class="text-sm">{./description}</div>
			</div>
		</a>
	</div>
</div>
{{{ end }}}