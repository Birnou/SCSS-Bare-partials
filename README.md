# SCSS-Bare-partials

It is possible to retrieve a prepared tree https://github.com/mehmetkose/skeleton-itcss, or to be inspired by the one proposed on the article https://www.xfive.co/blog/itcss-scalable- Maintainable-css-architecture /.

As far as I am concerned since several projects, including sites and web applications, I work with a slightly different approach, on the one hand on the number of layers, and on the other hand, in terms of grouping.

It is true that I did not discover ITCSS until much later, but if we take the principle of the inverted triangle, but this time in the form of a square, since in this case the use of IDs is allowed, especially at the level Dialogs, UIs, comps and pages, here is the representation that this can give.

• Sass, allows to group all the settings both at the preprocessor level (parameters, variables and map at global level, environment ...), as well as the definition of typos and other colors used by the theme, but also various @mixins ,%holders, debug layer, CSS reset, global sprite management, ... of course at the global level. For example variables specific to certain tags, will be found at the levels of the tags in question.
