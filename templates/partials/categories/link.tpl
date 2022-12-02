{{{ if ./isSection }}}
{./name}
{{{ else }}}
{{{ if ./link }}}
<a class="text-reset" href="{./link}" itemprop="url">
{{{ else }}}
<a class="text-reset" href="{config.relative_path}/category/{./slug}" itemprop="url">
{{{ end }}}
{../name}
</a>
{{{ end }}}