<div class="account">
	<!-- IMPORT partials/account/header.tpl -->
	<div class="d-flex flex-column flex-md-row">
		<!-- IMPORT partials/account/sidebar-left.tpl -->
		<div class="flex-1 ps-md-2 ps-lg-5" style="min-width: 0;">
			<h3 class="fw-semibold fs-5">{title}</h3>

			<!-- IF privateUploads -->
			<div class="alert alert-info text-center">[[uploads:private-uploads-info]]</div>
			<!-- ELSE -->
			<div class="alert alert-info text-center">[[uploads:public-uploads-info]]</div>
			<!-- ENDIF privateUploads -->

			<!-- IF !uploads.length -->
			<div class="alert alert-warning text-center">[[uploads:no-uploads-found]]</div>
			<!-- ENDIF !uploads.length -->

			<table class="table table-striped table-responsive">
				<thead>
					<tr>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					{{{each uploads}}}
					<tr data-name="{uploads.name}">
						<td>
							<a class="text-break" href="{config.relative_path}{uploads.url}">{uploads.url}</a>
						</td>
						<td>
							<div class="btn-group ">
								<button class="btn btn-danger btn-sm" data-action="delete"><i class="fa fa-trash"></i></button>
							</div>
						</td>
					</tr>
					{{{end}}}
				</tbody>
			</table>

			<!-- IMPORT partials/paginator.tpl -->
		</div>
	</div>
</div>