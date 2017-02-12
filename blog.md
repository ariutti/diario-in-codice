---
layout: default
title: Blog
---

Questa pagina servirà per raccogliere tutti i futuri aggiornamenti sulla produzione del libro a collezionare articoli che parlino di argomenti correlati, come l'autoedizione o il crowdfunding.

Per approfondire ulteriormente ecco il [link](https://www.facebook.com/diarioincodice/) alla _fanpage_ su _Facebook_, dove posterò di tanto in tanto altri link, immagini ed interventi più leggeri (bisogna pure svagarsi ogni tanto :))
Usa l'hashtag **#diarioincodice** per restare sempre aggiornato sulle ultime novità!

Buon divertimento!

## Reports

Ecco i link per consultare tutti i report sull'andamento della campagna di crowdfunding:

* Report [31 Maggio]({{ site.baseurl }}/assets/downloads/report_310516.pdf);
* Report [23 Maggio]({{ site.baseurl }}/assets/downloads/report_230516.pdf);
* Report [16 Maggio]({{ site.baseurl }}/assets/downloads/report_160516.pdf);
* Report [9 Maggio]({{ site.baseurl }}/assets/downloads/report_090516.pdf);
* Report [2 Maggio]({{ site.baseurl }}/assets/downloads/report_020516.pdf);
* Report [26 Aprile]({{ site.baseurl }}/assets/downloads/report_260416.pdf);
* Report [18 Aprile]({{ site.baseurl }}/assets/downloads/report_180416.pdf);

## Posts

Tutti gli aggiornamenti sul work in progress:

<div class="posts">
  {% for post in site.posts %}
  <div class="post">
    <h1 class="post-title">
      <a href="{{ site.baseurl }}{{ post.url }}">
        {{ post.title }}
      </a>
    </h1>

    <span class="post-date">{{ post.date | date_to_string }}</span>

    {{ post.excerpt }}
  </div>
  {% endfor %}
</div>


<!--
<div class="posts">
  {% for post in paginator.posts %}
  <div class="post">
    <h1 class="post-title">
      <a href="{{ site.baseurl }}/{{ post.url }}">
        {{ post.title }}
      </a>
    </h1>

    <span class="post-date">{{ post.date | date_to_string }}</span>

    {{ post.content }}
  </div>
  {% endfor %}
</div>

<div class="pagination">
  {% if paginator.next_page %}
    <a class="pagination-item older" href="{{ site.baseurl }}/page{{paginator.next_page}}">Older</a>
  {% else %}
    <span class="pagination-item older">Older</span>
  {% endif %}
  {% if paginator.previous_page %}
    {% if paginator.page == 2 %}
      <a class="pagination-item newer" href="{{ site.baseurl }}/">Newer</a>
    {% else %}
      <a class="pagination-item newer" href="{{ site.baseurl }}/page{{paginator.previous_page}}">Newer</a>
    {% endif %}
  {% else %}
    <span class="pagination-item newer">Newer</span>
  {% endif %}
</div>
-->
