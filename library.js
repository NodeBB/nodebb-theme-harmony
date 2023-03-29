'use strict';

const meta = require.main.require('./src/meta');
const _ = require.main.require('lodash');
const user = require.main.require('./src/user');

const controllers = require('./lib/controllers');

const library = module.exports;

const defaults = {
	enableQuickReply: 'on',
	centerHeaderElements: 'off',
	stickyToolbar: 'on',
	autohideBottombar: 'off',
	openSidebars: 'off',
};

library.init = async function (params) {
	const { router, middleware } = params;
	const routeHelpers = require.main.require('./src/routes/helpers');

	routeHelpers.setupAdminPageRoute(router, '/admin/plugins/harmony', [], controllers.renderAdminPage);

	routeHelpers.setupPageRoute(router, '/user/:userslug/theme', [
		middleware.exposeUid,
		middleware.ensureLoggedIn,
		middleware.canViewUsers,
		middleware.checkAccountPermissions,
	], controllers.renderThemeSettings);
};

library.addAdminNavigation = async function (header) {
	header.plugins.push({
		route: '/plugins/harmony',
		icon: 'fa-paint-brush',
		name: 'Harmony Theme',
	});
	return header;
};

library.addProfileItem = async (data) => {
	data.links.push({
		id: 'theme',
		route: 'theme',
		icon: 'fa-paint-brush',
		name: '[[harmony:settings.title]]',
		visibility: {
			self: true,
			other: false,
			moderator: false,
			globalMod: false,
			admin: false,
		},
	});

	return data;
};

library.defineWidgetAreas = async function (areas) {
	const locations = ['header', 'sidebar', 'footer'];
	const templates = [
		'categories.tpl', 'category.tpl', 'topic.tpl', 'users.tpl',
		'unread.tpl', 'recent.tpl', 'popular.tpl', 'top.tpl', 'tags.tpl', 'tag.tpl',
		'login.tpl', 'register.tpl',
	];
	function capitalizeFirst(str) {
		return str.charAt(0).toUpperCase() + str.slice(1);
	}
	templates.forEach((template) => {
		locations.forEach((location) => {
			areas.push({
				name: `${capitalizeFirst(template.split('.')[0])} ${capitalizeFirst(location)}`,
				template: template,
				location: location,
			});
		});
	});

	areas = areas.concat([
		{
			name: 'Main post header',
			template: 'topic.tpl',
			location: 'mainpost-header',
		},
		{
			name: 'Main post footer',
			template: 'topic.tpl',
			location: 'mainpost-footer',
		},
		{
			name: 'Sidebar Footer',
			template: 'global',
			location: 'sidebar-footer',
		},
		{
			name: 'Brand Header',
			template: 'global',
			location: 'brand-header',
		},
	]);

	return areas;
};

async function loadThemeConfig(uid) {
	const [themeConfig, userConfig] = await Promise.all([
		meta.settings.get('harmony'),
		user.getSettings(uid),
	]);

	const config = { ...defaults, ...themeConfig, ...(_.pick(userConfig, Object.keys(defaults))) };
	config.enableQuickReply = config.enableQuickReply === 'on';
	config.centerHeaderElements = config.centerHeaderElements === 'on';
	config.stickyToolbar = config.stickyToolbar === 'on';
	config.autohideBottombar = config.autohideBottombar === 'on';
	config.openSidebars = config.openSidebars === 'on';
	return config;
}

library.getThemeConfig = async function (config) {
	config.theme = await loadThemeConfig(config.uid);;
	config.openDraftsOnPageLoad = false;
	return config;
};

library.getAdminSettings = async function (hookData) {
	if (hookData.plugin === 'harmony') {
		hookData.values = {
			...defaults,
			...hookData.values,
		};
	}
	return hookData;
};

library.saveUserSettings = async function (hookData) {
	Object.keys(defaults).forEach((key) => {
		if (hookData.data.hasOwnProperty(key)) {
			hookData.settings[key] = hookData.data[key] || undefined;
		}
	});
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
