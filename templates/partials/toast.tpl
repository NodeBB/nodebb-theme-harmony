<div id="{alert_id}" role="alert" class="alert alert-dismissible alert-{type}" component="toaster/toast">
	<button type="button" class="btn-close float-end" data-bs-dismiss="alert" aria-label="close"></button>
	{{{ if image }}}
	<img src="{image}">
	{{{ end }}}

	{{{ if title }}}
	<strong>{title}</strong>
	{{{ end }}}

	{{{ if message }}}
	<p>{message}</p>
	{{{ end }}}
</div>
