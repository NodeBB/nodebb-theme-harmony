<!-- IMPORT partials/account/header.tpl -->

<h3 class="fw-semibold fs-5">{title}</h3>

<div class="alert alert-info text-center">
	{{{ if privateUploads }}}[[uploads:private-uploads-info]]{{{ else }}}[[uploads:public-uploads-info]]{{{ end }}}
</div>

{{{ if !uploads.length }}}
<div class="alert alert-warning text-center">[[uploads:no-uploads-found]]</div>
{{{ end }}}

<table class="table table-striped table-responsive">
	<thead>
		<tr>
			<th></th>
			<th></th>
		</tr>
	</thead>
	<tbody>
		{{{ each uploads }}}
		<tr data-name="{./name}">
			<td>
				<a class="text-break" href="{config.relative_path}{./url}">{./url}</a>
			</td>
			<td>
				<div class="btn-group ">
					<button class="btn btn-danger btn-sm" data-action="delete" aria-label="[[aria:delete-upload-button]]"><i class="fa fa-trash"></i></button>
				</div>
			</td>
		</tr>
		{{{ end }}}
	</tbody>
</table>

<!-- IMPORT partials/paginator.tpl -->
<!-- IMPORT partials/account/footer.tpl -->
