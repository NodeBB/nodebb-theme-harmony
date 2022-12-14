
			</div><!-- /.container#content -->
		</main>
		<!-- IMPORT partials/sidebar-right.tpl -->
	</div>
	<!-- IMPORT partials/mobile-footer.tpl -->
	{{{ if !isSpider }}}
	<div component="toaster/tray" class="alert-window fixed-bottom w-25 pb-3 pe-3 end-0 me-5 ms-auto">
		<div id="reconnect-alert" class="alert alert-dismissible alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="btn-close float-end" data-bs-dismiss="alert" aria-hidden="true"></button>
			<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
	</div>
	{{{ end }}}

	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
