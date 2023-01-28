
			</div><!-- /.container#content -->
		</main>
		<!-- IMPORT partials/sidebar-right.tpl -->
	</div>
	<!-- IMPORT partials/mobile-footer.tpl -->
	{{{ if !isSpider }}}
	<div class="">
		<div component="toaster/tray" class="alert-window fixed-bottom pb-5 pb-md-0 mb-5 mb-md-2 pe-3 me-md-5 ms-auto" style="width:300px; z-index: 2!important;">
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
