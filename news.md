---
title: "News"
layout: page
author_profile: false
---

# News
{% for post in site.posts %}
<div class='content'>
  <p class='date'>{{post.date | date: "%B %d, %Y" }}</p>
  <h4>
      {{post.title}}
  </h4>
  <p>{{post.excerpt}}</p>
</div>
{% endfor %}
