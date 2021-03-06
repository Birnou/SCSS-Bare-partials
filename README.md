# SCSS-Bare-partials

It is possible to retrieve a prepared tree https://github.com/mehmetkose/skeleton-itcss, or to be inspired by the one proposed on the article https://www.xfive.co/blog/itcss-scalable- Maintainable-css-architecture /.

As far as I am concerned since several projects, including sites and web applications, I work with a slightly different approach, on the one hand on the number of layers, and on the other hand, in terms of grouping.

> It is true that I did not discover [ITCSS](http://www.creativebloq.com/web-design/manage-large-css-projects-itcss-101517528) until much later, but if we take the principle of the inverted triangle, but this time in the form of a square, since in this case the use of IDs is allowed, especially at the level Dialogs, UIs, comps and pages, here is the representation that this can give.

## View and definitions of _partials layers

![alt text](http://www.puce-et-media.com/externals/002-Sass-004.png "View of _partials layers")

* **Sass**, allows to group all the settings both at the preprocessor level *(parameters, variables and map at global level, environment ...)*, as well as the definition of typos and other colors used by the theme, but also various @mixins ,%holders, debug layer, CSS reset, global sprite management, ... of course at the global level. For example variables specific to certain tags, will be found at the levels of the tags in question.
* **Blocks**, frames the main blocks of the page *(&lt;header&gt;, &lt;footer&gt;, &lt;aside&gt;, &lt;main&gt; ...)*, distinguishing between .main and .content classes, or even .container classes. The presence of a special block like _blocs-layout.scss, which can itself be declined *(_blocs-layout-tablet, _blocs-layout-phone ...)*, which allows to manage the disposition according to the devices, _blocs-layout-print.scss which manages the distribution of blocks to printing.
* **Tags**, as the name suggests brings together low-level selectors by grouping them by families as much as possible, links, lists, media, typo ... and taking care to add a _tags-singles.scss which allows to group All type of singlet type &lt;hr&gt;, &lt;br&gt; and other elements of this type and a _tags-blocs.scss *(for &lt;div&gt;, &lt;span&gt;)*.
* **Comps**, is a   first distinction of components at the boundary of the interface   elements, and relates more specifically to distinct HTML elements, such   as &lt;table&gt;, &lt;figure&gt;, &lt;form&gt; *(at form and fieldset, Cards themselves)*. This   layer can also include some site-specific formatted elements, or   application, such as notes, boxes, miscellaneous information, specific   forms, etc. *(in the form of classes, .notes, .frames, .infos,. Sheets ...)*
* **UIs**,   the second component of less-oriented content components, but more   considered as elements of user interaction scouring at the site or   application, such as breadcrumb, navigation bars, search boxes, Interaction,   elements and groups of forms ... etc *(also in the form of classes   .breadcrumb, .nav, .search, .buttons, ... or HTML element like   &lt;input&gt;, &lt;select&gt;, &lt;textarea&gt; ...)*.
* **Dialogs**,   attention not to be confused with the interface components, we are   talking here only of dialog that are generally floating, modal or not. This type of object is recurrent, and many, in web applications, and having a .scss document by dialog is not superfluous.
* **Pages**,   this coding group aligns well with the concept of [CSS signatures](http://archivist.incutio.com/viewlist/css-discuss/13291)   introduced by Eric Meyer in 2002, which makes it possible to distinguish   the nature of the page (template or not). Moreover, at the level of the page, the concept of theme, and skin, can completely take its meaning.
* **Accessibility**,   this layer is purely dedicated to the support of the accessibility,   therefore of possible alternative CSS sheets,   *(_accessibility-audio.scss, _accessibility-aria.scss,   _accessibility-print.scss ...)* may also be declined.

## Nature des fichiers

