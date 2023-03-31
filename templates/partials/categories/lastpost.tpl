<div class="lastpost background-link-container border-start border-2 lh-sm h-100" style="border-color: {./bgColor}!important;">
	{{{ each ./posts }}}
	{{{ if @first }}}
	<div component="category/posts" class="ps-2 text-xs">
		<a class="background-link" href="{config.relative_path}/topic/{./topic.slug}{{{ if ./index }}}/{./index}{{{ end }}}"></a>
		<div>
			<a class="text-decoration-none" href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(posts.user, "18px", true, "avatar-tooltip")}</a>
			<a class="permalink text-muted" href="{config.relative_path}/topic/{./topic.slug}{{{ if ./index }}}/{./index}{{{ end }}}">
				<span class="timeago text-xs" title="{../timestampISO}"></span>
			</a>
		</div>
		<div class="post-content text-xs line-clamp-2 lh-sm">
			{./content}
		</div>
	</div>
	{{{ end }}}
	{{{ end }}}

	{{{ if !./posts.length }}}
	<div component="category/posts" class="ps-2">
		<div class="post-content overflow-hidden text-xs">
			[[category:no_new_posts]]
		</div>
	</div>
	{{{ end }}}
</div>
