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
require("./node_modules/markdown-brunch/node_modules/marked/index").InlineLexer.prototype.outputLink = require("./app/markedlinks")