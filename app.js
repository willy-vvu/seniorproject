(function(/*! Brunch !*/) {
  'use strict';

  var globals = typeof window !== 'undefined' ? window : global;
  if (typeof globals.require === 'function') return;

  var modules = {};
  var cache = {};

  var has = function(object, name) {
    return ({}).hasOwnProperty.call(object, name);
  };

  var expand = function(root, name) {
    var results = [], parts, part;
    if (/^\.\.?(\/|$)/.test(name)) {
      parts = [root, name].join('/').split('/');
    } else {
      parts = name.split('/');
    }
    for (var i = 0, length = parts.length; i < length; i++) {
      part = parts[i];
      if (part === '..') {
        results.pop();
      } else if (part !== '.' && part !== '') {
        results.push(part);
      }
    }
    return results.join('/');
  };

  var dirname = function(path) {
    return path.split('/').slice(0, -1).join('/');
  };

  var localRequire = function(path) {
    return function(name) {
      var dir = dirname(path);
      var absolute = expand(dir, name);
      return globals.require(absolute, path);
    };
  };

  var initModule = function(name, definition) {
    var module = {id: name, exports: {}};
    cache[name] = module;
    definition(module.exports, localRequire(name), module);
    return module.exports;
  };

  var require = function(name, loaderPath) {
    var path = expand(name, '.');
    if (loaderPath == null) loaderPath = '/';

    if (has(cache, path)) return cache[path].exports;
    if (has(modules, path)) return initModule(path, modules[path]);

    var dirIndex = expand(path, './index');
    if (has(cache, dirIndex)) return cache[dirIndex].exports;
    if (has(modules, dirIndex)) return initModule(dirIndex, modules[dirIndex]);

    throw new Error('Cannot find module "' + name + '" from '+ '"' + loaderPath + '"');
  };

  var define = function(bundle, fn) {
    if (typeof bundle === 'object') {
      for (var key in bundle) {
        if (has(bundle, key)) {
          modules[key] = bundle[key];
        }
      }
    } else {
      modules[bundle] = fn;
    }
  };

  var list = function() {
    var result = [];
    for (var item in modules) {
      if (has(modules, item)) {
        result.push(item);
      }
    }
    return result;
  };

  globals.require = require;
  globals.require.define = define;
  globals.require.register = define;
  globals.require.list = list;
  globals.require.brunch = true;
})();
(function() {
  var WebSocket = window.WebSocket || window.MozWebSocket;
  var br = window.brunch = (window.brunch || {});
  var ar = br['auto-reload'] = (br['auto-reload'] || {});
  if (!WebSocket || ar.disabled) return;

  var cacheBuster = function(url){
    var date = Math.round(Date.now() / 1000).toString();
    url = url.replace(/(\&|\\?)cacheBuster=\d*/, '');
    return url + (url.indexOf('?') >= 0 ? '&' : '?') +'cacheBuster=' + date;
  };

  var reloaders = {
    page: function(){
      window.location.reload(true);
    },

    stylesheet: function(){
      [].slice
        .call(document.querySelectorAll('link[rel="stylesheet"]'))
        .filter(function(link){
          return (link != null && link.href != null);
        })
        .forEach(function(link) {
          link.href = cacheBuster(link.href);
        });
    }
  };
  var port = ar.port || 9485;
  var host = br.server || window.location.hostname;

  var connect = function(){
    var connection = new WebSocket('ws://' + host + ':' + port);
    connection.onmessage = function(event){
      if (ar.disabled) return;
      var message = event.data;
      var reloader = reloaders[message] || reloaders.page;
      reloader();
    };
    connection.onerror = function(){
      if (connection.readyState) connection.close();
    };
    connection.onclose = function(){
      window.setTimeout(connect, 1000);
    };
  };
  connect();
})();

require.register("content", function(exports, require, module) {
module.exports = [
  {
    id: "informal-interview",
    date: 1419201550246,
    title: "Informal Interview Blog Post"
  }, {
    id: "essential-question-draft",
    date: 1416588810335,
    title: "Essential Question Draft"
  }, {
    id: "topic-declaration",
    date: 1413561219050,
    title: "Topic Declaration Blog Post"
  }, {
    id: "topic-exploration",
    date: 1411315386496,
    title: "Topic Exploration Blog Post"
  }
];
});

