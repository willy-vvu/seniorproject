var content = require("content"),post;
for (i = 0; i < content.length; i++) {
  post = content[i];
  post.content = require("content/" + post.id);
  // Build the inner HTML of the post page
};
document.getElementById("post-list").content = content;
