<hr/>
<a class="topic-title fw-semibold fs-5 text-reset" href="{config.relative_path}/post/{./pid}">
    {{{ if !./isMainPost }}}RE: {{{ end }}}{./topic.title}
</a>
<li component="post" class="posts-list-item  {{{ if ./deleted }}} deleted{{{ else }}}{{{ if ./topic.deleted }}} deleted{{{ end }}}{{{ end }}}{{{ if ./topic.scheduled }}} scheduled{{{ end }}}" data-pid="{./pid}" data-uid="{./uid}">
    <div class="post-body d-flex flex-column gap-1">
        <div class="d-flex gap-3 post-info">
            <div class="post-author d-flex gap-1">
                <a class="lh-1" href="{config.relative_path}/user/{./user.userslug}">{buildAvatar(./user, "16px", true, "not-responsive")}</a>
                <a class="fw-semibold text-sm" href="{config.relative_path}/user/{./user.userslug}">{../user.displayname}</a>
            </div>
            <span class="timeago text-sm text-muted" title="{../timestampISO}"></span>
        </div>

        <div component="post/content" class="content text-sm">
            {../content}
        </div>
    </div>
</li>