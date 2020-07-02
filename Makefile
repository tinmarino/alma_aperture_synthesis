tikz = 21_float_n_stone 12_diffraction 22_float_triangle 23_float_three 24_float_all 31_wave_which \
	51_slit_two 52_slit_one 54_parabola 55_icon

animates = 41_wave_animate_60 42_wave_animate_37

SHELL:=/bin/bash 

all: svg html

$(tikz):
	# --font-format=woff
	latexmk $@.tex 
	# Create svg
	pdf2svg $@.pdf $@-1.svg
	scour -i $@-1.svg -o $@-2.svg --enable-viewboxing --enable-id-stripping \
  		--enable-comment-stripping --shorten-ids --indent=none
	cp $@-2.svg Figure/$@.svg

$(animates):
	latex $@.tex
	dvisvgm --optimize=all --zoom=-1 --exact --font-format=woff $@
	# Python lib to minify
	scour -i $@-1.svg -o $@-2.svg --enable-viewboxing --enable-id-stripping \
  		--enable-comment-stripping --shorten-ids --indent=none
	cp $@-2.svg Figure/$@.svg


# Compile latex
svg: $(tikz) $(animates)


html:
	# Convert
	cat aperture_synthesis_fr.md | \
		sed -e '/placeholder-rayleigh/{r rayleigh_app.html' -e 'd}' | \
		cat > in.md
	pandoc in.md -t html --self-contained -s --standalone -o aperture_synthesis_fr.html
	cp aperture_synthesis_fr.html out1.html
	# Independentize from MathJax CDN
	$$HOME/Program/MathJax/node_modules/mathjax-node-page/bin/mjpage --dollars --output CommonHTML < out1.html > aperture_synthesis_fr.html 

es:
	# Convert
	cat aperture_synthesis_es.md | \
		sed -e '/placeholder-rayleigh/{r rayleigh_app.html' -e 'd}' | \
		cat > in.md
	pandoc in.md -t html --self-contained -s --standalone -o aperture_synthesis_es.html
	cp aperture_synthesis_es.html out1.html
	# Independentize from MathJax CDN
	$$HOME/Program/MathJax/node_modules/mathjax-node-page/bin/mjpage --dollars --output CommonHTML < out1.html > aperture_synthesis_es.html 

clean:
	rm aperture_synthesis_fr.html aperture_synthesis_es.html in.md out1.html *.svg Figure/*
	rm *.aux *.log *.fls *.fdb_latexmk *.out *synctex.gz *.tex.backup *.4ct *.4tc *.idv *.lg *.tmp *.xref *.xdv *.dvi *.bak *.toc


release: all

move:
	cp aperture_synthesis_fr.html $$HOME/Software/Html/Page/pdf/2020_aperture_synthesis_fr.html
	cp aperture_synthesis_es.html $$HOME/Software/Html/Page/pdf/2020_aperture_synthesis_es.html

deploy: move
	cd $$HOME/Software/Html/Page 
	git add -A
	git commit -m 'Update aperture synthesis'
	git push
