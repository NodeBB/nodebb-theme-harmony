{{{ each groups }}}
<div class="col-lg-4 col-md-6 col-sm-12 mb-3" component="groups/summary" data-slug="{groups.slug}">
	<div class="card h-100">
		<a href="{config.relative_path}/groups/{groups.slug}" class="card-header pointer d-block list-cover" style="{{{ if groups.cover:thumb:url }}}background-image: url({./cover:thumb:url});background-size: cover;	min-height: 125px; background-position: 50% 50%;{{{ end }}}">
			<h6 class="card-title text-bg-primary p-2 rounded d-flex justify-content-between">{groups.displayName} <small class="badge bg-info">{groups.memberCount}</small></h6>
		</a>
		<div class="card-body">
			<ul class="members list-unstyled d-flex gap-1 flex-wrap">
				{{{ each groups.members }}}
				<li>
					<a href="{config.relative_path}/user/{groups.members.userslug}">{buildAvatar(groups.members, "24px", true)}</a>
				</li>
				{{{ end }}}
				{{{ if groups.truncated }}}
				<li class="truncated"><i class="fa fa-ellipsis-h"></i></li>
				{{{ end }}}
			</ul>
		</div>
	</div>
</div>
{{{ end }}}