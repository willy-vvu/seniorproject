module.exports = {
  "first": "Welcome",
  "fragments": [
    {
      "id": "Welcome",
      "content": "Welcome to my senior project blog! I'm back with a weekly update.\n\nI've acquired all the necessary components, and I'm ready to jump after winter break with some \nproduction.\n\nIn fact, I've already started producing! I'll return to that later.",
      "next": [
        {
          "content": "Is this choice lame or what?",
          "next": "Welcome-Lame"
        },
        {
          "content": "I'm out of ideas.",
          "next": "Welcome-No-Ideas"
        },
        {
          "content": "...",
          "next": "Welcome-No-Clue"
        }
      ]
    },
    {
      "id": "Welcome-No-Clue",
      "content": "",
      "next": "Welcome-Lame"
    },
    {
      "id": "Welcome-Lame",
      "content": "Yeah... I thought so.",
      "next": "Summary-Mic"
    },
    {
      "id": "Welcome-No-Ideas",
      "content": "Oh, it's what happens when you're low on sleep.",
      "next": "Summary-Mic"
    },
    {
      "id": "Summary-Mic",
      "content": "Well, that's a start.\n\nAt least I was able to borrow a nice lavalier mic on Wednesday. I discovered that I can record using my smartphone, which makes it super handy!\n\nYou can see me wearing it and being strange in a video I took when I got home that day, with the point and shoot and tripod I acquired from my [last post](#blog-post-2). I've included it below:\n\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/Z2Fh7VeDz_I\" frameborder=\"0\" allowfullscreen></iframe>",
      "next": [
        {
          "content": "You look like... you're out of it...",
          "next": "Video-Strange"
        },
        {
          "content": "It's hilarious for some reason!",
          "next": "Video-Funny"
        },
        {
          "content": "It came out well.",
          "next": "Video-Well"
        },
        {
          "content": "...",
          "next": "Video-No-Clue"
        }
      ]
    },
    {
      "id": "Video-Strange",
      "content": "Oh, how different you look and sound when you're on video, versus in person. I cringed while editing it - I couldn't stand hearing how strange I sounded.",
      "next": "Summary-Permissions"
    },
    {
      "id": "Video-Funny",
      "content": "I didn't know that I could be this funny. Maybe I could quit my day job after all.",
      "next": "Summary-Permissions"
    },
    {
      "id": "Video-Well",
      "content": "Thanks! It was actually my fourth take, and even then, there was a school bus that drove by shortly before I stopped recording. If you listen closely, you can hear it.",
      "next": "Summary-Permissions"
    },
    {
      "id": "Video-No-Clue",
      "content": "No comment? Stunned? Too epic for you? None of the above? Should I have more choices?",
      "next": "Summary-Permissions"
    },
    {
      "id": "Summary-Permissions",
      "content": "Anyways.\n\nThe next day, I inquired about videography permissions. I've learned the following:\n\n- I can videotape interviews with others, given their permission\n- I can videotape groups, provided everyone is over 18 and agrees (else I might need parental consent)\n- I cannot record entire classes in session\n\nAlso, I might not be able to post it publicly to the web for privacy concerns. It's probably going to be restricted to teachers to share with students only.",
      "next": [
        {
          "content": "That's all right. Privacy first.",
          "next": "Privacy-Agree"
        },
        {
          "content": "Aww. I was looking forward to seeing it on the web.",
          "next": "Privacy-Aww"
        },
        {
          "content": "...",
          "next": "Privacy-No-Clue"
        }
      ]
    },
    {
      "id": "Privacy-Agree",
      "content": "I agree. It's always important to respect student privacy.",
      "next": "Summary-Production"
    },
    {
      "id": "Privacy-Aww",
      "content": "It's all right. Hopefully I can make the interactive code and framework behind the video open source.",
      "next": "Summary-Production"
    },
    {
      "id": "Privacy-No-Clue",
      "content": "Public or not, it'll still be a blast to work on. I'm excited to see what it'll turn out as in the end!",
      "next": "Summary-Production"
    },
    {
      "id": "Summary-Production",
      "content": "Great. With all the video and audio gear at hand, production can begin! I'll need to get as much footage as possible, so I began filming my senior project meeting on Thursday. It's at least a start.",
      "next": "Reflection"
    },
    {
      "id": "Reflection",
      "content": "#Reflection\nNow that I have all the gear working, it's time to get the actual interviews and content recorded. While I polish up and revise the script to a second draft, I need to obtain four roles of students who would like to be included. I'm at an interesting place, because next week is April Break. I can't film anyone in a school environment, but I can work on developing the interactive video software.\n\nWhether I'm filming, editing, or developing, I need to consider all the parts and how they fit together. It's the benefit of doing this by myself - I know exactly how everything will fit together. If I were in a team, it would be much easier to accomplish each segment individually, but clear communication and understanding would be vital to getting the project together into a cohesive whole.\n\nThanks for tuning in this week. I'll see you after break.",
      "next": ""
    }
  ]
}