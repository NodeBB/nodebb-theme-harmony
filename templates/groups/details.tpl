<div component="groups/container" class="groups details">
	<div class="cover position-absolute start-0 top-0" component="groups/cover" style="background-image: url({group.cover:url}); background-position: {group.cover:position};">
		<div class="container">
			{{{ if group.isOwner }}}
			<div class="controls">
				<span class="upload"><i class="fa fa-fw fa-2x fa-upload"></i></span>
				<span class="resize"><i class="fa fa-fw fa-2x fa-arrows"></i></span>
				<span class="remove"><i class="fa fa-fw fa-2x fa-times"></i></span>
			</div>
			<div class="save text-bg-primary">[[groups:cover-save]] <i class="fa fa-fw fa-floppy-o"></i></div>
			<div class="indicator text-bg-primary">[[groups:cover-saving]] <i class="fa fa-fw fa-refresh fa-spin"></i></div>
			{{{ end }}}
		</div>
	</div>

	<div class="d-flex flex-column pb-4 mb-4 mt-2 border-bottom">
		<div class="d-flex justify-content-between mt-1 align-items-center">
			<div class="d-flex align-items-center gap-2">
				<h2 class="mb-0">{group.displayName}</h2>
				{{{ if group.private }}}<span class="badge text-bg-light border border-1">[[groups:details.private]]</span>{{{ end }}}
				{{{ if group.hidden }}}<span class="badge text-bg-light border border-1">[[groups:details.hidden]]</span>{{{ end }}}
			</div>

			<div>
				{{{ if loggedIn }}}
				{function.membershipBtn, group}
				{{{ end }}}
				{{{ if isAdmin }}}
				<a href="{config.relative_path}/admin/manage/groups/{group.nameEncoded}" target="_blank" class="btn btn-light"><i class="fa fa-gear"></i> [[user:edit]]</a>
				{{{ end }}}
			</div>
		</div>
		{group.descriptionParsed}
	</div>

	<div class="row">
		<!-- IMPORT partials/groups/sidebar-left.tpl -->

		<div class="col-12 col-md-9 col-lg-10 ps-md-5">

			<div class="tab-content">
				<div class="tab-pane fade show active" id="groups-posts" role="tabpanel">
					<h3 class="fw-semibold fs-5 mb-0">[[global:posts]]</h3>
					{{{ if !posts.length }}}
					<div class="alert alert-info">[[groups:details.has_no_posts]]</div>
					{{{ end }}}
					<!-- IMPORT partials/posts_list.tpl -->
				</div>
				<div class="tab-pane fade" id="groups-members" role="tabpanel">
					<h3 class="fw-semibold fs-5 mb-3">[[groups:details.members]]</h3>

					<!-- IMPORT partials/groups/memberlist.tpl -->
				</div>
				{{{ if group.isOwner }}}
				<div class="tab-pane fade" id="groups-pending" role="tabpanel">
					<h3 class="fw-semibold fs-5 mb-3">[[groups:details.pending]]</h3>
					<!-- IMPORT partials/groups/pending.tpl -->
				</div>

				<div class="tab-pane fade" id="groups-invited" role="tabpanel">
					<h3 class="fw-semibold fs-5 mb-3">[[groups:details.invited]]</h3>
					<!-- IMPORT partials/groups/invited.tpl -->
				</div>

				<div class="tab-pane fade" id="groups-admin" role="tabpanel">
					<h3 class="fw-semibold fs-5 mb-3">[[groups:details.owner_options]]</h3>
					<!-- IMPORT partials/groups/admin.tpl -->
				</div>
				{{{ end }}}
			</div>

			<div data-widget-area="left">
				{{{each widgets.left}}}
				{{widgets.left.html}}
				{{{end}}}
			</div>
		</div>
		<div class="col-lg-8 col-12">
			<div class="col-lg-11">

			</div>
			<div data-widget-area="right">
				{{{each widgets.right}}}
				{{widgets.right.html}}
				{{{end}}}
			</div>
		</div>
	</div>
</div>
