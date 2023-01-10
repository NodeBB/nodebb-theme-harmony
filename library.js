'use strict';

const meta = require.main.require('./src/meta');
const _ = require.main.require('lodash');
const user = require.main.require('./src/user');

const controllers = require('./lib/controllers');

const library = module.exports;

library.init = async function (params) {
	const { router } = params;
	const routeHelpers = require.main.require('./src/routes/helpers');

	routeHelpers.setupAdminPageRoute(router, '/admin/plugins/harmony', [], controllers.renderAdminPage);
};

library.addAdminNavigation = async function (header) {
	header.plugins.push({
		route: '/plugins/harmony',
		icon: 'fa-paint-brush',
		name: 'Harmony Theme',
	});
	return header;
};

library.defineWidgetAreas = async function (areas) {
	// const locations = ['header', 'sidebar', 'footer'];
	// const templates = [
	// 	'categories.tpl', 'category.tpl', 'topic.tpl', 'users.tpl',
	// 	'unread.tpl', 'recent.tpl', 'popular.tpl', 'top.tpl', 'tags.tpl', 'tag.tpl',
	// 	'login.tpl', 'register.tpl',
	// ];
	// function capitalizeFirst(str) {
	// 	return str.charAt(0).toUpperCase() + str.slice(1);
	// }
	// templates.forEach((template) => {
	// 	locations.forEach((location) => {
	// 		areas.push({
	// 			name: `${capitalizeFirst(template.split('.')[0])} ${capitalizeFirst(location)}`,
	// 			template: template,
	// 			location: location,
	// 		});
	// 	});
	// });

	areas = areas.concat([
		{
			name: 'Sidebar Footer',
			template: 'global',
			location: 'sidebar-footer',
		},
	]);

	return areas;
};

library.getThemeConfig = async function (config) {
	const { enableQuickReply, centerHeaderElements } = await meta.settings.get('harmony');
	config.enableQuickReply = enableQuickReply === 'on';
	config.centerHeaderElements = centerHeaderElements === 'on';
	return config;
};

library.addUserToTopic = async function (hookData) {
	const { enableQuickReply } = await meta.settings.get('harmony');
	if (enableQuickReply === 'on') {
		if (hookData.req.user) {
			const userData = await user.getUserData(hookData.req.user.uid);
			hookData.templateData.loggedInUser = userData;
		} else {
			hookData.templateData.loggedInUser = {
				uid: 0,
				username: '[[global:guest]]',
				picture: user.getDefaultAvatar(),
				'icon:text': '?',
				'icon:bgColor': '#aaa',
			};
		}
	}
	return hookData;
};

library.filterMiddlewareRenderHeader = async function (hookData) {
	const userSettings = await user.getSettings(hookData.req.uid);

	const lightSkins = [
		'default', 'cerulean', 'cosmo', 'flatly', 'journal', 'litera',
		'lumen', 'lux', 'materia', 'minty', 'morph', 'pulse', 'quartz', 'sandstone',
		'simplex', 'sketchy', 'spacelab', 'united', 'yeti', 'zephyr',
	];
	const darkSkins = [
		'cyborg', 'darkly', 'slate', 'solar', 'superhero', 'vapor',
	];
	function parseSkins(skins) {
		skins = skins.map(skin => ({
			name: _.capitalize(skin),
			value: skin === 'default' ? '' : skin,
		}));
		skins.forEach((skin) => {
			skin.selected = skin.value === userSettings.bootswatchSkin;
		});
		return skins;
	}

	hookData.templateData.bootswatchSkinOptions = {
		light: parseSkins(lightSkins),
		dark: parseSkins(darkSkins),
	};
	hookData.templateData.currentBSSkin = _.capitalize(hookData.templateData.bootswatchSkin);
	return hookData;
};

library.removeFinalBreadcrumb = async (hookData) => {
	const { templateData } = hookData;
	const { breadcrumbs } = templateData;

	const applyTo = ['category', 'topic'];

	// Remove the last breadcrumb (the current page) as it is not part of Harmony's design
	if (applyTo.includes(hookData.templateData.template.name) && breadcrumbs && breadcrumbs.length) {
		breadcrumbs.pop();
	}

	return hookData;
};
