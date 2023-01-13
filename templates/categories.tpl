<div data-widget-area="header">
	{{{ each widgets.header }}}
	{{widgets.header.html}}
	{{{ end }}}
</div>
<div class="row">
	<div class="{{{ if widgets.sidebar.length }}}col-lg-9 col-sm-12{{{ else }}}col-lg-12{{{ end }}}">
		{{{ if pagination.pages.length }}}
		<div><!-- IMPORT partials/category-selector.tpl --></div>
		{{{ end }}}
		<ul class="categories list-unstyled" itemscope itemtype="http://www.schema.org/ItemList">
			{{{ each categories }}}
			{{{ if !@first }}}
			<hr class="text-muted opacity-25"/>
			{{{ end }}}
			<!-- IMPORT partials/categories/item.tpl -->
			{{{ end }}}
		</ul>

		<!-- IMPORT partials/paginator.tpl -->
	</div>
	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 {{{ if !widgets.sidebar.length }}}hidden{{{ end }}}">
		{{{ each widgets.sidebar }}}
		{{widgets.sidebar.html}}
		{{{ end }}}
	</div>
</div>
<div data-widget-area="footer">
	{{{ each widgets.footer }}}
	{{widgets.footer.html}}
	{{{ end }}}
</div>
