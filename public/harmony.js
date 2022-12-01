'use strict';

$(document).ready(function () {
	setupMobileMenu();
	setupSearch();

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
});
