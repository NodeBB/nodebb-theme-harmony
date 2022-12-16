'use strict';

$(document).ready(function () {
	setupMobileMenu();
	setupSearch();
	setupDrafts();

	$('[component="skinSwitcher"]').on('click', '.dropdown-item', function () {
		const skin = $(this).attr('data-value');
		$('[component="skinSwitcher"] .dropdown-item .fa-check').addClass('invisible');
		$(this).find('.fa-check').removeClass('invisible');
		require(['forum/account/settings'], function (accountSettings) {
			$('[component="skinSwitcher"] [component="skinSwitcher/icon"]').addClass('fa-fade');
			accountSettings.changeSkin(skin);
		});
	});

	require(['hooks'], function (hooks) {
		hooks.on('action:skin.change', function () {
			$('[component="skinSwitcher"] [component="skinSwitcher/icon"]').removeClass('fa-fade');
		});

		$(window).on('action:composer.resize action:sidebar.toggle', function () {
			$('[component="composer"]').css({
				left: $('.sidebar-left').outerWidth(true),
				width: $('#panel').width(),
			});
		});
	});

	function setupMobileMenu() {
		$('[component="sidebar/toggle"]').on('click', function () {
			$('.sidebar').toggleClass('open');
			$(window).trigger('action:sidebar.toggle');
		});
	}

	function setupSearch() {
		$('[component="sidebar/search"]').on('shown.bs.dropdown', function () {
			$(this).find('[component="search/fields"] input[name="query"]').trigger('focus');
		});

		function resizeResults(hookData) {
			if (hookData && hookData.data && !hookData.data.posts.length) {
				$('.bottombar .quick-search-results').css({ height: 'initial' });
				return;
			}
			const dropdown = $('.bottombar .search-dropdown');
			const padY = dropdown.innerHeight() - dropdown.height();
			const input = dropdown.find('.input-container').outerHeight(true);
			const showMore = dropdown.find('.show-more-container').outerHeight(true);
			const newHeight = Math.max(
				150,
				$(window).height() - (input + (showMore || 0) + (padY * 2) + 30)
			);
			$('.bottombar .quick-search-results').height(newHeight);
		}
		require(['hooks'], function (hooks) {
			$(window).on('resize', resizeResults);
			hooks.on('action:search.quick.complete', resizeResults);
		});
	}

	function setupDrafts() {
		require(['composer/drafts'], function (drafts) {
			function updateBadgeCount() {
				const count = drafts.getAvailableCount();
				$('[component="drafts/count"]').toggleClass('hidden', count <= 0).text(count);
			}

			async function renderDraftList() {
				const draftListEl = $('[component="drafts/list"]');
				draftListEl.find('[data-save-id]').remove();

				const draftItems = drafts.listAvailable();
				if (!draftItems.length) {
					draftListEl.find('.no-drafts').removeClass('hidden');
					return;
				}
				const html = await app.parseAndTranslate('partials/sidebar/drafts', 'drafts', { drafts: draftItems });
				draftListEl.find('.no-drafts').addClass('hidden');
				draftListEl.append(html).find('.timeago').timeago();
			}

			const draftsEl = $('[component="sidebar/drafts"]');
			draftsEl.on('shown.bs.dropdown', renderDraftList);

			draftsEl.on('click', '[component="drafts/open"]', function () {
				drafts.open($(this).attr('data-save-id'));
			});

			draftsEl.on('click', '[component="drafts/delete"]', function () {
				drafts.removeDraft($(this).attr('data-save-id'));
			});

			$(window).on('action:composer.drafts.save', updateBadgeCount);
			$(window).on('action:composer.drafts.remove', updateBadgeCount);
			updateBadgeCount();
		});
	}
});
