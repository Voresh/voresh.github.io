---
layout: page
title: /snippets
permalink: /snippets/
---

## Fast random:

{% highlight glsl %}
uint seed = 4u;
void hash() {
    seed ^= 2747636419u;
    seed *= 2654435769u;
    seed ^= seed >> 16;
    seed *= 2654435769u;
    seed ^= seed >> 16;
    seed *= 2654435769u;
}

float random() {
    hash();
    return float(seed)/4294967295.0;
}
{% endhighlight %}

source: https://x.com/SebAaltonen/status/1772650878165524617