;require.register("content/essential-question-draft", function(exports, require, module) {
var __templateData = "<p><em>&quot;How can I make a mobile surface computing platform that could feasibly be used in a classroom environment?&quot;</em></p>\n<p>I&#39;ve brainstormed my essential question listed above. This question embodies my interests and is relevant to my life as a student. I would like to undertake this challenge because there is currently not a feasible solution to my knowledge - if there were such a feasible solution available, I would imagine that everyone would be using them in schools today. My essential question demonstrates the need for substantial research, as answering the question is quite an undertaking. It requires that I learn about optics and the math behind it, user experience and interaction design, industrial design and fabrication/construction techniques, and perhaps networking and machine vision algorithms. As the end product would be synthesized from various aspects ranging arcoss numerous fields in Science, Technology, Engineering, Math, and even Art, my EQ cannot be answered through secondary research alone. It requires me to apply existing and new knowledge to both hardware and software, along with original thinking for any aspect of design.</p>\n<p>Breaking the EQ down, I&#39;ve assembled a list of research questions approaching from different directions.</p>\n<ol>\n<li>How can I choose parts/materials and build the product in such a way to reduce the cost as much as possible?</li>\n<li>How can I make the product as intuitive and easy-to-use as possible, from both hardware and software fronts?</li>\n<li>How much influence can such a technology have on the existing educational system?<ul>\n<li>Is this technology truly effective in improving student understanding of course material?</li>\n<li>How can teachers make the best use of such a technology?</li>\n<li>How far are school administrators willing to go in order to allow such a technology to be used in school?</li>\n<li>How much will it cost for an entire school fully adopt the technology?</li>\n</ul>\n</li>\n</ol>\n<p>As a final product, my idea is to have a smartphone cradle with an optical sensor and a lens system which focuses the light from the screen onto the table. Such a system would be the culmination of all the research on hardware and software, optics and algoritms, and industrial design and interaction design.</p>\n";
if (typeof define === 'function' && define.amd) {
  define([], function() {
    return __templateData;
  });
} else if (typeof module === 'object' && module && module.exports) {
  module.exports = __templateData;
} else {
  __templateData;
}
});

