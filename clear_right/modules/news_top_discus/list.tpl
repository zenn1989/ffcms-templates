<div class="panel panel-default">
    <div class="panel-heading">
        {{ language.discusnews_title }}
    </div>
    <div class="panel-body">
        {% for item in local.top %}
            <a href="{{ item.pathway }}">{{ item.title }}</a> <div class="pull-right">{{ item.comments }} <i class="fa fa-comments-o"></i></div>
            <hr class="commenttype" />
        {% else %}
            {{ language.discusnews_empty }}
        {% endfor %}
    </div>
</div>