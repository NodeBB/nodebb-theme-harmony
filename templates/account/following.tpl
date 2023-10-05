<!-- IMPORT partials/account/header.tpl -->

<h3 class="fw-semibold fs-5">[[pages:{template.name}, {username}]]</h3>

{{{ if !users.length }}}
<div class="alert alert-warning text-center">[[user:follows-no-one]]</div>
{{{ end }}}

<div class="row row-cols-2 row-cols-lg-3 row-cols-xl-4 g-4">
{{{ each users }}}
<!-- IMPORT partials/users/item.tpl -->
{{{end}}}
</div>

<!-- IMPORT partials/paginator.tpl -->
<!-- IMPORT partials/account/footer.tpl -->