---
title: "People"
permalink: /people/
layout: single
author_profile: false
---

{% for person in site.data.people %}
<div class='person'>
  <div class='person-photo-wrapper'>
    <img class="person-photo" src="{{ person.avatar }}" />
  </div>
  <div class='person-details-wrapper'>
    <ul class="person-details">
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
  </div>
  <div class='person-bio-wrapper'>
    {% if person.bio %}
      <p class='person-bio'>{{ person.bio }}</p>
    {% endif %}
  </div>
</div>
{% endfor %}

<!-- {% for person in site.data.people %}
<div class="one-column">
  <img src="{{ person.avatar }}" width="100%">
</div>
<div class="two-column">
  <ul>
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
</div>
{% endfor %} -->
