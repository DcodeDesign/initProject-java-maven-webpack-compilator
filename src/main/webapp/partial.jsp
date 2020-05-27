<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h5 class="text-center">SASS : Import de fichiers « partials »</h5>
<div class="container-expand">
     <span class="expand">
         <span> + </span>
    </span>
    <div class="content">
<p>Sass étend la @import règle CSS avec la possibilité d'importer des feuilles de style Sass et CSS,
    offrant un accès aux mixins , fonctions et variables et combinant le CSS de plusieurs feuilles de style
    ensemble. Contrairement aux importations CSS simples, qui nécessitent que le navigateur effectue plusieurs
    requêtes HTTP lors du rendu de votre page, les importations Sass sont entièrement gérées lors de la compilation.</p>
<div>
    <div class="grid-col-6">

<pre class="code code-css"><label>SCSS</label><code>//_variables.scss
    @import "variables";
</code></pre>

    </div>

    <div class="grid-col-6">

<pre class="code code-css gradient-box"><label>CSS</label><code>//style.css
    @import url("grid.css");</code></pre>

            </div>
        </div>
    </div>
</div>
