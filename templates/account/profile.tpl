<div class="account mx-auto">
	<!-- IMPORT partials/account/header.tpl -->



	<div class="row">
		{{{ if bestPosts.length }}}
		<div class="col-lg-12 col-12">
			<h3 class="fw-semibold fs-4">[[pages:account/best, {username}]]</h3>

			<div class="col-12">
				<ul component="posts" class="posts-list list-unstyled d-flex flex-column gap-2">
				{{{each bestPosts}}}
				<!-- IMPORT partials/posts_list_item.tpl -->
				{{{end}}}
				</ul>
			</div>
		</div>
		{{{ end }}}
	</div>

	<div id="user-action-alert" class="alert alert-success hide"></div>
</div>
