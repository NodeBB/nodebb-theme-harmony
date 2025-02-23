
			</div><!-- /.container#content -->
		</main>
		<!-- IMPORT partials/sidebar-right.tpl -->
	</div>
	{{{ if !config.theme.topMobilebar }}}
	<!-- IMPORT partials/mobile-footer.tpl -->
	{{{ else }}}
	<div class="fixed-bottom d-lg-none">
		<!-- IMPORT partials/topic/navigator-mobile.tpl -->
	</div>
	{{{ end }}}

	{{{ if !isSpider }}}
	<div>
		<div component="toaster/tray" class="alert-window fixed-bottom mb-5 mb-md-2 me-2 me-md-5 ms-auto" style="width:300px; z-index: 1090;">
			<!-- IMPORT partials/reconnect-alert.tpl -->
		</div>
	</div>
	{{{ end }}}

	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
