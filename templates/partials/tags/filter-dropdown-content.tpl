<button type="button" class="btn-ghost-sm d-flex gap-2 align-items-baseline dropdown-toggle" data-bs-toggle="dropdown">
    {{{ if selectedTag }}}
    <span class="d-inline-flex align-items-center gap-1">
        <i class="fa fa-fw fa-tags link-primary"></i>
        <span class="visible-md-inline visible-lg-inline fw-semibold">{selectedTag.label}</span>
    </span>
    {{{ else }}}
    <i class="fa fa-fw fa-tags link-primary"></i>
    <span class="visible-md-inline visible-lg-inline fw-semibold">[[tags:all-tags]]</span>
    {{{ end }}}
</button>
<div component="tag/filter/search" class="hidden position-absolute top-0">
    <input type="text" class="form-control form-control-sm" autocomplete="off">
</div>
<ul component="tag/filter/list" class="dropdown-menu overflow-auto" role="menu" style="max-height: 500px;">
    <li role="presentation" data-tag="">
        <a class="dropdown-item" role="menu-item" href="#"><i component="tag/select/icon" class="fa fa-fw fa-check {{{if selectedTag }}}invisible{{{ end }}}"></i> [[tags:all-tags]]</a>
    </li>
    {{{ each tagItems }}}
    <li role="presentation" data-tag="{./valueEscaped}">
        <a class="dropdown-item" role="menu-item" href="#">
            <i component="tag/select/icon" class="fa fa-fw fa-check {{{ if !./selected }}}invisible{{{ end }}}"></i>
            <span component="tag-markup">
                <div class="d-inline-flex align-items-center gap-1">
                    {./valueEscaped}
                </div>
            </span>
        </a>
    </li>
    {{{ end }}}
</ul>