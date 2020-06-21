# Name of command = file FROM

tikz = 21_float_n_stone 12_diffraction 22_float_triangle 23_float_three 24_float_all 31_wave_which

all: tex md

$(tikz):
	echo $@
	latexmk $@.tex 
	# Create svg
	pdf2svg $@.pdf $@.svg
	mv $@.svg Figure/

# Compile latex
tex: $(tikz)


md:
	pandoc aperture_synthesis.md -t html --mathjax  --self-contained --standalone -o aperture_synthesis.html
