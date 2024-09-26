# makefile for assemblymule
#
assemblymule: assemblymule.o
	ld assemblymule.o -o ./Build/DEBUG/assemblymule

assemblymule.o: assemblymule.s
	as assemblymule.s -o assemblymule.o

.PHONY: clean
	clean:
	rm *.o
	rm ./Build/DEBUG/*.*

