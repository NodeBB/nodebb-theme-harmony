<!-- IMPORT partials/account/header.tpl -->

<div class="mb-3 d-flex justify-content-between align-items-center">
	<h3 class="fw-semibold fs-5 mb-0">{{{ if isSelf }}}[[pages:account/settings]]{{{ else }}}[[pages:account/settings-of, {username}]]{{{ end }}}</h3>
	<button id="submitBtn" class="btn btn-primary">[[global:save_changes]]</button>
</div>
<div class="row">
	<div class="col-12 col-md-6">
		{{{ if !disableCustomUserSkins }}}
		<h6 class="fw-bold">[[user:select-skin]]</h6>
		<div class="">
			<select class="form-select form-select-sm" id="bootswatchSkin" data-property="bootswatchSkin">
				{{{each bootswatchSkinOptions}}}
				<option value="{bootswatchSkinOptions.value}" {{{ if bootswatchSkinOptions.selected }}}selected{{{ end }}}>{bootswatchSkinOptions.name}</option>
				{{{end}}}
			</select>
		</div>
		<hr/>
		{{{ end }}}

		{{{ if allowUserHomePage }}}
		<h6 class="fw-bold">[[user:select-homepage]]</h6>
		<div class="">
			<div class="mb-2">
				<select class="form-select form-select-sm" id="homePageRoute" data-property="homePageRoute">
					<option value="none">None</option>
					{{{ each homePageRoutes }}}
					<option value="{./route}" {{{ if ./selected }}}selected="1"{{{ end }}}>{./name}</option>
					{{{ end }}}
				</select>
				<p class="form-text text-xs">[[user:homepage_description]]</p>
			</div>
			<div id="homePageCustom" class="mb-2" style="display: none;">
				<label class="form-label" for="homePageCustom">[[user:custom_route]]</label>
				<input type="text" class="form-control form-control-sm" data-property="homePageCustom" id="homePageCustom" value="{settings.homePageRoute}"/>
				<p class="form-text text-xs">[[user:custom_route_help]]</p>
			</div>
		</div>
		<hr/>
		{{{ end }}}

		<h6 class="fw-bold">[[global:privacy]]</h6>
		<div class="">
			{{{ if !hideEmail }}}
			<div class="form-check">
				<input class="form-check-input" type="checkbox" data-property="showemail" {{{ if settings.showemail }}}checked {{{ end }}}/>
				<label class="form-check-label text-sm">[[user:show_email]]</label>
			</div>
			{{{ end }}}

			{{{ if !hideFullname }}}
			<div class="form-check">
				<input class="form-check-input" type="checkbox" data-property="showfullname" {{{ if settings.showfullname }}}checked{{{ end }}}/>
				<label class="form-check-label text-sm">[[user:show_fullname]]</label>
			</div>
			{{{ end }}}
			{{{ if !config.disableChat }}}
			<div class="form-check">
				<input class="form-check-input" type="checkbox" data-property="restrictChat" {{{ if settings.restrictChat }}}checked{{{ end }}}/>
				<label class="form-check-label text-sm">[[user:restrict_chats]]</label>
			</div>
			{{{ end }}}
		</div>
		<hr/>

		<h6 class="fw-bold">[[user:browsing]]</h6>
		<div class="">
			<div class="form-check">
				<input class="form-check-input" type="checkbox" data-property="openOutgoingLinksInNewTab" {{{ if settings.openOutgoingLinksInNewTab }}}checked{{{ end }}}/>
				<label class="form-check-label">[[user:open_links_in_new_tab]]</label>
			</div>
			{{{ if inTopicSearchAvailable }}}
			<div class="form-check">
				<input class="form-check-input" type="checkbox" data-property="topicSearchEnabled" {{{ if settings.topicSearchEnabled }}}checked{{{ end }}}/>
				<label class="form-check-label">[[user:enable_topic_searching]]</label>
			</div>
			<p class="form-text text-xs">[[user:topic_search_help]]</p>
			{{{ end }}}

			<div class="form-check">
				<input class="form-check-input" type="checkbox" data-property="updateUrlWithPostIndex" {{{ if settings.updateUrlWithPostIndex }}}checked{{{ end }}}/>
				<label class="form-check-label">[[user:update_url_with_post_index]]</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" data-property="scrollToMyPost" {{{ if settings.scrollToMyPost }}}checked{{{ end }}}/>
				<label class="form-check-label">[[user:scroll_to_my_post]]</label>
			</div>
		</div>
		<hr/>

		<h6 class="fw-bold">[[global:pagination]]</h6>
		<div class="">
			<div class="mb-2 form-check">
				<input type="checkbox" class="form-check-input" data-property="usePagination" {{{ if settings.usePagination }}}checked{{{ end }}}>
				<label class="form-check-label">[[user:paginate_description]]</label>
			</div>
			<div class="mb-2">
				<label class="form-label">[[user:topics_per_page]] ([[user:max_items_per_page, {maxTopicsPerPage}]])</label>
				<input type="text" class="form-control form-control-sm" data-property="topicsPerPage" value="{settings.topicsPerPage}">
			</div>
			<div class="">
				<label class="form-label">[[user:posts_per_page]] ([[user:max_items_per_page, {maxPostsPerPage}]])</label>
				<input type="text" class="form-control form-control-sm" data-property="postsPerPage" value="{settings.postsPerPage}">
			</div>
		</div>

		<hr/>

		<h6 class="fw-bold">[[global:sort]]</h6>
		<div class="">
			<div class="mb-2">
				<label class="form-label">[[user:category-topic-sort]]</label>
				<select class="form-select form-select-sm" data-property="categoryTopicSort">
					<option value="newest_to_oldest" {{{ if (settings.categoryTopicSort == "newest_to_oldest") }}}selected{{{ end }}}>[[topic:newest_to_oldest]]</option>
					<option value="oldest_to_newest" {{{ if (settings.categoryTopicSort == "oldest_to_newest") }}}selected{{{ end }}}>[[topic:oldest_to_newest]]</option>
					<option value="most_posts" {{{ if (settings.categoryTopicSort == "most_posts") }}}selected{{{ end }}}>[[topic:most_posts]]</option>
					<option value="most_votes" {{{ if (settings.categoryTopicSort == "most_votes") }}}selected{{{ end }}}>[[topic:most_votes]]</option>
					<option value="most_views" {{{ if (settings.categoryTopicSort == "most_views") }}}selected{{{ end }}}>[[topic:most_views]]</option>
				</select>
			</div>
			<div class="">
				<label class="form-label">[[user:topic-post-sort]]</label>
				<select class="form-select form-select-sm" data-property="topicPostSort">
					<option value="oldest_to_newest" {{{ if (settings.topicPostSort == "oldest_to_newest") }}}selected{{{ end }}}>[[topic:oldest_to_newest]]</option>
					<option value="newest_to_oldest" {{{ if (settings.topicPostSort == "newest_to_oldest") }}}selected{{{ end }}}>[[topic:newest_to_oldest]]</option>
					<option value="most_votes" {{{ if (settings.topicPostSort == "most_votes") }}}selected{{{ end }}}>[[topic:most_votes]]</option>
				</select>
			</div>
		</div>

		{{{ if !disableEmailSubscriptions }}}
		<hr/>
		<h6 class="fw-bold">[[global:email]]</h6>
		<div class="">
			<div class="mb-2">
				<label class="form-label" for="dailyDigestFreq">[[user:digest_label]]</label>
				<select class="form-select form-select-sm" id="dailyDigestFreq" data-property="dailyDigestFreq" autocomplete="off">
					{{{each dailyDigestFreqOptions}}}
					<option value="{./value}" {{{ if ./selected }}}selected="1"{{{ end }}}>{./name}</option>
					{{{end}}}
				</select>
				<p class="form-text text-xs">[[user:digest_description]]</p>
			</div>
		</div>
		{{{ end }}}

		{{{ each customSettings}}}
		<hr/>
		<h6 class="fw-bold">{./title}</h6>
		<div class="">
			{./content}
		</div>

		{{{end}}}
		<hr class="d-block d-md-none"/>
	</div>

	<div class="col-12 col-md-6">
		<h6 class="fw-bold">[[global:language]]</h6>
		<div class="">
			<select data-property="userLang" class="form-select form-select-sm mb-2">
				{{{each languages}}}
				<option value="{./code}" {{{ if ./selected }}}selected{{{ end }}}>{./name} ({./code})</option>
				{{{end}}}
			</select>
		</div>
		<hr/>
		{{{ if (isAdmin && isSelf) }}}
		<h6 class="fw-bold">[[user:acp_language]]</h6>
		<div class="">
			<select data-property="acpLang" class="form-select form-select-sm">
				{{{each acpLanguages}}}
				<option value="{./code}" {{{ if ./selected }}}selected{{{ end }}}>{./name} ({./code})</option>
				{{{end}}}
			</select>
		</div>
		<hr/>
		{{{ end }}}

		<h6 class="fw-bold">[[topic:watch]]</h6>
		<div class="">
			<div class="form-check">
				<input class="form-check-input" type="checkbox" data-property="followTopicsOnCreate" {{{ if settings.followTopicsOnCreate }}}checked{{{ end }}}/>
				<label class="form-check-label">[[user:follow_topics_you_create]]</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" data-property="followTopicsOnReply" {{{ if settings.followTopicsOnReply }}}checked{{{ end }}}/>
					<label class="form-check-label">[[user:follow_topics_you_reply_to]]</label>
			</div>
			<div class="mb-2">
				<label class="form-label">[[user:default-category-watch-state]]</label>
				<select class="form-select form-select-sm" data-property="categoryWatchState">
					<option value="watching" {{{ if categoryWatchState.watching }}}selected{{{ end }}}>[[category:watching]]</option>
					<option value="notwatching" {{{ if categoryWatchState.notwatching }}}selected{{{ end }}}>[[category:not-watching]]</option>
					<option value="ignoring" {{{ if categoryWatchState.ignoring }}}selected{{{ end }}}>[[category:ignoring]]</option>
				</select>
			</div>
		</div>
		<hr/>

		<h6 class="fw-bold">[[user:notifications]]</h6>
		<div class="">
			{{{each notificationSettings}}}
			<div class="row mb-3">
				<div class="col-7">
					<label class="text-sm">{./label}</label>
				</div>
				<div class="mb-2 col-5">
					<select class="form-select form-select-sm" data-property="{./name}">
						<option value="none" {{{ if ./none }}}selected{{{ end }}}>[[notifications:none]]</option>
						<option value="notification" {{{ if ./notification }}}selected{{{ end }}}>[[notifications:notification_only]]</option>
						<option value="email" {{{ if ./email }}}selected{{{ end }}}>[[notifications:email_only]]</option>
						<option value="notificationemail" {{{ if ./notificationemail }}}selected{{{ end }}}>[[notifications:notification_and_email]]</option>
					</select>
				</div>
			</div>
			{{{end}}}

			<div class="row">
				<div class="col-7">
					<label class="text-sm" for="upvote-notif-freq">[[user:upvote-notif-freq]]</label>
				</div>
				<div class="mb-2 col-5">
					<select class="form-select form-select-sm" id="upvote-notif-freq" name="upvote-notif-freq" data-property="upvoteNotifFreq">
						{{{ each upvoteNotifFreq }}}
						<option value="{./name}" {{{ if ./selected }}}selected{{{ end }}}>
							[[user:upvote-notif-freq.{./name}]]
						</option>
						{{{end}}}
					</select>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->
