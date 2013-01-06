../html/%.html: %.rst
	rst2html $< $@
