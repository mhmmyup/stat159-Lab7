#Hi

This is a general tutorial and explanation of how to use certain programs, packages, and file manipulation systems to create a reproducible workflow. Now, what may immediately come to your mind is: What does it mean for something to be reproducible? What is a reproducible workflow? And why does it matter?  

Put simply, the reason we put all this effort into making something "reproducible" is an ultimately simple aim: we want to create works and code and files that can be reassembled, piece by piece, and can be re-ran or re-executed from anywhere by anyone, such that anyone can follow the process we use to make reports and research and do it on their own. We, as programmers, statisticians, researchers, and academics, can sometimes forget the work that we have founded our study on, or that we, too, can contribute in a meaningful way to advancing the sum total of accessible and parsable human knowledge. We can help out everyone by using just a few tools to make our research process reproducible, and thus, far more useful!

Principles of reproducibility are far from the norm in computing practices, and may seem daunting or a hassle at first. Learning these tools and how to use them quickly and efficiently to best suit the reproduction process will make implementing the reproducible workflow simplified and logical. Hopefully we, as a programming culture, can come to see the importance of systems like this to make 

----


###Me

If you were curious, I'm a statistics student at UC Berkeley who cares a lot about **making the research process more accountable.** I've thought endlessly about how tempting and easy it may be for researchers to exaggerate or fib a little bit in their findings to make them seem a bit grander or important, to make money, etc. This is a huge issue that I think is going largely unignored! 

![UC Berkeley Reproducible Data Science](../images/stat159-logo.png)

This is my first foray into writing something like this which could be used to make better the research process, but it definitely won't be my last.  
Tutorials like these will hopefully serve to make more mainstream the importance of reproducibility in programming research and academia, just as the principles are core in the sciences and other fields. Computing is lagging behind when it comes to reproducibility, slowing the accumulative gains in knowledge that we could be facilitating if we were only sharing our code and making our research reproducible for others to alter, implement, study, and engage with. How are we supposed to advance if not together?

---


###Now what tools, exactly?

To quickly lay a framework for this tutorial, we'll be going over a few different tools to make the computing process of research reproducible. In specific, the tools we'll be looking at are

* bash
* markdown (and online platforms)
* pandoc
* git
* github
* Make/Makefiles
* and the Nano text editor. 

Even from the get-go, I am writing this file on an online markdown site so that I can see what my markdown will look like in real-time. The site I'm using is [http://markdownlivepreview.com/](http://markdownlivepreview.com/)  
It's one of the better live markdown tools out there because it's more stripped down - it (for the most part) only shows the markdown syntax that is universally rendered and recognized across the web and other platforms. More about markdown later!


####Let's go!

Hopefully this guide/blog/tutorial will make these tools more friendly and simple to use. We'll mostly be looking at the parts of these systems which specifically help in creating a reproducible workflow, so as to not distract you with irrelevant information and commands which are not immediately pertinent. Let's have fun and get started!



--------




