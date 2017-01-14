---
layout: single
author_profile: false
---

{% for person in site.data.people %}
<ul>
    <li><img src="{{ person.avatar }}" /></li>
    {% if person.name %}
      <li>{{ person.name }}</li>
    {% endif %}
    {% if person.position %}
      <li>{{ person.position }}</li>
    {% endif %}
    {% if person.uri %}
      <li>{{ person.uri }}</li>
    {% endif %}
    {% if person.email %}
      <li>{{ person.email }}</li>
    {% endif %}
</ul>
{% endfor %}
