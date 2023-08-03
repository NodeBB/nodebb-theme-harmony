<div id="{alert_id}" role="alert" class="alert alert-dismissible alert-{type} fade show" component="toaster/toast">
	{{{ if image }}}
	<img src="{image}">
	{{{ end }}}

	{{{ if title }}}
	<strong>{title}</strong>
	{{{ end }}}

	{{{ if message }}}
	<p class="mb-0">{message}</p>
	{{{ end }}}

	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="close"></button>
</div>
