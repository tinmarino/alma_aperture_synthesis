tikz = 21_float_n_stone 12_diffraction 22_float_triangle 23_float_three 24_float_all 31_wave_which \
	51_slit_two 52_slit_one 54_parabola 55_icon

animates = 41_wave_animate_60 42_wave_animate_37

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
	cat aperture_synthesis.md | \
		sed -e '/placeholder-rayleigh/{r rayleigh_app.html' -e 'd}' | \
		cat > in.md
	pandoc in.md -t html --self-contained -s --standalone -o aperture_synthesis.html

clean:
	rm aperture_synthesis.html in.md out1.html *.svg Figure/*
	rm *.aux *.log *.fls *.fdb_latexmk *.out *synctex.gz *.tex.backup *.4ct *.4tc *.idv *.lg *.tmp *.xref *.xdv *.dvi *.bak *.toc

mathjax:
	cp aperture_synthesis.html out1.html
	# Independentize from MathJax CDN
	$$HOME/Program/MathJax/node_modules/mathjax-node-page/bin/mjpage --output CommonHTML < out1.html > aperture_synthesis.html 

release: all mathjax

move:
	cp aperture_synthesis.html $$HOME/Software/Html/Page/pdf/2020_aperture_synthesis.html

deploy:
	move
	pushd $$HOME/Software/Html/Page
	git add -a
	git commit 'Update aperture synthesis'
	git push
	popd