;require.register("content/informal-interview", function(exports, require, module) {
var __templateData = "<p>I&#39;ve decided to structure this blog post as an interview of myself by myself, to get in the right mood. Here goes:</p>\n<p><strong>Q:</strong> I heard that you interviewed someone last Friday. Can you tell me some more about it?<br><strong>A:</strong> Sure, I&#39;d love to! I interviewed <em>Amy Bisiewicz</em>, the Educational Technology Director of the Acton Boxborough School District. We met in the computer lab in room 129E.</p>\n<p><strong>Q:</strong> Why did you decide to choose Mrs. Bisiewicz?<br><strong>A:</strong> I knew that she would have more than enough to bring to the table on the subject of educational technology. She&#39;s one of the most qualified people in this district for sure!</p>\n<p><strong>Q:</strong> Cool. I&#39;m sure you talked about quite a few things. What were some key ideas in the conversation?<br><strong>A:</strong> We started by getting a feel about what my senior project enables people to do. I described my vision, and we moved onto functionality and features.</p>\n<p><strong>Q:</strong> Could you repeat your vision for me?<br><strong>A:</strong> Sure - my vision is to create a device that can feasibly bring surface computing to the current education landscape.</p>\n<p><strong>Q:</strong> And what is surface computing exactly?<br><strong>A:</strong> In my case, I envision a projector that can project an interactive display onto a school desk. The interactivity comes with sensors that can detect a stylus and hands.</p>\n<p><strong>Q:</strong> What are some of the important features you discussed?<br><strong>A:</strong> Yeah! We realized that internet in the classroom is a big deal. Having a browser or access to the web in itself brings services such as Google Drive and Docs, Wikipedia, and WolframAlpha, to name a few. Also, an intuitive interface for taking notes, whether it be in the form of handwriting or a connected keyboard would really drive the product home. Some of the more whimsical ideas included a handwriting/graphics search or digitization, though they would definitely improve the product.</p>\n<p><strong>Q:</strong> Tell me some more about the special search you mentioned. I imagine it would be one of the more unique features of your device.<br><strong>A:</strong> Well, I had an idea when Mrs. Bisiewicz asked me about handwriting digitization. I thought how digitization allowed handwritten notes to be converted to text, which would make search faster. However, I imagined - what if a student could search for an item in their notes by rewriting the same thing in the search bar? That way, you could search for doodles and symbols that would otherwise be unsearchable.</p>\n<p><strong>Q:</strong> That sounds cool. What else did you discuss?<br><strong>A:</strong> We moved on to the topic of feasibility in the classroom. The device would have to be flexible to accommodate many different classroom layouts. It should be designed to enable activities and exercises that would be otherwise impossible with current computer hardware.</p>\n<p><strong>Q:</strong> Could you provide some examples of such activities?<br><strong>A:</strong> To start off, any activity that would involve rearranging desks in a circle or into groups would be infeasible with desktop computers. The tangle of wires that would ensue would be horrendous! Even in terms of group work, such a projection technology would allow seamless collaboration and sharing of information between learners. Imagine how hard it is to pass a paper to someone next to you using a laptop! And plus, a computer monitor is a wall that blocks the learner from visually engaging with the teacher.</p>\n<p><strong>Q:</strong> This sounds like what I&#39;d want in my classroom. Exactly how feasible is it?<br><strong>A:</strong> It depends on two major factors: Ease of use and cost. In terms of ease of use, Mrs. Bisiewicz added that it also needs to be easily supported from the IT department side. For cost, I&#39;m aiming to make the price as low as possible by utilizing as many existing technologies and infrastructures as I can.</p>\n<p><strong>Q:</strong> Can you tell me more about how you&#39;re thinking to pull this off?<br><strong>A:</strong> In addition to using existing technologies such as Wi-Fi and HTML5, I was originally thinking of using a low-cost optics system to project a smartphone screen. Mrs. Bisiewicz reminded me of the Raspberry Pi. Perhaps if the project gets far enough, I can ditch a smartphone in favor of a more integrated system like the Raspberry Pi. As such, I would be able to further customize it for the needs of such a product, perhaps using a stripped-down browser-based operating system. It&#39;s not going to be easy, and I may have bitten of more than I can chew, but I can at least dream big.</p>\n<p><strong>Q:</strong> Well, it was nice talking with you. You&#39;ve got some nice ideas!\n<strong>A:</strong> Thanks! The same goes for you.</p>\n<p>As a result of this conversation with Mrs. Bisiewicz, I&#39;ll definitely look into using the Raspberry Pi as a longer term alternative to the rapid-prototype usage of a smartphone. Also, making the administration, maintenance, and support of a large fleet of devices a higher priority would definitely improve the feasibility of using a device in a real-world environment. There were other interesting tidbits that she mentioned. One of which was that the school&#39;s current Wi-Fi infrastructure is outdated, and in its current state is barely supporting just the teacher&#39;s devices. Also, another question would be how to apply restrictions while on the school network. As a whole, I&#39;m quite comfortable with my Essential Question. At this point, I have yet to find any changes that I should make. This was certainly a useful experience in coming up with new ideas and getting a fresh new perspective on the matter!</p>\n<p>And as always, a quote:</p>\n<p>&quot;When humans improve technology, it&#39;s a revolution. When technology improves humans, it&#39;s evolution.&quot;</p>\n";
if (typeof define === 'function' && define.amd) {
  define([], function() {
    return __templateData;
  });
} else if (typeof module === 'object' && module && module.exports) {
  module.exports = __templateData;
} else {
  __templateData;
}
});

;require.register("content/topic-declaration", function(exports, require, module) {
var __templateData = "<p>Generally, my topic is the space where Education and Technology meet. I&#39;d like to develop open source hardware and software relating to that magical intersection space. Specifically, I&#39;m interested in the design and final result. I&#39;m looking forward to developing the user experience, with an intuitive interface, graphic design, animations, and robust tracking algorithms. I&#39;m also looking forward to playing with this project in a usable state.</p>\n<p>I would like to learn answers to new questions revealed through experimentation and research through development. I intend for my learning to be driven by trying new things and figuring out what works and what doesn&#39;t. I anticipate that I will run into questions such as:</p>\n<ul>\n<li>How low can I reduce the cost while still providing a first-class experience?</li>\n<li>What type of pico-projector should I use?<ul>\n<li>Will the screen resolution be sufficient?</li>\n<li>Can it be powered through USB?</li>\n</ul>\n</li>\n<li>What kind of tracking system should I use to track multiple styluses and fingers?<ul>\n<li>How fast and accurate can this tracking be?</li>\n</ul>\n</li>\n<li>Will a smartphone be powerful enough to provide computation to the platform?<ul>\n<li>How will multiple devices be supported?</li>\n<li>How power efficient will it be?</li>\n</ul>\n</li>\n</ul>\n<p>As research, I can try/develop different algorithms, test different hardware configurations, conduct user testing, and perhaps perform field testing in a classroom environment. In this case, research will be less of learning existing knowledge than experimentation and answering new questions. At the end, I would like to have developed a low-cost, cloud-connected, mobile computation platform targeted at education and use in the classroom. I&#39;m aiming towards less of a sellable product and more of an open-source documented process that anyone who is interested enough can follow and create one for themselves.</p>\n<p>In terms of formal interviewing, I can contact software and hardware engineers, user experience/Human Computer Interaction designers, school administration, or someone at the Concord Consortium - an organization about digital resources for education. Informally, I can interview various teachers, students, or even  people off the street.</p>\n<p>Definitely, the web will be a big resource in finding existing projects and learning from others/existing code resources. Print tends to be out of date for such a recent topic, unless the prints are recently published papers. More specifically, user testing in the form of informal interviews or question/answer sessions will be critical to rapid iteration, determining new features, as well as gauging the size and potential adoptance of the user base.</p>\n";
if (typeof define === 'function' && define.amd) {
  define([], function() {
    return __templateData;
  });
} else if (typeof module === 'object' && module && module.exports) {
  module.exports = __templateData;
} else {
  __templateData;
}
});

