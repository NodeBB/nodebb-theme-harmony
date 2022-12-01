'use strict';

$(document).ready(function () {
	setupMobileMenu();
	setupSearch();
	setupDrafts();

	function setupMobileMenu() {
		$('[component="sidebar/toggle"]').on('click', function () {
			$('.sidebar').toggleClass('open');
		});
	}

	function setupSearch() {
		$('[component="sidebar/search"]').on('shown.bs.dropdown', function () {
			$('[component="search/fields"] input[name="query"]').trigger('focus');
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

			draftsEl.on('click', '[component="drafts/delete-all"]', function () {
				const draftItems = drafts.listAvailable();
				draftItems.forEach((item) => {
					drafts.removeDraft(item.save_id);
				});
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
