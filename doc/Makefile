HTMLDIR=_html
TXTDIR=_txt
MDDIR=_md
RSTS=$(wildcard *.rst)
HTML=$(patsubst %.rst,$(HTMLDIR)/%.html, $(RSTS))
TXT=$(patsubst %.rst,$(TXTDIR)/%.txt, $(RSTS))
MD=$(patsubst %.rst,$(MDDIR)/%.md, $(RSTS))

.PHONY : all

all : $(HTML)  $(TXT)   $(MD)


$(TXTDIR) :
	mkdir $(TXTDIR)

$(HTMLDIR) :
	mkdir $(HTMLDIR)

$(MDDIR) :
	mkdir $(MDDIR)


$(TXTDIR)/%.txt : %.rst $(TXTDIR)
	pandoc -f rst -t plain -s $< -o $@

$(HTMLDIR)/%.html : %.rst $(HTMLDIR)
	pandoc -f rst -t html -s $< -o $@

$(MDDIR)/%.md : %.rst $(MDDIR)
	pandoc -f rst -t markdown -s $< -o $@