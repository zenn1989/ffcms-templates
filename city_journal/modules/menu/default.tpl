<div class="panel panel-default">
    <div class="panel-heading">
        {{ modmenu.name }}
    </div>
    <div class="panel-body">
        <ul class="side-links" itemscope="itemscope" itemtype="{{ system.protocol }}://schema.org/SiteNavigationElement">
            {% for item in modmenu.item %}
                {% if item.depend_array %} {# its a multi level menu #}
                    <li><a href="{{ item.url }}" itemprop="url"><span itemprop="name">{{ item.name }}</span></a><span class="toggle-children"></span>
                        <ul>
                            {% for depend in item.depend_array %} {# show inside items as dropdown #}
                                <li><a href="{{ depend.url }}" itemprop="url"><span itemprop="name">{{ depend.name }}</span></a></li>
                            {% endfor %}
                        </ul>
                    </li>
                {% else %} {# single menu item #}
                    <li><a href="{{ item.url }}" itemprop="url"><span itemprop="name">{{ item.name }}</span></a></li>
                {% endif %}
            {% endfor %}
        </ul>
    </div>
</div>