<div class="panel panel-default">
    <div class="panel-heading">
        {{ language.newsnew_title }}
    </div>
    <div class="panel-body">
        {% for item in local.latest %}
            <a href="{{ item.pathway }}">{{ item.title }}</a>
            <!-- {% if item.image is not null %}<img src="{{ system.script_url }}/upload/news/{{ item.image }}" />{% endif %} -->
            <hr class="commenttype" />
        {% else %}
            {{ language.viewnews_empty }}
        {% endfor %}
    </div>
</div>