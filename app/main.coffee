content = require("content")
currentPost = 0
loadProject = ()->
  post = content[currentPost]
  $("main>h1").text(post.title)
  $("main>article").html(require("content/#{post.id}"))
  $("main>emphasis").text(new Date(post.date).toString())
loadProject()