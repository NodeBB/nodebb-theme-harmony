{{{ if config.loggedIn }}}
<div class="btn-group topic-watch-dropdown bottom-sheet" component="topic/watch">
	<button class="btn-ghost-sm d-flex gap-2 align-items-baseline dropdown-toggle" data-bs-toggle="dropdown" type="button">
		<span component="category/watching/menu" {{{ if !./isWatched }}}class="hidden"{{{ end }}}><i class="fa fa-fw fa-inbox text-primary"></i><span class="visible-md-inline visible-lg-inline fw-semibold"> [[category:watching]]</span></span>

		<span component="category/notwatching/menu" {{{ if !./isNotWatched }}}class="hidden"{{{ end }}}><i class="fa fa-fw fa-clock-o text-primary"></i><span class="visible-md-inline visible-lg-inline fw-semibold"> [[category:not-watching]]</span></span>

		<span component="category/ignoring/menu" {{{ if !./isIgnored }}}class="hidden"{{{ end }}}><i class="fa fa-fw fa-eye-slash text-primary"></i><span class="visible-md-inline visible-lg-inline fw-semibold"> [[category:ignoring]]</span></span>
	</button>

	<ul class="dropdown-menu">
		<li><a class="dropdown-item" href="#" component="category/watching" data-state="watching"><i component="category/watching/check" class="fa fa-fw {{{ if ./isWatched }}}fa-check{{{ end }}}"></i><i class="fa fa-fw fa-inbox"></i> [[category:watching]]<p class="help-text text-muted"><small>[[category:watching.description]]</small></p></a></li>

		<li><a class="dropdown-item" href="#" component="category/notwatching" data-state="notwatching"><i component="category/notwatching/check" class="fa fa-fw {{{ if ./isNotWatched }}}fa-check{{{ end }}}"></i><i class="fa fa-fw fa-clock-o"></i> [[category:not-watching]]<p class="help-text text-muted"><small>[[category:not-watching.description]]</small></p></a></li>

		<li><a class="dropdown-item" href="#" component="category/ignoring" data-state="ignoring"><i component="category/ignoring/check" class="fa fa-fw {{{ if ./isIgnored }}}fa-check{{{ end }}}"></i><i class="fa fa-fw fa-eye-slash"></i> [[category:ignoring]]<p class="help-text text-muted"><small>[[category:ignoring.description]]</small></p></a></li>
	</ul>
</div>
{{{ end }}}