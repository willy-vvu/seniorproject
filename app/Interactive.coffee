
module.exports = class Interactive
  constructor: (@content, @element)->
    @article = @element.find("article")
    @article.empty()
    @nodes = for fragment in @content.fragments
      new Node(fragment)

    @chooser = new Chooser(this)
    @element.append(@chooser.element)
    @render(@content.first)

  # Renders the provided node id and recuses
  render: (id)->
    node = findById(@nodes, id)
    @appendHTML(node.html)
    @chooser.hide()
    if node.getNext()?
      @render(node.getNext())
    else if node.getChoices()?
      @chooser.show(node)

  appendHTML: (html)->
    if html.length > 0
      @article.append(html)

  appendHeading: (heading)->
    @appendHTML(marked("<div class=\"userreply\">#{heading}</div>"))

class Node
  constructor: (fragmentData)->
    @id = fragmentData.id
    @html = fragmentData.content? and marked(fragmentData.content) or ""
    @next = null
    @choices = null
    if fragmentData.next?
      if typeof fragmentData.next is "string"
        @next = fragmentData.next
      else
        @choices = for choice in fragmentData.next
          {
            html: marked("<div>#{choice.content}</div>")
            next: choice.next
          }


  getChoices: ()->
    return @choices

  removeChoice: (choice)->
    if @choices?
      @choices = @choices.filter((obj)->obj isnt choice)
    
  getNext: ()->
    if @choices?
      if @choices.length is 1
        return @choices[0].next
      else
        return null
    else
      return @next

class Chooser
  constructor: (@interactive)->
    @element = @interactive.element.find(".options")
  show: (node)->
    @element.empty()
    for choice in node.getChoices()
      elem = $("<li></li>").html(choice.html)
      do (choice)=>
        elem.click ()=>
          node.removeChoice(choice)
          @interactive.appendHeading(choice.html)
          @interactive.render(choice.next)
      @element.append(elem)
  hide: ()->
    @element.empty()

findById = (array, id)->
  for obj in array when obj.id is id
    return obj
  return null

# Make links open in new page
marked.InlineLexer.prototype.outputLink = `function(cap, link) {
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
