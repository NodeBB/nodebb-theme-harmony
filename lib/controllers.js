'use strict';

const Controllers = module.exports;

Controllers.renderAdminPage = (req, res) => {
	res.render('admin/plugins/harmony', {});
};
