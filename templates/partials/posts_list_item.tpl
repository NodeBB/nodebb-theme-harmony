<li component="post" class="posts-list-item  {{{ if ./deleted }}} deleted{{{ else }}}{{{ if ./topic.deleted }}} deleted{{{ end }}}{{{ end }}}{{{ if ./topic.scheduled }}} scheduled{{{ end }}}" data-pid="{./pid}" data-uid="{./uid}">
    <hr/>
    <a class="topic-title fw-semibold fs-5 mb-2 text-reset text-break d-block" href="{config.relative_path}/post/{./pid}">
    {{{ if ./isMainPost }}}<i class="fa fa-book text-muted" title="[[topic:topic]]"></i> {{{ end }}}{./topic.title}
    </a>

    <div class="post-body d-flex flex-column gap-1">
        <div class="d-flex gap-3 post-info text-sm align-items-center">
            <div class="post-author d-flex align-items-center gap-1">
                <a class="lh-1 text-decoration-none" href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "16px", true, "not-responsive")}</a>
                <a class="lh-1 fw-semibold" href="{config.relative_path}/user/{./user.userslug}">{../user.displayname}</a>
            </div>
            <span class="timeago text-muted lh-1" title="{./timestampISO}"></span>
        </div>

        <div component="post/content" class="content text-sm text-break">
            {./content}
        </div>
    </div>
</li>