
			</div><!-- /.container#content -->
		</main>
		<!-- IMPORT partials/sidebar-right.tpl -->
	</div>
	<!-- IMPORT partials/mobile-footer.tpl -->
	{{{ if !isSpider }}}
	<div class="">
		<div component="toaster/tray" class="alert-window fixed-bottom mb-5 mb-md-2 me-2 me-md-5 ms-auto" style="width:300px; z-index: 1090;">
			<div id="reconnect-alert" class="alert alert-dismissible alert-warning hide" component="toaster/toast">
				<button type="button" class="btn-close" data-bs-dismiss="alert" aria-hidden="true"></button>
				<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
			</div>
		</div>
	</div>
	{{{ end }}}

	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
