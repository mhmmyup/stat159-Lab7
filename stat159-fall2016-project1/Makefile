.PHONY: clean

all:paper.html

paper.md:paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md images/git-logo.png images/github-logo.png images/markdown-logo.png images/pandoc-logo.png images/stat159-logo.png
	cat paper/sections/00-abstract.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md >> paper/paper.md

paper.html:paper.md paper/sections/01-introduction.md paper/sections/02-discussion.md paper/sections/03-conclusions.md
	pandoc paper/paper.md -s -o paper/paper.html

clean:
	rm -f paper.html
	
