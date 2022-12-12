<button type="button" class="btn btn-link d-flex gap-2 align-items-baseline dropdown-toggle" data-bs-toggle="dropdown">
    <span component="category-selector-selected">
        {{{ if (selectedCategory && !showCategorySelectLabel) }}}
        <span class="category-item">
            {buildCategoryIcon(selectedCategory, "24px", "rounded-circle")}
            {selectedCategory.name}
        </span>
        {{{ else }}}
    <i class="fa fa-fw {{{ if selectCategoryIcon }}}{selectCategoryIcon}{{{ else }}}fa-list{{{ end }}} link-primary small"></i>
    <span class="visible-sm-inline visible-md-inline visible-lg-inline small">{{{ if selectCategoryLabel }}}{selectCategoryLabel}{{{ else }}}[[topic:thread_tools.select_category]]{{{ end }}}</span>
    {{{ end }}}</span>
</button>
<div component="category-selector-search" class="hidden position-absolute">
    <input type="text" class="form-control" autocomplete="off">
</div>
<ul component="category/list" class="dropdown-menu category-dropdown-menu" role="menu">
    <li component="category/no-matches" role="presentation" class="category hidden">
        <a class="dropdown-item" role="menu-item">[[search:no-matches]]</a>
    </li>
    {{{each categoryItems}}}
    <li role="presentation" class="category {{{ if ../disabledClass }}}disabled {{{ end }}}" data-cid="{../cid}" data-name="{../name}" data-parent-cid="{../parentCid}">
        <a class="dropdown-item" role="menu-item">{../level}
            <span component="category-markup" style="{{{ if ../match }}}font-weight: bold;{{{end}}}">
                <div class="category-item d-inline-block">
                    {{{ if ./icon }}}
                    {buildCategoryIcon(@value, "24px", "rounded-circle")}
                    {{{ end }}}
                    {./name}
                </div>
            </span>
        </a>
    </li>
    {{{ end }}}
</ul>