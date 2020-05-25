---
title: News
layout: page
author_profile: false
---

# News

{% for post in site.data.news %}
  <!-- <div class='large-4 medium-4 columns'>
    <div class='mod modBlogPost no_bg simple'> -->
      <div class='content'>
        <p class='date'>{{post.date | date: "%B %d, %Y" }}</p>
        <h4>
            {{post.headline}}
        </h4>
        <p>{{post.body}}</p>
      </div>
    <!-- </div>
  </div> -->
{% endfor %}
