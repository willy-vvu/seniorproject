module.exports =
  first: "Intro"
  fragments:[
    {
      id: "Intro"
      content:
        """
        I've been thinking about the future of education recently, to the extent that my EQ has now become:

        > *How can I design the next-generation learning experience?*

        My thoughts? The future of learning is [*interactive*](http://www.ted.com/talks/golan_levin_ted2009).

        And thus, how cool would it be to have an interactive blog post?
        """
      next:
        [
          {
            content: "What do you mean?"
            next: "Intro-What"
          }
          {
            content: "How would you do that?"
            next: "Intro-How"
          }
        ]
    }
    {
      id: "Intro-What"
      content: "Interactivity is just an exchange between two people or things. In the context of a blog post, a simple way to provide interactivity would be to provide the reader with [multiple dialogue options](http://www.ifc.com/fix/2010/02/dialogue) to chose from."
      next: "Summary"
    }
    {
      id: "Intro-How"
      content: "For starters, I could provide the reader with [multiple options to chose from](http://thenextweb.com/twitter/2015/01/13/play-choose-adventure-twitter/). After all, interactivity is just an exchange between two people or things."
      next: "Summary"
    }
    {    
      id: "Summary"
      content: 
        """
        Although it's a tad more difficult to [author interactive content](http://www.inklestudios.com/inklewriter/), I can hope that by providing interactivity, this post can be more enjoyable, engaging, and memorable.

        # Summary
        It may not seem like much, but I had to write plenty of code under the scenes to make this interactive blog post work. It's sad that even simple interactions like the "choose your own response" are lacking from media employed in today's classroom: handouts, textbooks, videos, and lectures. By the way, the outcomes of your choices [aren't really that different](https://www.youtube.com/watch?v=45PdtGDGhac) after all. Refresh and see for yourself.
        """
      next: [
        {
          content: "What about homework? Isn't that somewhat interactive?"
          next: "Summary-Homework"
        }
        {
          content: "I see what you're saying. That's neat!"
          next: "Summary-Continued"
        }
      ]
    }
    {
      id: "Summary-Homework"
      content: 
        """
        I view homework in the same light as lectures. Even though there is an exchange between student and teacher or student and content, it's mainly in one direction. For a lecture, the teacher mainly delivers content to the student, with the student asking clarifying questions. With homework, the student mainly writes answers down on paper, without any feedback until class the next day. On the side, I've been contemplating how to bring bi-directionality to these exchanges.
        """
      next: "Summary-Continued"
    }
    {
      id: "Summary-Continued"
      content:
        """
        As a whole, my thoughts about the future of education are still quite fragmented. I have been busy soaking in as much information as possible through discussing with others, reading books, watching videos, and gathering research findings. I saw a really nifty [TED talk](http://www.ted.com/talks/sugata_mitra_build_a_school_in_the_cloud) about education, in which the speaker mentions ideas that I've thought about previously as well. I find it intriguing when multiple people across the world come up with the [same ideas at the same time](https://vimeo.com/14912890).

         However, I have yet to synthesize and coalesce the various snippets of information I've gathered. Recently, I've made some progress at making sense of it all. Eventually I'll end up capturing my thoughts in a research paper which I'll likely post down the road.
        """
      next: [
        {
          content: "Can you tell me about your recent thoughts?"
          next: "Summary-More"
        }
        {
          content: "Great! Keep me updated."
          next: "Reflection"
        }
      ]
    }
    {    
      id: "Summary-More"
      content: 
        """
        Yeah! I've been able to categorize education into three aspects of interaction:

        - Student-student or teacher-teacher
        - Student-teacher
        - Student-content

        There's plenty to be said on these three major topics, ranging from culture to [storytelling](http://www.ted.com/talks/andrew_stanton_the_clues_to_a_great_story) to interactive media, respectively. The TED Talk just touched upon student-student interaction. I have yet to fully flesh out each of these sections in depth, but there's the gist of it.
        """
      next: "Reflection"
    }
    {    
      id: "Reflection"
      content: 
        """
        # Reflection
        All right. After settling down on my current EQ, I'm definitely trying to push interactivity in everything related to my project. For my product, I've decided to create an interactive video documentary about the Senior English with Project class. This would be for anyone wanting to know more about this wonderful class, especially Juniors who have the option of taking it next year! I'm completely new to video production, so it'll also be a wonderful learning experience.
        """
      next: "Reflection-Questions"
    }
    {
      id: "Reflection-Questions"
      next: [
        {
          content: "Things are getting meta in here..."
          next: "Reflection-Meta"
        }
        {
          content: "Video? Interactive? How so?"
          next: "Reflection-Video"
        }
        {
          content: "I'm looking forward to watching it."
          next: "Reflection-Post"
        }
      ]
    }
    {
      id:"Reflection-Meta"
      content:
        """
        It is indeed! I'm hoping for my project about education and interactives to not only have an educational, interactive product, but also an educational and interactive process. It's also fittingly [meta](https://xkcd.com/688/) that I'm doing my project about the class I'm doing the project in.
        """
      next: "Reflection-Questions"
    }
    {
      id:"Reflection-Video"
      content:
        """
        I'm thinking of weaving in interactivity in a mild manner. For example, when the teacher  invites a few students to tell about their projects onscreen, the viewers would have the choice of who they would like to hear from first.

        Of course, I don't want the interaction getting in the way of enjoying the video. As with any electronics in the classroom, the technology shouldn't detract from the learning experience.
        """
      next: "Reflection-Questions"
    }
    {
      id: "Reflection-Post"
      content:
        """
        I'll have the video (or something) completed by when I present my project, which should be on Friday, May 22nd. I can hope to post it online as well, for anyone to play with at their own leisure.

        The main tip the librarian gave was to determine which aspects of the project are important to focus on and which aren't. Definitely, keeping a project in manageable size and scope is key to completing it. I'll need to do more thinking about how to keep the video down in size. I can imagine that production is a huge time commitment.

        # Evidence
        Most of the work this week was in thinking, writing, and coding this blog post. There's not too much I can provide...
        """
      next: "Evidence-Choice"
    }
    {
      id: "Evidence-Choice"
      next: [
        {
          content: "How about, um, a screen shot right now?"
          next: "Evidence-Screen"
        }
        {
          content: "Could I see your notebook?"
          next: "Evidence-Notebook"
        }
        {
          content: "What about all the links woven into this post?"
          next: "Evidence-Links"
        }
        {
          content: "Thanks. I'm satisfied."
          next: "Conclusion"
        }
      ]
    }
    {
      id: "Evidence-Screen"
      content:
        """
        Alright, fine. It's not very exciting, but here it is:

        ![](blog-post-1/Screenshot110.png)

        If you're unfamiliar with code, it may feel like peek "behind the scenes", into the inner workings of the site and the post. I hope you found it helpful.
        """
      next: "Evidence-Choice"
    }
    {
      id: "Evidence-Notebook"
      content:
        """
        Here's an excerpt from my notebook. It's of me scrawling down points of conversation I had earlier today while meeting with other senior project students.

        ![](blog-post-1/IMG_20150401_233445.jpg)

        Enjoy my messy handwriting.
        """
      next: "Evidence-Choice"
    }
    {
      id: "Evidence-Links"
      content:
        """
        Glad you noticed! There are ten distinct links, some hidden within dialogue choices. I'll leave it to you to [find them all](http://www.randalolson.com/2015/02/03/heres-waldo-computing-the-optimal-search-strategy-for-finding-waldo/). And here's one of them!
        """
      next: "Evidence-Choice"
    }
    {
      id: "Conclusion"
      content:
        """
        That concludes my first interactive blog post. Whether I'm interacting with others to exchange ideas and thoughts, or interacting with the computer to continue typing or writing code, I'll be lost in interaction until next week.
        """
    }
  ]