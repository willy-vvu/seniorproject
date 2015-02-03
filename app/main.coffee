content = require("content")
getPostIndex = (id)->
  for index in [0...content.length] when content[index].id is id
    return index
  return null

updatePost = ()->
  index = getPostIndex(currentPost)
  if index?
    post = content[index]
    $("main>h1").text(post.title)
    postcontent = require("content/#{post.id}")
    $("main>article").html(postcontent)
    minutes = Math.round( postcontent.split(" ").length / 250)
    $("main>.date").text("#{new Date(post.date).toLocaleDateString()}")
    $("main>.readtime").text("A #{minutes} minute read")
    if (index + 1 < content.length)
      $(".next").show().attr("href", "#"+content[index+1].id)
    else
      $(".next").hide()
    if (index - 1 >= 0)
      $(".previous").show().attr("href", "#"+content[index-1].id)
    else
      $(".previous").hide()

if (index = getPostIndex(location.hash[1..]))?
  currentPost = content[index].id
else
  currentPost = content[0].id
updatePost()
$(window).on "hashchange", ()->
  if (index = getPostIndex(location.hash[1..]))?
    currentPost = content[index].id
    updatePost()
