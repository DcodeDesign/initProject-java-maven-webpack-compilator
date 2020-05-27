<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<h5 class="text-center">SASS : les préfixes</h5>
<div class="container-expand">
    <div class="expand">
        <span> + </span>
    </div>
    <div class="content">
<div>
    <div class="grid-col-6">

<pre class="code code-css"><label>SCSS</label><code>$prefix: grid-col-;

.\#{$prefix}1 {
    width: 8.33%;
}
.\#{$prefix}2 {
    width: 16.66%;
}
.\#{$prefix}2-5 {
    width: 20%;
}
.\#{$prefix}3 {
    width: 25%;
}
.\#{$prefix}4 {
    width: 33.33%;
}
.\#{$prefix}5 {
    width: 41.66%;
}
.\#{$prefix}6 {
    width: 50%;
}
.\#{$prefix}7 {
    width: 58.33%;
}
.\#{$prefix}8 {
    width: 66.66%;
}
.\#{$prefix}9 {
    width: 75%;
}
.\#{$prefix}10 {
    width: 83.33%;
}
.\#{$prefix}11 {
    width: 91.66%;
}
.\#{$prefix}12 {
    width: 100%;
}
.\#{$prefix}hidden {
    display:none;
}</code></pre>

    </div>

    <div class="grid-col-6">

<pre class="code code-css"><label>CSS</label><code>
.grid-col-1 {
    width: 8.33%;
}
.grid-col-2 {
    width: 16.66%;
}
.grid-col-2-5 {
    width: 20%;
}
.grid-col-3 {
    width: 25%;
}
.grid-col-4 {
    width: 33.33%;
}
.grid-col-5 {
    width: 41.66%;
}
.grid-col-6 {
    width: 50%;
}
.grid-col-7 {
    width: 58.33%;
}
.grid-col-8 {
    width: 66.66%;
}
.grid-col-9 {
    width: 75%;
}
.grid-col-10 {
    width: 83.33%;
}
.grid-col-11 {
    width: 91.66%;
}
.grid-col-12 {
    width: 100%;
}
.grid-col-hidden {
    display:none;
}</code></pre>
    </div>
</div>
    </div>
</div>
