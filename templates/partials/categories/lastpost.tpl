<div class="lastpost background-link-container border-start border-2 h-100" style="border-color: {./bgColor}!important;">
	{{{ each ./posts }}}
	{{{ if @first }}}
	<div component="category/posts" class="ps-3">
		<a class="background-link" href="{config.relative_path}/topic/{./topic.slug}{{{ if ./index }}}/{./index}{{{ end }}}"></a>
		<p class="mb-0">
			<a href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(posts.user, "20px", true)}</a>
			<a class="permalink text-muted" href="{config.relative_path}/topic/{./topic.slug}{{{ if ./index }}}/{./index}{{{ end }}}">
				<span class="timeago" title="{../timestampISO}" style="font-size: 12px;"></span>
			</a>
		</p>
		<div class="post-content mt-2 overflow-hidden" style="font-size: 12px; max-height: 72px;">
			{./content}
		</div>
	</div>
	{{{ end }}}
	{{{ end }}}

	{{{ if !./posts.length }}}
	<div component="category/posts" class="ps-3">
		<div class="post-content overflow-hidden" style="font-size: 12px; max-height: 72px;">
			[[category:no_new_posts]]
		</div>
	</div>
	{{{ end }}}
</div>
