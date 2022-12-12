<!-- IF config.loggedIn -->
<div class="btn-group topic-watch-dropdown bottom-sheet" component="topic/watch">
	<button class="btn btn-link d-flex gap-2 align-items-baseline dropdown-toggle" data-bs-toggle="dropdown" type="button">
		<span component="topic/following/menu" class="d-flex gap-2 align-items-center<!-- IF !isFollowing --> hidden<!-- ENDIF !isFollowing -->">
			<i class="fa fa-fw fa-bell-o small link-primary"></i>
			<span class="d-none d-md-inline small">[[topic:watching]]</span>
		</span>

		<span component="topic/not-following/menu" class="d-flex gap-2 align-items-center<!-- IF !isNotFollowing --> hidden<!-- ENDIF !isNotFollowing -->">
			<i class="fa fa-fw fa-bell-slash-o small link-primary"></i>
			<span class="d-none d-md-inline small">[[topic:not-watching]]</span>
		</span>

		<span component="topic/ignoring/menu" class="d-flex gap-2 align-items-center<!-- IF !isIgnoring --> hidden<!-- ENDIF !isIgnoring -->">
			<i class="fa fa-fw fa-eye-slash small link-primary"></i>
			<span class="d-none d-md-inline small">[[topic:ignoring]]</span>
		</span>

	</button>
	<ul class="dropdown-menu">
		<li><a class="dropdown-item" href="#" component="topic/following"><i component="topic/following/check" class="fa fa-fw <!-- IF isFollowing -->fa-check<!-- ENDIF isFollowing -->"></i><i class="fa fa-fw fa-bell-o"></i> [[topic:watching]]<p class="help-text hidden-xs"><small>[[topic:watching.description]]</small></p></a></li>
		<li><a class="dropdown-item" href="#" component="topic/not-following"><i component="topic/not-following/check" class="fa fa-fw <!-- IF isNotFollowing -->fa-check<!-- ENDIF isNotFollowing -->"></i><i class="fa fa-fw fa-bell-slash-o"></i> [[topic:not-watching]]<p class="help-text hidden-xs"><small>[[topic:not-watching.description]]</small></p></a></li>
		<li><a class="dropdown-item" href="#" component="topic/ignoring"><i component="topic/ignoring/check" class="fa fa-fw <!-- IF isIgnoring -->fa-check<!-- ENDIF isIgnoring -->"></i><i class="fa fa-fw fa-eye-slash"></i> [[topic:ignoring]]<p class="help-text hidden-xs"><small>[[topic:ignoring.description]]</small></p></a></li>
	</ul>
</div>
<!-- ENDIF config.loggedIn -->