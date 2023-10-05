<!-- IMPORT partials/account/header.tpl -->

{{{ if widgets.profile-aboutme-before.length }}}
<div data-widget-area="profile-aboutme-before">
{{{each widgets.profile-aboutme-before}}}
{./html}
{{{end}}}
</div>
{{{ end }}}

{{{ if aboutme }}}
<div component="aboutme" class="text-sm text-break">
{aboutmeParsed}
</div>
{{{ end }}}

{{{ if widgets.profile-aboutme-after.length }}}
<div data-widget-area="profile-aboutme-after">
{{{each widgets.profile-aboutme-after}}}
{./html}
{{{end}}}
</div>
{{{ end }}}

<div class="account-stats container">
	<div class="row row-cols-2 row-cols-xl-3 row-cols-xxl-4 g-2">
		{{{ if !reputation:disabled }}}
		<div class="stat">
			<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100">
				<span class="stat-label text-xs fw-semibold">[[global:reputation]]</span>
				<span class="fs-2 ff-secondary" title="{reputation}">{humanReadableNumber(reputation)}</span>
			</div>
		</div>
		{{{ end }}}
		<div class="stat">
			<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100">
				<span class="stat-label text-xs fw-semibold">[[user:profile-views]]</span>
				<span class="fs-2 ff-secondary" title="
				{profileviews}">{humanReadableNumber(profileviews)}</span>
			</div>
		</div>

		<div class="stat">
			<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
				<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-user-plus"></i> <span>[[user:joined]]</span></span>
				<span class="timeago fs-6 ff-secondary" title="{joindateISO}"></span>
			</div>
		</div>

		<div class="stat">
			<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
				<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-clock"></i> <span>[[user:lastonline]]</span></span>
				<span class="timeago text-center text-break w-100 px-2 fs-6 ff-secondary" title="{lastonlineISO}"></span>
			</div>
		</div>

		{{{ if email }}}
		<div class="stat">
			<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
				<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-envelope"></i> <span>[[user:email]]</span> {{{ if emailHidden}}}<span class="text-lowercase">([[global:hidden]])</span>{{{ end }}}</span>
				<span class="text-sm text-center text-break w-100 px-2 ff-secondary">{email}</span>
			</div>
		</div>
		{{{ end }}}

		{{{ if websiteName }}}
		<div class="stat">
			<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
				<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-globe"></i> <span>[[user:website]]</span></span>
				<a class="text-sm text-center text-break w-100 px-2 ff-secondary text-underline text-reset" href="{websiteLink}" rel="nofollow noreferrer me">{websiteName}</a>
			</div>
		</div>
		{{{ end }}}

		{{{ if location }}}
		<div class="stat">
			<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
				<span class="stat-label text-xs fw-semibold"><i class="text-muted fa-solid fa-map-pin"></i> <span>[[user:location]]</span></span>
				<span class="text-center text-break w-100 px-2 fs-6 ff-secondary">{location}</span>
			</div>
		</div>
		{{{ end }}}

		{{{ if age }}}
		<div class="stat">
			<div class="align-items-center justify-content-center card card-header px-0 py-3 border-0 rounded-1 h-100 gap-2">
				<span class="stat-label text-xs fw-semibold"><span><i class="text-muted fa-solid fa-cake-candles"></i> [[user:age]]</span></span>
				<span class="fs-6 ff-secondary">{age}</span>
			</div>
		</div>
		{{{ end }}}
	</div>
</div>

<!-- IMPORT partials/account/footer.tpl -->
