{{{ if config.loggedIn }}}
<div class="btn-group bottom-sheet" component="topic/watch">
	<button class="btn-ghost-sm d-flex gap-2 align-items-baseline dropdown-toggle" data-bs-toggle="dropdown" type="button">
		<span component="category/watching/menu" {{{ if !./isWatched }}}class="hidden"{{{ end }}}><i class="fa fa-fw fa-inbox text-primary"></i><span class="visible-md-inline visible-lg-inline fw-semibold"> [[category:watching]]</span></span>

		<span component="category/notwatching/menu" {{{ if !./isNotWatched }}}class="hidden"{{{ end }}}><i class="fa fa-fw fa-clock-o text-primary"></i><span class="visible-md-inline visible-lg-inline fw-semibold"> [[category:not-watching]]</span></span>

		<span component="category/ignoring/menu" {{{ if !./isIgnored }}}class="hidden"{{{ end }}}><i class="fa fa-fw fa-eye-slash text-primary"></i><span class="visible-md-inline visible-lg-inline fw-semibold"> [[category:ignoring]]</span></span>
	</button>

	<ul class="dropdown-menu">
		<li>
			<a class="dropdown-item d-flex" href="#" component="category/watching" data-state="watching">
				<span><i component="category/watching/check" class="fa fa-fw {{{ if ./isWatched }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-inbox"></i> [[category:watching]]</span>
					<p class="help-text text-muted"><small>[[category:watching.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="category/notwatching" data-state="notwatching">
				<span><i component="category/notwatching/check" class="fa fa-fw {{{ if ./isNotWatched }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-clock-o"></i> [[category:not-watching]]</span>
					<p class="help-text text-muted"><small>[[category:not-watching.description]]</small></p>
				</div>
			</a>
		</li>

		<li>
			<a class="dropdown-item d-flex" href="#" component="category/ignoring" data-state="ignoring">
				<span><i component="category/ignoring/check" class="fa fa-fw {{{ if ./isIgnored }}}fa-check{{{ end }}}"></i></span>
				<div class="d-flex flex-column">
					<span><i class="fa fa-fw fa-eye-slash"></i> [[category:ignoring]]</span>
					<p class="help-text text-muted"><small>[[category:ignoring.description]]</small></p>
				</div>
			</a>
		</li>
	</ul>
</div>
{{{ end }}}