;require.register("content/topic-exploration", function(exports, require, module) {
var __templateData = "<p>Ever since the mid-to end of my junior year, I have had ideas for Senior project in mind. I began by considering the two largest aspects of my life - education and technology - and the space in which they collide. The initial direction I had in mind was to hybridize a brick-and-mortar classroom with an online classroom by bringing technology into the classroom. My thoughts reached out to digital pens, surface computing, and online tools. However, I found myself returning to an overarching goal; In order for technology to truly be ubiquitous in the classroom, it has to has to be discrete/unobtrusive, intuitive, easily integratable, and most importantly, low-cost. A few months ago, I discussed my senior project ideas very briefly with the CEO of an organization I interned for in the past two summers.  This non-profit organization, the Concord Consortium, develops software to be used in the classroom. I have looked around in the field, though there does not appear to be many existing projects whose aims align with mine. Since then, I have settle down on a topic involving pico-projectors and 3D sensing. More completely, my project is to create a low-cost, networked, interactive computing platform designed for schools and per-student use.</p>\n<p>I would like my senior year to be a time in which I can invest larger portions of my time to get returns much larger than I had ever before. I&#39;ve reached a point in which I can think up ideas that require much larger portions of time to reasonably achieve. Of course, I would not want my college applications to be jeopardized by my investing, so I most of my project work will take place after the new year. As always, I would like to continue to grow my programming and math skills.</p>\n<p>Recently, thinking about educational technologies has opened my eyes to the new articles in newspapers and magazines every week. In the past week alone, I picked up two articles from the Wall Street Journal and TIME Magazine about technology in the classroom, which were both very relevant to my project as well as society today.;</p>\n<p><img src=\"topic-exploration/TIME.jpg\" alt=\"\">\n<img src=\"topic-exploration/Wall Street.jpg\" alt=\"\">\n<img src=\"topic-exploration/Wall Street Detail.jpg\" alt=\"\"></p>\n<p><em>From left to right, TIME Magazine, Wall Street Journal, and a close-up of Wall Street Journal</em></p>\n<p>Although I can find plenty of sources detailing the current state of classrooms, I am not sure how much information I can find about future technologies. After all, the future is yet to be made, and I hope my senior project can double as a research project to test out new ideas and rapidly iterate upon what works and what doesn&#39;t. At least, I can interview the CEO of the Concord Consortium to gain insight on his vision of how education and technology will mesh for the next generation.</p>\n<p>Frankly, I have no current concerns about my senior project. As I see my project as a research opportunity, I will be able to collect bountiful feedback from teachers and students alike, even if the project flops and ends up unusable. As with any invention or creative endeavor, there is hardly a downside - the worst that can happen is to learn from my mistakes. I believe this project has potential - a reason that I&#39;m utterly stoked and passionate about it. As the information age of the 21st century spreads out to smartphones and social websites, it has yet to touch the education system that has remained virtually unchanged for hundreds of years. As technology has revolutionized the way we work, play, and communictae with others, it is destined to improve education - and that change starts <em>today</em>.</p>\n";
if (typeof define === 'function' && define.amd) {
  define([], function() {
    return __templateData;
  });
} else if (typeof module === 'object' && module && module.exports) {
  module.exports = __templateData;
} else {
  __templateData;
}
});

;require.register("main", function(exports, require, module) {
var content = require("content"),post;
for (i = 0; i < content.length; i++) {
  post = content[i];
  post.content = require("content/" + post.id);
  // Build the inner HTML of the post page
};
document.getElementById("post-list").content = content;

});


//# sourceMappingURL=app.js.map