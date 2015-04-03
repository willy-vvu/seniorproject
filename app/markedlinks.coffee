module.exports = `function(cap, link) {
  if (cap[0].charAt(0) !== '!') {
    return '<a target="_blank" onclick="linkClick(this)" href="'
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