'use strict';

$(document).ready(function () {
	setupQuickReply();
	setupMobileMenu();
	setupSearch();

	function setupMobileMenu() {
		$('[component="sidebar/toggle"]').on('click', function () {
			$('.sidebar').toggleClass('open');
		});
	}

	function setupQuickReply() {
		$(window).on('action:ajaxify.end', function (ev, data) {
			if (data.url && data.url.match('^topic/')) {
				if (config.enableQuickReply) {
					require(['persona/quickreply'], function (quickreply) {
						if (quickreply) {
							quickreply.init();
						}
					});
				}
			}
		});
	}

	function setupSearch() {
		$('[component="sidebar/search"]').on('shown.bs.dropdown', function () {
			$('[component="search/fields"] input[name="query"]').trigger('focus');
		});
	}
});
