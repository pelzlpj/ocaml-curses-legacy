# Generate cpp-processed versions of a couple of files.
# This should be done before creating a source archive, as cpp
# does the wrong thing (!) at least under OS X.

curses.ml:	curses.ml.in functions.c
	cpp -P -xassembler-with-cpp -o $@ $<
functions.c:	functions.c.in
	cpp -P -xassembler-with-cpp -o $@ $<


