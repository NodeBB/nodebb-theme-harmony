
			</div><!-- /.container#content -->
		</main>
		<!-- IMPORT partials/sidebar-right.tpl -->
	</div>
	<!-- IMPORT partials/mobile-footer.tpl -->
	{{{ if !isSpider }}}
	<div class="row">
		<div component="toaster/tray" class="col-12 col-md-3 alert-window fixed-bottom pb-3 mb-5 mb-md-2 me-md-5 ms-auto">
			<div id="reconnect-alert" class="alert alert-dismissible alert-warning clearfix hide" component="toaster/toast">
				<button type="button" class="btn-close float-end" data-bs-dismiss="alert" aria-hidden="true"></button>
				<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
			</div>
		</div>
	</div>
	{{{ end }}}

	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
