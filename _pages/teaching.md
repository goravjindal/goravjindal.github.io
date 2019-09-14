---
layout: page
title: Teaching
permalink: /teaching/
description: Some courses I taught/tutored.
---

{% for teaching in site.teachings %}

{% if teaching.redirect %}
<div class="project">
    <div class="thumbnail">
        <a href="{{ teaching.redirect }}" target="_blank">
        {% if teaching.img %}
        <img class="thumbnail" src="{{ teaching.img | prepend: site.baseurl | prepend: site.url }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
         <span>
            <h1>{{ teaching.title }}</h1>
            <br/>
            <p>{{ teaching.description }}</p>
        </span>
        </a>
    </div>
</div>
{% else %}

<div class="project ">
    <div class="thumbnail">
        <a href="{{ teaching.url | prepend: site.baseurl | prepend: site.url }}">
        {% if teaching.img %}
        <img class="thumbnail" src="{{ teaching.img | prepend: site.baseurl | prepend: site.url }}"/>
        {% else %}
        <div class="thumbnail blankbox"></div>
        {% endif %}    
        <span>
            <h1>{{ teaching.title }}</h1>
            <br/>
            <p>{{ teaching.description }}</p>
        </span>
        </a>
    </div>
</div>

{% endif %}

{% endfor %}
