{{{ if config.loggedIn }}}
<div class="btn-group bottom-sheet" component="topic/watch">
	<button class="btn-ghost-sm d-flex gap-2 dropdown-toggle" data-bs-toggle="dropdown" type="button">
		<span component="topic/following/menu" class="d-flex gap-2 align-items-center{{{ if !isFollowing }}} hidden{{{ end }}}">
			<i class="fa fa-fw fa-bell-o link-primary"></i>
			<span class="d-none d-md-inline fw-semibold">[[topic:watching]]</span>
		</span>

		<span component="topic/not-following/menu" class="d-flex gap-2 align-items-center{{{ if !isNotFollowing}}} hidden{{{ end }}}">
			<i class="fa fa-fw fa-bell-slash-o link-primary"></i>
			<span class="d-none d-md-inline fw-semibold">[[topic:not-watching]]</span>
		</span>

		<span component="topic/ignoring/menu" class="d-flex gap-2 align-items-center{{{ if !isIgnoring }}} hidden{{{ end }}}">
			<i class="fa fa-fw fa-eye-slash link-primary"></i>
			<span class="d-none d-md-inline fw-semibold">[[topic:ignoring]]</span>
		</span>
	</button>
	<ul class="dropdown-menu">
		<li>
			<a class="dropdown-item d-flex" href="#" component="topic/following">
				<span><i component="topic/following/check" class="fa fa-fw {{{ if isFollowing }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-bell-o"></i> [[topic:watching]]</span>
					<p class="help-text text-muted"><small>[[topic:watching.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="topic/not-following">
				<span><i component="topic/not-following/check" class="fa fa-fw {{{ if isNotFollowing }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-bell-slash-o"></i> [[topic:not-watching]]</span>
					<p class="help-text text-muted"><small>[[topic:not-watching.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="topic/ignoring">
				<span><i component="topic/ignoring/check" class="fa fa-fw {{{ if isIgnoring }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-eye-slash"></i> [[topic:ignoring]]</span>
					<p class="help-text text-muted"><small>[[topic:ignoring.description]]</small></p>
				</div>
			</a>
		</li>
	</ul>
</div>
{{{ end }}}