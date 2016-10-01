

##Tools (A discussion)



###Markdown


As I said earlier, this file I'm writing is a markdown file, which is a specific implementation of the "markup" language, a text formatting/rendering software which serves as a standard method of stylizing and formatting text. Importantly, it can be rendered universally in many different file types across all computers, on web browsers, and more. It's a crucial way in which we can write text and have it be parsable but also a bit more - we can include links and images to bolster our writing. And these images can be pulled from other files in our repository which we have shared, thus, with markdown, we can bring everything together, across files, to present a followable narrative. Using another tool which we'll discuss later, **pandoc**, we can convert easily and fluidly from all different kinds of files. We can go from the entirely human-made .md file, which is just text and basic markdown syntax, to a .html file! A webpage from some text!

There's a bunch of basic markdown syntax which I've used to write this paper. I'll briefly go over some main, usefull stuff.

* The section headers that I've been using. 
     - Put from one # to six ###### at the start of a new line to make a header, from largest (#) to smallest (######). Don't put more than six! It may not render properly on certain pages and just show up as seven hashtags. Gross!
* Basic text formatting 
     - Bolding: two \* on either side of your desired-to-be-bolded text. 
     - Italics are the same, but one \*. 
     - Code: Four spaces at the start of the new line. We'll see some of this later!
     - Quotes: a \> at the start of a new line.
* Links, images, more!
     - A link in markdown follows a pretty simple syntax. \[Text that will be seen and clickable]\(Desired link to webpage)
         - [Click me for a link to google!](www.google.com)
     - An image is a very simple adjustment to our previous link syntax. Just add an ! to the beginning, i.e. !\[]\() This will render an image inline, on the page. 
     - We can also use images in our shared repositories or local files! Just make sure to use proper . and .. relative pathways!
         - ![Markdown logo](../images/markdown-logo.png)
* These lists
     - Bulleted - Just put a \* at the start of each new list entry line. 
     - For these indented lists, put about four or so spaces before another \- or \* at the start of a new, sublist element.
     - For ordered ones, put numbers! These can be kind of tricky syntactically so just fiddle around with it and it should work eventually.
* Of course, there's more to markdown, but this is a good basic overview of some simple syntax. We can quickly see that being able to enrich our text beyond that of just a textfile can be very powerful, and together, a markdown file can bring all the elements of a project together, in a readable, parsable, implementable way. 


###Pandoc


![Pandoc logo](../images/pandoc-logo.png)


I mentioned that markdown files can be easily converted from one type to another, human to .html. This isn't a trivial process inherent to markdown, however. **Pandoc** allows us to convert these files freely by smartly taking into account the original file's syntax and transforming it into the end, desired file's syntax. It can be done pretty easily using **bash**. While I won't get into the specifics on how to use the bash shell, we will show how to use pandoc, in the bash shell, to convert filetypes.

    $ sudo apt-get install pandoc

First we actually need to install the package. For simplicities sake, let's assume we're in the working directory of the file which we want to convert, testfile.md. Let's say we want it to be converted into a .html. This will take only one line in the terminal with pandoc!

    $ pandoc testfile.md -s -o testfile.html

Let's break that down. The first portion, `pandoc` signals to the bash shell that we're going to be using commands within the pandoc library. Then, we just put our starting file. 

*It can be located somewhere else, we just have to refer to it with . and .. and / relative pathways. This shouldn't be too complex, but very quickly: "." refers to your current directory. ".." refers to the directory one step removed, closer to the root directory. We can use a combination of ../directory/file.md and directory/file.md to refer to files anywhere within our drive. *

Anyway, let's get back to the pandoc commands. We then follow the file with two relatively standard options, `-s` and `-o`. These modify the standard pandoc conversion command to be more usable and better for our purposes.   
`-s` indicates that we want to create a "standalone" file, which isn't done on default for .html files. This will mostly help rendering be more reliable.   
`-o` tells pandoc that we want to dump the conversion code into a file and not just into the terminal standard output. This makes pandoc useful! It will convert the original file into a standalone type, then, it looks where to put this converted file syntax. `-o` lets it know to look for a file to put this in. So, we follow it up with our end filetype that we desire. Since it's a .html, pandoc parses this and knows it should use the .html conversion algorithms that it has to make the syntax perfectly transition!

