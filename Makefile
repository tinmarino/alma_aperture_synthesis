# Name of command = file FROM

tikz = 21_float_n_stone 12_diffraction 22_float_triangle

$(tikz):
	echo $@
	latexmk $@.tex 
	# Create svg
	pdf2svg $@.pdf $@.svg
	mv $@.svg Figure/

# Compile latex
tex: $(tikz)


md:
	pandoc aperture_synthesis.md -t html --mathjax  -s --standalone  -o aperture_synthesis.html

all: tex md
