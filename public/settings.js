'use strict';

define('forum/account/theme', ['forum/account/header', 'api', 'settings', 'alerts'], function (header, api, settings, alerts) {
	const Theme = {};

	Theme.init = () => {
		header.init();
		Theme.setupForm();
	};

	Theme.setupForm = () => {
		const saveEl = document.getElementById('save');
		if (saveEl) {
			const formEl = document.getElementById('theme-settings');
			saveEl.addEventListener('click', async () => {
				const themeSettings = settings.helper.serializeForm($(formEl));
				await api.put(`/users/${ajaxify.data.uid}/settings`, {
					settings: {
						...themeSettings,
					},
				});
				if (ajaxify.data.isSelf) {
					config.theme = (await api.get('/api/config')).theme;
				}
				alerts.success('[[success:settings-saved]]');
			});
		}
	};

	return Theme;
});