Turning the markdown file, which can have content from the web, code blocks, images, and more, into a sharable webpage or other filetype is incredibly powerful! However, pandoc just ran from the command line isn't too convenient. We'd have to type in the commands every time we make a change to the original file. We can expedite that process!


###Make


Make. Make is a useful tool which enables us to basically program sets of bash commands to an easily executable macro. This is done pretty simply. Let's assume we have make installed. We want to make a macro to speed up some of the processes that we're doing - perhaps we're writing a paper and want to make incremental saves and additions, creating a final product we can check to see how it's coming along. Markdown can be finicky! And we could also notice other errors or issues with our code chunks in the markdown file, etc. Make lets us enter in a sequence of bash commands, in a macro format, which we can then easily and simply execute. 

We begin with The Makefile. This is the file in which we store our macros. The syntax is simple, but we still have to make sure we know all of it to actually use the make macro process. The most simple syntax of the makefile is

    target:dependencies
    	bash command(s)

Let's go over each part. 

* The `target` is the file we wish to create with the macro. This is not always a file, though, as the Makefile has a few special targets to make the process even more efficient. Two common built-in targets are `all` and `clean`. I'm using both in the Makefile I'm using to make this paper! The all target lets us show our "main" file which we want to iterate upon every time we run the macro. Perhaps there's files that aren't worth remaking every time, or the makefile is complicated. This lets us show the file which, at the minimum, the makefile must run through enough macros to create. We put these main files as the dependencies of the all target, with no bash commands. The clean target, on the other hand, has no dependencies! We can use this to simply delete interim or problematic files easily with the make command.

* The dependencies are the files which we will use in the macros to make our end file. We have to include all of them or the makefile won't know how to parse our commands or where to find the files. This listing can be pretty long, so Makefiles allow us some leeway here to use wildcards or variables to refer to more than just individual files at once. However, the syntax is a bit tricky and I'm not completely confident in it, and I don't want to spread misinformation. Here's a handy Make tutorial :) [Gaston's Make Tutorial](https://github.com/unix-tools/tutorial-makefiles)

* The bash commands are simply the lines of terminal code which make will run while it works to create the end target file. Now, this is where make becomes powerful: we can use packages or anything of all sorts which we would use directly on the command line! If you didn't see it coming, we can use `pandoc` here!

Now that we have the makefile, and all the pathways and stuff are set up, in the terminal we can simply enter `make`. This should parse through the Makefile and do what we want! It should be simple to see how this allows for reproduction - we show, exactly, how we made certain files, what the pathways are, what the process was - and we let others in on it! They can execute the makefile themselves or examine what went in to every file. Nifty! 

Make also lets us continually and incrementally update our files, clean them out, then update them again. Why would we want slow, incremental additions to files while we're working on them? 



###Git and Github

![Git logo](../images/git-logo.png)

Git, in combination with Github, allows us to keep track of how our files are doing, what's been changed, document changes, and, ultimately, share the files and their repositories with the world. This is understandably very powerful in terms of reproducibility - we can interface with the bash terminal, our files, and the internet all at once, document the changes we've made, and push them out to public directories on Github for all to see. Github is the website which is the online side of git - what we do with git in our terminal, in the end, is pushed to a repository on the Github website, which we can share. 

Again, we'll assume git is installed. Then, we'll initialize our directory as a "git repository" by doing `git init`. The basic git process is such:

     $ git status
     $ git add (files)
     $ git commit -m "message"
     $ git push

We don't just automatically share everything we do, however! Git is a conscious process through which we add files to a queue, decide that the change is good with a commit and a commit message, then push to our online Github repository. So, we select the files we desire to update or add, then decide if we're ok with it, then push it to Github. We can document and comment each step of the way! 