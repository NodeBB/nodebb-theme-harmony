<div component="bottombar" class="bottombar d-flex flex-column d-lg-none ff-secondary gap-1 align-items-center sticky-top" style="transition: top 150ms linear;">
	<!-- IMPORT partials/mobile-nav.tpl -->
</div>

<script>
	const headerEl = document.querySelector('[component="bottombar"]');
	if (headerEl && headerEl.classList.contains('sticky-top')) {
		const rect = headerEl.getBoundingClientRect();
		const offset = Math.max(0, rect.bottom);
		document.documentElement.style.setProperty('--panel-offset', offset + `px`);
	} else {
		document.documentElement.style.setProperty('--panel-offset', `0px`);
	}
</script>