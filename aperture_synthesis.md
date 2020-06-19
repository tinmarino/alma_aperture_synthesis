---
title: aperture_synthesis
category: 
wiki_css: Css/color_dark_solarized.css, Css/layout_toc.css
header-includes: <script type="text/javascript" src="Css/js_masonry_desandro.js"></script>
wiki_pandoc: --toc
---

La [synthèse d'ouverture] est une procédé qui permet, avec plusieurs petits telescopes, de simulter un grand téléscope. Ce grand téléscope a pour diamétre la distance maximale entre deux petits.

Nous verrons (1) pourquoi les grand telescopes ont une meilleure résolution angulaire et que simulter un grand telescope signifie obtenir cette même résolution.

En (2), nous verrons comment joindre les informations de deux téléscopes pour obtenir des informations précise sur l'angle d'une source. Spoiler: il faut faire une somme

Puis la partie (3) explique comment plusieurs informations angulaire permettent de constituer une image via une [transormée de Fourier](https://fr.wikipedia.org/wiki/Transformation_de_Fourier).



## 1. Limitations du téléscope

On mesure la qualité d'une image astrophysique avec deux paramètres: sa [résolution angulaire](https://en.wikipedia.org/wiki/Dynamic_range#Photography) et sa [profondeur](https://fr.wikipedia.org/wiki/Liste_des_champs_profonds).


1. __La profondeur__ est le flux de la source la moins lumineuse que l'on peu detecter. Une grande profondeur permet de détécter des objects peu brillant,par exemple, des objects lointains.
2. __La résolution angulaire__ est le plus petit angle qu'un telescope peut résoudre. C'est à dire que deux objects séparés d'un angle inférieur, donc plus proches que la résolution aparaisseront comme un seul. La résolution typique (téléscope optique de 1m de diamètre) est de 1 seconde de degrés c'est à dire 1 degré divisé par 3600. Une grande résolution angulaire permet d'observer des objects de petite taille angulaire par exemple, des objects lointain.


Jusqu'à preuve du contraire un telescope quelquonque peut générer des images d'une résolution et profondeur arbitrairement grande à condition de:

1. Exposer suffisament longtemps l'objet pour obtenir plus de lumière dans sa direction que le bruit du ciel et de l'appareil et
2. Utiliser un détecteur (Couple Charged Device) avec suffisament de pixels par cm.<sup>[1](#detecteur_pixel)</sup>

Je vais maintenant vous prouvez le contaire.

Pour ce qui est de la __profondeur__, un grand téléscope est nécéssaire.
En effet, bien qu'en sommant un grand nombre d'image du même endroit, nous pouvons obtenir une profondeur infinie, avant de pouvoir les sommer, il faut pouvoir les aligner convenablement et pour ceci, il faut ... des images sufisament profondes et résoluent.
En effet, si on ne voit rien sur les images comment sait on vers où elle pointent.
Il nous faut donc un téléscope suffisament grand qui puisse absorber la lumière pour résoudre au moins deux étoiles de champs à chaque exposition.
Vous pourez penser : "si la mécanique du telsecope est sufisament bonne, les images sont aligné par le pointage". Malheureusement, il n'est pas possible d'obtenir un position précise sans [viseur d'étoile](https://fr.wikipedia.org/wiki/Viseur_d%27%C3%A9toiles) qui lui même nécessite de voir un étoile proche du champ d'observation.

Pour ce qui est de la __résolution angulaire__, la taille du télescope est limitante également.
Mais cette fois, ce n'est plus pour une simple question de signal sur bruit, une simple collection d'un maximum de lumière.
L'effet nefaste est la [diffraction](https://en.wikipedia.org/wiki/Diffraction#Mechanism) que subie toute onde qui passe par une ouverture.
Dans le cas d'une ouverture circulaire comme celle du miroir principale, l'image d'un point est une [tache d'airy](https://fr.wikipedia.org/wiki/Tache_d%27Airy). Ce n'est plus un point, même si le télescope est parfait.
Cette tache est d'autant plus petite que l'ouverture du téléscope est grande.


Ces deux raisons expliquent l'interêt pour les grand telescope.
Cependant il est économiquement difficile de contruire de très grandes ouvertures de qualités, refleteurs ou lentilles.
C'est pourquoi la [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture)
est utilisée pour simuler un telscope de grande ouverture avec plusieurs petits.

La synthèse d'ouverture est un technologie très liée à la radio-astronomy car son emploi est aujourd'hui techniquement proche du miracle dans l'optique visible.
En effet, comme vous allez le voir, les detecteurs radio permettent de mesurer la lumière comme une onde, ce qui permet une reconstruction à-posteriori.
Par le suite les détecteurs (antennes) seront modlisée par des flotteurs dans l'eau et leur position est mesurable. En optique visible, cette position n'est pas mesurable, on peut juste savoir si le floteur bouge. En terme techniques, on dit que les antennes radio (ou milimétriques) mesures simultanéments la phase et l'amplitude du signal electromagnétique.


## Délai d'un choc


## Délai d'une onde

##

## Conclusion



# Notes

<a name="detecteur_pixel">1</a>: Le nombre de pixel par centimètre peut être arbitrairement elevé avec des bancs optiques à l'intérieur du détcteur. Par exemple les nouveaux smartphones déclarent des détecteurs de 9Mpixels (3000x3000) et de 2mm tandis qu'un detecteur de telescope est de 1Mpixel (1000x1000) et mesure 3cm.
