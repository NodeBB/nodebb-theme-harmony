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

	<div class="my-2">
		<!-- IMPORT partials/breadcrumbs.tpl -->
	</div>
	<div class="row">
		<div class="col-lg-4 col-12">
			<div class="card mb-3">
				<div class="card-header">
					<span class="fs-5">
						<i class="fa fa-list-ul"></i> [[groups:details.title]]
						{{{ if group.private }}}<span class="badge bg-info text-dark">[[groups:details.private]]</span>{{{ end }}}
						{{{ if group.hidden }}}<span class="badge bg-info text-dark">[[groups:details.hidden]]</span>{{{ end }}}
					</span>
				</div>
				<div class="card-body">
					<h2>{group.displayName}</h2>
					<p>{group.descriptionParsed}</p>
					{{{ if isAdmin }}}
					<div class="float-end">
						<a href="{config.relative_path}/admin/manage/groups/{group.nameEncoded}" target="_blank" class="btn btn-info"><i class="fa fa-gear"></i> [[user:edit]]</a>
					</div>
					{{{ end }}}
					{{{ if loggedIn }}}
					<div class="float-end">
						{function.membershipBtn, group}&nbsp;
					</div>
					{{{ end }}}
				</div>
			</div>

			<div class="card mb-3">
				<div class="card-header">
					<span class="fs-5">
						<i class="fa fa-users"></i> [[groups:details.members]]
					</span>
				</div>
				<div class="card-body">
					<!-- IMPORT partials/groups/memberlist.tpl -->
				</div>
			</div>

			{{{ if group.isOwner }}}
			<!-- IMPORT partials/groups/admin.tpl -->
			{{{ end }}}

			<div data-widget-area="left">
				{{{each widgets.left}}}
				{{widgets.left.html}}
				{{{end}}}
			</div>
		</div>
		<div class="col-lg-8 col-12">
			<div class="col-lg-11">
				{{{ if !posts.length }}}
				<div class="alert alert-info">[[groups:details.has_no_posts]]</div>
				{{{ end }}}
				<!-- IMPORT partials/posts_list.tpl -->
			</div>
			<div data-widget-area="right">
				{{{each widgets.right}}}
				{{widgets.right.html}}
				{{{end}}}
			</div>
		</div>
	</div>
</div>
