default:
	gprbuild -d -XXMLADA_BUILD=static

clean:
	gprclean -XXMLADA_BUILD=static -r
	rm -f ./output/*.ad*
