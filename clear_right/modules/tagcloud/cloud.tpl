<div class="panel panel-default">
    <div class="panel-heading">
        {{ language.tagcloud_title }}
    </div>
    <div class="panel-body">
    <p>
    {% for item in local %}
       <a href="{{ system.url }}/news/tag/{{ item.tag }}.html" class="label label-default" title="{{ language.tagcloud_alttext }} {{ item.count }}">{{ item.tag }}</a>
    {% else %}
       {{ language.tagcloud_notfound }}
    {% endfor %}
    </p>
    </div>
</div>