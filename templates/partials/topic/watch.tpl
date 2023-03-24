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
	<ul class="dropdown-menu p-1 text-sm">
		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2 p-2" href="#" component="topic/following">
				<div class="flex-1 d-flex flex-column">
					<span class="d-flex align-items-center gap-2"><i class="fa fa-fw fa-bell-o"></i><span class="flex-1 fw-semibold">[[topic:watching]]</span></span>
					<div class="help-text text-muted text-xs">[[topic:watching.description]]</div>
				</div>
				<span><i component="topic/following/check" class="fa fa-fw {{{ if isFollowing }}}fa-check{{{ end }}}"></i></span>
			</a>
		</li>

		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2 p-2" href="#" component="topic/not-following">
				<div class="flex-1 d-flex flex-column">
					<span class="d-flex align-items-center gap-2"><i class="fa fa-fw fa-bell-slash-o"></i><span class="flex-1 fw-semibold">[[topic:not-watching]]</span></span>
					<div class="help-text text-muted text-xs">[[topic:not-watching.description]]</div>
				</div>
				<span><i component="topic/not-following/check" class="fa fa-fw {{{ if isNotFollowing }}}fa-check{{{ end }}}"></i></span>
			</a>
		</li>

		<li>
			<a class="dropdown-item rounded-1 d-flex align-items-center gap-2 p-2" href="#" component="topic/ignoring">
				<div class="flex-1 d-flex flex-column">
					<span class="d-flex align-items-center gap-2"><i class="fa fa-fw fa-eye-slash"></i><span class="flex-1 fw-semibold">[[topic:ignoring]]</span></span>
					<div class="help-text text-muted text-xs">[[topic:ignoring.description]]</div>
				</div>
				<span><i component="topic/ignoring/check" class="fa fa-fw {{{ if isIgnoring }}}fa-check{{{ end }}}"></i></span>
			</a>
		</li>
	</ul>
</div>
{{{ end }}}