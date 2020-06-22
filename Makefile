tikz = 21_float_n_stone 12_diffraction 22_float_triangle 23_float_three 24_float_all 31_wave_which

animates = 41_wave_animate_60 42_wave_animate_37

all: svg html

$(tikz):
	# --font-format=woff
	latexmk $@.tex 
	# Create svg
	pdf2svg $@.pdf $@.svg
	cp $@.svg Figure/

$(animates):
	 latex $@.tex
	 dvisvgm --zoom=-1 --exact --font-format=woff $@
	 cp $@-1.svg Figure/$@.svg



# Compile latex
svg: $(tikz) $(animates)


html:
	# Convert
	pandoc aperture_synthesis.md -t html --self-contained -s --standalone --mathjax -o aperture_synthesis.html

release: all
	cp aperture_synthesis.html out1.html
	# Independentize from MathJax CDN
	$$HOME/Program/MathJax/node_modules/mathjax-node-page/bin/mjpage --output CommonHTML < out1.html > aperture_synthesis.html 
