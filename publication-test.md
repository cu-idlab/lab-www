---
title: Publications (current styles)
layout: page
author_profile: false
permalink: /publication-test/
sitemap: false
robots: noindex
---

<p markdown="0" style="margin:0 0 1.5em;padding:0.6em 0.9em;background:#f4f4f4;border-left:4px solid #999;font-size:0.9em;"><strong>CURRENT STYLES (test page)</strong> &nbsp;|&nbsp; <a href="/publication-test/">Current styles</a> &nbsp;|&nbsp; <a href="/publication-test-proposed/">Proposed (Dusk Blue palette)</a></p>


# Publications
{: .page-title}

<div id="pub-filters" class="pub-filters" markdown="0">
  <div class="pub-chips" role="group" aria-label="Filter publications">
    <button type="button" class="pub-chip active" data-filter="all">All</button>
    <button type="button" class="pub-chip" data-filter="awards">Awards</button>
    <button type="button" class="pub-chip" data-filter="chi">CHI</button>
    <button type="button" class="pub-chip" data-filter="cscw">CSCW</button>
    <button type="button" class="pub-chip" data-filter="journals">Journals</button>
    <button type="button" class="pub-chip" data-filter="workshops">Workshops, posters &amp; talks</button>
    <span class="pub-count" aria-live="polite"></span>
  </div>
  <div class="pub-years" aria-label="Jump to year"></div>
</div>

{% bibliography --group_by year --group_order descending %}


<script>
(function () {
  var bar = document.getElementById('pub-filters');
  if (!bar) return;
  var lists = [].slice.call(document.querySelectorAll('ol.bibliography'));
  var chips = [].slice.call(bar.querySelectorAll('.pub-chip'));
  var count = bar.querySelector('.pub-count');
  var years = bar.querySelector('.pub-years');
  var total = 0;
  var featured = null; // Selected papers band temporarily removed; to restore, re-add the #pub-featured block and set this to document.getElementById('pub-featured')

  var groups = lists.map(function (ol) {
    var h = ol.previousElementSibling;
    if (h && !/^H[1-6]$/.test(h.tagName)) h = null;
    var rows = [].slice.call(ol.querySelectorAll(':scope > li')).map(function (li) {
      var m = li.querySelector('.pub-meta');
      total += 1;
      return { li: li, cats: (m ? m.getAttribute('data-cats') : '').split(/\s+/) };
    });
    return { ol: ol, head: h, rows: rows };
  });

  groups.forEach(function (g) {
    if (!g.head) return;
    var y = g.head.textContent.trim();
    if (!/^\d{4}$/.test(y)) return;
    g.head.id = 'year-' + y;
    var a = document.createElement('a');
    a.href = '#year-' + y;
    a.textContent = y;
    years.appendChild(a);
  });


  // Selected papers: build cards from the entries tagged "featured".
  if (featured) (function () {
    var grid = featured.querySelector('.pub-feat-grid');
    groups.forEach(function (g) {
      g.rows.forEach(function (r) {
        if (r.cats.indexOf('featured') === -1) return;
        var li = r.li, card = document.createElement('div');
        card.className = 'feat-card';
        var side = li.querySelector('.pub-side');
        if (side) {
          var tags = document.createElement('div');
          tags.className = 'feat-tags';
          tags.innerHTML = side.innerHTML;
          card.appendChild(tags);
        }
        var t = li.querySelector('.title'), pdf = null, doi = null;
        [].slice.call(li.querySelectorAll('li.pill a')).forEach(function (a) {
          if (a.textContent.trim() === 'PDF') pdf = a;
          if (/doi\.org/.test(a.href)) doi = a;
        });
        var link = pdf || doi, title = document.createElement('div');
        title.className = 'feat-title';
        if (link) {
          var ta = document.createElement('a');
          ta.href = link.href;
          ta.textContent = t ? t.textContent : '';
          title.appendChild(ta);
        } else {
          title.textContent = t ? t.textContent : '';
        }
        card.appendChild(title);
        var au = li.querySelector('.author');
        if (au) {
          var ad = document.createElement('div');
          ad.className = 'feat-authors';
          ad.innerHTML = au.innerHTML;
          card.appendChild(ad);
        }
        var vd = document.createElement('div');
        vd.className = 'feat-venue';
        var n = au ? au.nextSibling : null;
        while (n && !(n.id && /-materials$/.test(n.id))) {
          if (n.nodeType === 1 && n.tagName !== 'BR') vd.appendChild(n.cloneNode(true));
          else if (n.nodeType === 3 && n.textContent.trim()) vd.appendChild(document.createTextNode(n.textContent));
          n = n.nextSibling;
        }
        card.appendChild(vd);
        grid.appendChild(card);
      });
    });
    if (grid.children.length) featured.hidden = false;
  })();

  function apply(filter) {
    var shown = 0;
    if (featured) featured.style.display = filter === 'all' ? '' : 'none';
    groups.forEach(function (g) {
      var any = false;
      g.rows.forEach(function (r) {
        var ok = filter === 'all' || r.cats.indexOf(filter) !== -1;
        r.li.style.display = ok ? '' : 'none';
        if (ok) { any = true; shown += 1; }
      });
      g.ol.style.display = any ? '' : 'none';
      if (g.head) g.head.style.display = any ? '' : 'none';
    });
    [].slice.call(years.children).forEach(function (a) {
      var h = document.getElementById(a.getAttribute('href').slice(1));
      a.style.display = h && h.style.display === 'none' ? 'none' : '';
    });
    count.textContent = filter === 'all' ? total + ' publications' : shown + ' of ' + total + ' publications';
  }

  chips.forEach(function (c) {
    c.addEventListener('click', function () {
      chips.forEach(function (x) { x.classList.toggle('active', x === c); });
      apply(c.getAttribute('data-filter'));
    });
  });
  apply('all');
})();
</script>
