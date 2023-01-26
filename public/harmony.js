'use strict';

$(document).ready(function () {
	setupNProgress();
	setupMobileMenu();
	setupSearch();
	setupDrafts();
	handleMobileNavigator();
	setupNavTooltips();

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

		hooks.on('filter:chat.openChat', function (hookData) {
			// disables chat modals & goes straight to chat page
			hookData.modal = false;
			return hookData;
		});
	});

	function setupMobileMenu() {
		require(['hooks', 'api', 'navigator'], function (hooks, api, navigator) {
			$('[component="sidebar/toggle"]').on('click', async function () {
				const sidebarEl = $('.sidebar');
				sidebarEl.toggleClass('open');
				if (app.user.uid) {
					await api.put(`/users/${app.user.uid}/settings`, {
						settings: {
							openSidebars: sidebarEl.hasClass('open') ? 'on' : 'off',
						},
					});
				}
				$(window).trigger('action:sidebar.toggle');
				if (ajaxify.data.template.topic) {
					hooks.fire('action:navigator.update', { newIndex: navigator.getIndex() });
				}
			});
		});
	}

	function setupSearch() {
		$('[component="sidebar/search"]').on('shown.bs.dropdown', function () {
			$(this).find('[component="search/fields"] input[name="query"]').trigger('focus');
		});
	}

	function setupDrafts() {
		require(['composer/drafts', 'bootbox'], function (drafts, bootbox) {
			const draftsEl = $('[component="sidebar/drafts"]');

			function updateBadgeCount() {
				const count = drafts.getAvailableCount();
				if (count > 0) {
					draftsEl.removeClass('hidden');
				}
				$('[component="drafts/count"]').toggleClass('hidden', count <= 0).text(count);
			}

			async function renderDraftList() {
				const draftListEl = $('[component="drafts/list"]');
				draftListEl.children(':not(.no-drafts)').remove();

				const draftItems = drafts.listAvailable();
				if (!draftItems.length) {
					draftListEl.find('.no-drafts').removeClass('hidden');
					return;
				}
				draftItems.reverse().forEach((draft) => {
					if (draft) {
						draft.text = utils.escapeHTML(
							draft.text.replace(/(?:\r\n|\r|\n)/g, '<br>')
						);
					}
				});

				const html = await app.parseAndTranslate('partials/sidebar/drafts', 'drafts', { drafts: draftItems });
				draftListEl.find('.no-drafts').addClass('hidden');
				draftListEl.append(html).find('.timeago').timeago();
			}


			draftsEl.on('shown.bs.dropdown', renderDraftList);

			draftsEl.on('click', '[component="drafts/open"]', function () {
				drafts.open($(this).attr('data-save-id'));
			});

			draftsEl.on('click', '[component="drafts/delete"]', function () {
				const save_id = $(this).attr('data-save-id');
				bootbox.confirm('[[modules:composer.discard-draft-confirm]]', function (ok) {
					if (ok) {
						drafts.removeDraft(save_id);
						renderDraftList();
					}
				});
				return false;
			});

			$(window).on('action:composer.drafts.save', updateBadgeCount);
			$(window).on('action:composer.drafts.remove', updateBadgeCount);
			updateBadgeCount();
		});
	}

	function setupNProgress() {
		require(['nprogress'], function (NProgress) {
			window.nprogress = NProgress;
			if (NProgress) {
				$(window).on('action:ajaxify.start', function () {
					NProgress.set(0.7);
				});

				$(window).on('action:ajaxify.end', function () {
					NProgress.done(true);
				});
			}
		});
	}

	function handleMobileNavigator() {
		const paginationBlockEl = $('.pagination-block');
		require(['hooks'], function (hooks) {
			hooks.on('action:ajaxify.end', function () {
				paginationBlockEl.find('.dropdown-menu.show').removeClass('show');
			});
			hooks.on('filter:navigator.scroll', function (hookData) {
				paginationBlockEl.find('.dropdown-menu.show').removeClass('show');
				return hookData;
			});
		});
	}

	function setupNavTooltips() {
		// remove title from user icon in sidebar to prevent double tooltip
		$('.sidebar [component="header/avatar"] .avatar').removeAttr('title');
		const tooltipEls = $('.sidebar [title]');
		tooltipEls.tooltip({
			trigger: 'manual',
			animation: false,
		});

		tooltipEls.on('mouseenter', function (ev) {
			const target = $(ev.target);
			const isDropdown = target.hasClass('dropdown-menu') || !!target.parents('.dropdown-menu').length;
			if (!$('.sidebar').hasClass('open') && !isDropdown) {
				$(this).tooltip('show');
			}
		});
		tooltipEls.on('click mouseleave', function () {
			$(this).tooltip('hide');
		});
	}
});
