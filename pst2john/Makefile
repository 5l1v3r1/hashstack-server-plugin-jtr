all: pst2john-linux

pst2john-linux:
	gcc -Wall -std=gnu99 pst2john.c libpst.c debug.c vbuf.c libstrfunc.c -o pst2john

clean:
	rm -f pst2john

distclean: clean
