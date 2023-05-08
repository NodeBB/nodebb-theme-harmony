<hr/>
<a class="d-flex gap-2 align-items-center topic-title fw-semibold fs-5 mb-3 text-reset text-break" href="{config.relative_path}/post/{./pid}">
    {{{ if ./isMainPost }}}<i class="fa fa-book text-muted" title="[[topic:topic]]"></i>{{{ end }}}{./topic.title}
</a>
<li component="post" class="posts-list-item  {{{ if ./deleted }}} deleted{{{ else }}}{{{ if ./topic.deleted }}} deleted{{{ end }}}{{{ end }}}{{{ if ./topic.scheduled }}} scheduled{{{ end }}}" data-pid="{./pid}" data-uid="{./uid}">
    <div class="post-body d-flex flex-column gap-1">
        <div class="d-flex gap-3 post-info">
            <div class="post-author d-flex align-items-center gap-1">
                <a class="lh-1 text-decoration-none" href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "16px", true, "not-responsive")}</a>
                <a class="fw-semibold text-sm" href="{config.relative_path}/user/{./user.userslug}">{../user.displayname}</a>
            </div>
            <span class="timeago text-sm text-muted" title="{./timestampISO}"></span>
        </div>

        <div component="post/content" class="content text-sm text-break">
            {./content}
        </div>
    </div>
</li>