<!-- IMPORT partials/account/header.tpl -->
<h3 class="fw-semibold fs-5">[[pages:{template.name}, {username}]]</h3>

{{{ if !users.length }}}
<div class="alert alert-warning text-center">[[user:has-no-follower]]</div>
{{{ end }}}

<!-- IMPORT partials/users_list.tpl -->
<!-- IMPORT partials/paginator.tpl -->
<!-- IMPORT partials/account/footer.tpl -->