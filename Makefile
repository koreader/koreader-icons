all: png

png:
	install -d build
	for src in *.svg; do \
		dest=`echo $$src | sed 's/\.svg/\.medium.png/'`; \
		echo "Converting $$src to $$dest..."; \
		inkscape -f $$src -w 32 -h 32 -e build/$$dest; \
		dest=`echo $$src | sed 's/\.svg/\.png/'`; \
		inkscape -f $$src -w 48 -h 48 -e build/$$dest; \
	done


clean:
	rm -rf build
