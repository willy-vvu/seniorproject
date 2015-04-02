exports.config =
  # See http://brunch.io/#documentation for docs.
  files:
    javascripts:
      joinTo: 'app.js'
    stylesheets:
      joinTo: 'app.css'
    templates:
      joinTo: 'app.js'
#  plugins:
#    autoReload:
#      enabled: false

# Get those links linking externally!
require("./node_modules/markdown-brunch/node_modules/marked/index").InlineLexer.prototype.outputLink = `function(cap, link) {
  if (cap[0].charAt(0) !== '!') {
    return '<a target="_blank" href="'
      + link.href
      + '"'
      + (link.title
      ? ' title="'
      + link.title
      + '"'
      : '')
      + '>'
      + this.output(cap[1])
      + '</a>';
  } else {
    return '<img src="'
      + link.href
      + '" alt="'
      + cap[1]
      + '"'
      + (link.title
      ? ' title="'
      + link.title
      + '"'
      : '')
      + '>';
  }
};`