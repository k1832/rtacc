CLAGS=std=c11 -g -static

rtacc: rtacc.c

test: rtacc
	./test.sh

clean:
	rm -f rtacc *.o *~ tmp*

style:
	cpplint rtacc.c

.PHONY: test clean style
