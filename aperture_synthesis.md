---
title: Synthèse d'ouverture
category: 
header-includes: |
    <script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>
    <link rel="stylesheet" type="text/css" href="Css/alma_gruvbox.css">
---



La [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture) est un procédé qui permet de simuler l'ouverture d'un grand [télescope](https://en.wikipedia.org/wiki/Telescope) avec plusieurs petits. Ce grand télescope virtuel a pour diamètre la distance maximale entre deux petits.

Nous verrons (1) pourquoi les grands télescopes ont une meilleure résolution angulaire et que simuler un grand télescope signifie obtenir cette même résolution.

En (2) 

En (3) nous verrons comment joindre les informations de deux télescopes pour obtenir des informations précise sur l'angle d'une source. Spoiler: il faut faire une somme

Puis la partie (4) explique comment plusieurs informations angulaire permettent de constituer une image via une [transormée de Fourier](https://fr.wikipedia.org/wiki/Transformation_de_Fourier).



# 1. Limitations du télescope

On mesure la qualité d'une image astrophysique avec deux paramètres : sa [résolution angulaire](https://en.wikipedia.org/wiki/Dynamic_range#Photography) et sa [profondeur](https://fr.wikipedia.org/wiki/Liste_des_champs_profonds).


1. __La profondeur__ est le flux de la source la moins lumineuse que l'on peut détecter.
<sup>[+]<div class="description">
Une grande profondeur permet de détecter des objects peu brillant. Par exemple, des objects lointains.
</div></sup>
2. __La résolution angulaire__ est le plus petit angle qu'un télescope peut résoudre. 
<sup>[+]<div class="description">
C'est à dire que deux objects séparés d'un angle inférieur à la résolution apparaitront comme un seul.<br/>
Tout object de taille inférieur à la résolution angulaire apparaitra comme un point.<br/>
Un télescope optique de 1m de diamètre ($D$) dans le jaune 550nm ($\lambda$) a une résolution de 0.1 seconde de degrés c'est à dire 0.1 degré divisé par 3600. Une grande résolution angulaire permet d'observer des objects de petite taille angulaire par exemple, des objects lointain.
</div></sup>

-> Jusqu'à preuve du contraire, un télescope quelconque peut générer des images d'une résolution et profondeur arbitrairement grande à condition de:

1. Exposer suffisamment longtemps l'objet pour obtenir plus de lumière dans sa direction que le bruit du ciel et de l'appareil.
2. Utiliser un détecteur (Couple Charged Device) avec suffisamment de pixels par cm.
<sup>[+]<div class="description">
<a name="detecteur_pixel">2</a>: Le nombre de pixel par centimètre peut être arbitrairement elevé avec des bancs optiques à l'intérieur du détcteur. Par exemple les nouveaux smartphones déclarent des détecteurs de 9Mpixels (3000x3000) et de 2mm tandis qu'un detecteur de telescope est de 1Mpixel (1000x1000) et mesure 3cm.
</div></sup>

<- Je vais maintenant vous prouvez le contraire.

Pour ce qui est de la __profondeur__, un grand télescope est nécessaire.
En effet, bien qu'en sommant un grand nombre d'image du même endroit, nous pouvons obtenir une profondeur infinie, avant de pouvoir les sommer, il faut pouvoir les aligner convenablement et pour ceci, il faut ... des images suffisamment profondes et résoluent.
En effet, si on ne voit rien sur les images comment sait on vers où elle pointent.
Il nous faut donc un télescope suffisamment grand qui puisse absorber la lumière pour résoudre au moins deux étoiles de champs à chaque exposition.
Vous pourrez penser : "si la mécanique du télescope est suffisamment bonne, les images sont aligné par le pointage". Malheureusement, il n'est pas possible d'obtenir un position précise sans [viseur d'étoile](https://fr.wikipedia.org/wiki/Viseur_d%27%C3%A9toiles) qui lui même nécessite de voir un étoile proche du champ d'observation.

Pour ce qui est de la __résolution angulaire__, la taille du télescope est limitant également.
Mais cette fois, ce n'est plus pour une simple question de collecter un maximum de flux lumineux afin d'obtenir un bon signal sur bruit suffisant pour la détection.
L'effet néfaste est la [diffraction](https://en.wikipedia.org/wiki/Diffraction#Mechanism) que subie toute onde qui passe par une ouverture.
Dans le cas d'une ouverture circulaire comme celle du miroir principale, l'image d'un point est une [tache d'airy](https://fr.wikipedia.org/wiki/Tache_d%27Airy). Ce n'est plus un point, même si le télescope est parfait.
Cette tache est d'autant plus petite que l'ouverture du télescope est grande.

TODO ici un dessin de tache d'airy

<!-- Figure diffraction -->
<figure style="float: right; width:300px;" >
  <img style='width:100%' src='Figure/12_diffraction.svg' alt='missing' />
  <figcaption>
    Diffraction d'une onde traversant une porte.<br/>
    Le front d'ondle linéaire devient circulaire avec pour rayon de courbure $\frac{\lambda}{D}$ où $\lambda$ est la longueur d'onde de la vague et D la taille de la porte.
  </figcaption>
</figure>


Ces deux raisons expliquent l'intérêt pour les grand télescope.
Cependant il est économiquement difficile de construire de très grandes ouvertures de qualités, réflecteurs ou lentilles.
C'est pourquoi la [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture)
est utilisée pour simuler un télescope de grande ouverture avec plusieurs petits.

La synthèse d'ouverture est un technologie très liée à la radioastronome car son emploi est aujourd'hui techniquement proche du miracle dans l'optique visible.
En effet, comme vous allez le voir, les détecteurs radio permettent de mesurer la lumière comme une onde, ce qui permet une reconstruction à posteriori.
Par le suite les détecteurs (antennes) seront modélisée par des flotteurs dans l'eau et leur position est mesurable. En optique visible, cette position n'est pas mesurable, on peut juste savoir si le flotteur bouge. En terme techniques, on dit que les antennes radio (ou millimétriques) mesures simultanément la phase et l'amplitude du signal électromagnétique.


# 2 Délai d'un choc


Supposons qu'une pierre soit lancé dans un lac calme.
Une vague va se propager en cercles concentriques autour de cette pierre.
Nous disposons de deux flotteurs pour mesurer la position de la source de la vague, c'est à dire l'endroit où la pierre est tombée.
Comme en astrophysique, nous voulons mesurer sa position angulaire et non sa distance.

Supposons, pour commencer, qu'il n'y a qu'une vague généré par cette pierre.
Alors, si la pierre a été lancé à droite, comme sur la figure, le flotteur de droite va recevoir la vague avant celui de gauche. Réciproquement, si nous mesurons que le flotteur de droite est déplacé avant celui de gauche, c'est que la vague a été lancé à droite.

<!-- Figure diffraction -->
<figure style="margin:10px" >
  <img src='Figure/21_float_n_stone.svg#svgView(preserveAspectRatio(none))' alt='missing' style="
    width:70%; min-width:300px; height:300px;
    display: block;
    margin: 0 auto;
  "/>
  <figcaption style="
    text-align:left;
    width:70%; min-width:300px;
    display: block;
    margin: 0 auto;
  ">
    Vagues crées par un caillou jeter dans l'eau et reçue par deux flotteurs au premier plan. La vague va soulever le flotteur de droite puis le flotteur de gauche.<br/>
    Le caillou a un position angulaire de $\theta$, et se situe à une distance infinie, c'est pourquoi le front d'onde arrive en forme de ligne sur le flotteurs à l'image d'une majestueuse vague de houle en haute mer et non d'un misérable ricochet de lavoir.<br/>
    Note: Infinie signifie simplement : "beaucoup plus grand que la distance entre les deux flotteurs".
  </figcaption>
</figure>

En employant une formule magique ("trigonometrum s'il te plum") dans le triangle ABC (TODO figure), on obtient:

<!-- Figure diffraction -->
<figure style="float: left; min-width:40%; width:300px" >
  <img style="width:100%" src='Figure/22_float_triangle.svg' alt='missing' />
  <figcaption>
    $$cos(\theta) = \frac{a}{b}$$
  </figcaption>
</figure>

Où:

* $b$ est une distance connu : la distance entre les deux flotteurs (b pour [ligne de Base](https://en.wikipedia.org/wiki/Astronomical_interferometer)).
* $a$ est la distance supplémentaire que la vague a due parcourir (a pour Á remplacer).


Remplaçons le ! On connait la vitesse de la vague $v$ et le temps de délai $\Delta t$ que la vague a pris pour atteindre le deuxième flotteur

Ainsi a est donné par la formule $vitesse = \frac{distance}{temps} \Leftrightarrow distance = vistesse \times temps$. Ce qui nous donne l'équation:

$$\theta = arccos\left(\frac{b}{v\times\Delta t}\right) = arccos\left( \frac{Distance\_de\_la\_base}{Vitesse\_de\_la\_vage \times Delai\_temporel\_mesuré} \right)$$

Par exemple, si la vitesse de la vague est de $1\frac{m}{s}$, la distance entre les deux flotteurs est de 2m et le temps mesuré est de 2 seconde,  C'est que $\theta = 0°$ soit la vague vient de l'extrème droite (à ne pas citer hors contexte).
<- Si le temps mesuré est de 1 seconde, la vague viens d'un angle $\theta = arccos\left(\frac{2}{1 \times 1 }\right) = arccos(1/2) = 60°$ (en effet $cos(60°): = 1/2$). C'est la situation su schema (TODO link schema).


# 3 Délai d'une onde

La section précédente nous a donné $\theta$ : la position (angulaire) de l'objectif.
C'est donc mission acomplie pour la section 2 !

Le problème est que les objectifs astrophysques, ne s'allument pas d'un seul coup mais emmèttent de manière continue.
Il n'y a donc pas de front d'onde (ou vague) de référence.
L'altitude de chaque floteur variera au grès de la vague et suivra une sinoïde plus ou moins synchronisée avec l'autre flotteur.
Ce degrès de synchronysme est appellé [correlation](https://kids.alma.cl/como-estan-conectadas-las-antenas-de-alma/).

<div>
On ne peut plus mesurer $\Delta t$ mais $\Delta t$ modulo $\frac{1}{\nu}$ où $\nu$ est la fréquence de l'onde et donc son inverse, $\frac{1}{\nu}$, est le temp qui sépare deux vagues.
<sup>[+]<div class="description"> On ne peut plus savoir sur quelle vague est chaque flotteur mais à quelle position de la vague : en haut, en descente ...
</div></sup></div>

<!-- Figure Multiple direciton in -->
<figure style="margin:10px" >
  <img style="width:90%" src='Figure/31_wave_which.svg' alt='missing' />
  <figcaption style="
    width:90%; min-width:300px;
    display: block;
    margin: 0 auto;
  ">
    On peut mesurer que A et C sont en phase et A et B sont défasé de $\frac{\pi}{2}$.</br>
    Mais on ne peut pas mesurer que A et sur une autre vague que C.
  </figcaption>
</figure>

* Par exemple, supposons que la longueur d'onde est de $\lambda = 10cm = 0.1m$.
* Rapellant les valeurs précédentes (vitesse: $v= 1m/s$, ligne de base: $b = 2m$), le temps qui sépare deux maximum est donc de \frac{1}{\nu} = 0.1s.
<sup>[+]<div class="description">
Utilisé $v = \frac{d}{t} \left(= \frac{distance}{temps}\right) = \lambda\nu$
</div></sup></div>

<!-- Figure Multiple direciton in -->
<figure style="float: right; width:300px;" >
  <img style="width:100%" src='Figure/24_float_all.svg' alt='missing' />
  <figcaption>
    Quelques angles d'origine des vagues qui permettent d'avoir les deux bouchons en phase. <br/>
    Le nombre de vague de retard du bouchon de gauche est indiqué. C'est justement ce nombre qu'on ne peut pas mesurer.<br/>
  </figcaption>
</figure>

* Imaginons, cas 1, une vague venant de $\theta=37° (bien à droite) alors elle devra parcourir $b \times cos(\theta)=2\times cos(37°) = 1.6m$ de plus pour arriver au bouchon de gauche. 1.6m étant multiple de 0.1m, le bouchon de gauche sera en retard de 16 vagues sur celui de droite mais "en phase" (i.e. à la même altitude à tout moment)
* Imaginons maintenant, cas 2, une vague venant de $\theta = 60°$ (centre-droite). Alors elle devra parcourir $a = cos(\theta) \times b$ = cos(60°) * 2 ) = \frac{1}{2} * 2 = 1m$. 1m étant aussi multiple de 10cm, les deux bouchons seront en phase.
* En mesurant l'altitude des deux bouchons, nous ne pourrons pas discriminer le cas 1 du cas 2.
* Quelques valeurs possibles de $\theta$ pour deux bouchons en phase sont dans la figure ci-après.



* [Keck](https://fr.wikipedia.org/wiki/Observatoire_W._M._Keck) c'est ti qu'on fait pour savoir si le caillou a été jeté à 37° (cas 1) ou a 60° (cas 2) ?

* Rajoutons un bouchon : "Z". Par exemple, à 0.5m à gauche du bouchon de référence : "X" : celui de droite, et donc a 1.5m à droite de celui de gauche : "Y". Comme sur la figure suivante:

<figure style="margin:10px" >
  <img src='Figure/23_float_three.svg' alt='missing' style="
    width:90%; max-width:700px; min-width:300px; height:200px;
    display: block;
    margin: 0 auto;
  "/>
  <figcaption style="
    text-align:center;
    width:90%; max-width:700px; min-width:300px;
    display: block;
    margin: 0 auto;
  ">
  Trois bouchons valent mieux que deux.
  </figcaption>
</figure>

* Alors si $\theta = 37°$ (cas 1), le bouchon Z recevra l'onde $0.5 \times arccos(37°) = 0.40m = 40cm$ plus loin. Ce bouchon aura 4 vagues de retard sur X et sera en phase

* Mais si $\theta = 60°$, le bouchon Z recevra le front d'onde 0.5 * cos(60°) = 0.25m = 20cm + 5cm$ plus loin. Ce bouchon aura 2 vagues et demi de retard.
Encore une fois, on ne peut pas mesurer les "2 vagues" mais on peut mesurer le "et demi" car Z sera en opposition de phase (déphasé de $\pi$) avec X : quand X sera au sommet de la vague, il sera en bas.
En sommant les altitudes de X et de Z, en tout temps, on obtient zéro. Cette somme est une [interférence](https://fr.wikipedia.org/wiki/Interf%C3%A9rence) artificielle, ici destructive.
On nomme (l'intégrale temporel de ) cette somme $V(b)$ pour "Visibilité avec la basse b".

Chaque ligne permet de discriminer un rang d'angle différent. Suposez que l'on puisse faire tourner la ligne des flotteurs, alors $\theta$ changerai et chaque ligne nous aporterai des informations nouvelles. Le plus simple pour efectuer cette rotation avec un réseau d'antennes et une source extraterestre est de faire tourner la planète. J'ai donc personellement pris la responsabilité de maintenir la rotation de la terre et voyez vous, elle continue de tourner.



# 4 Délai de plusieurs objects

## 4.1 

## 4.2 Avec plusieurs longueur d'onde

Non là sérieux, ça devient compliqué : il y a plus de paramètres à déterminer (positions, longueurs d'ondes) que de paramètres mesurables. Sans information à priori, c'est donc mathématiquement impossible.

La solution la plus simple dans ce cas, le cas réel, est de limiter physiquement:

1. Le champ de vision avec des avec des digues qui bloquent les vagues ne venant pas de la direction d'observation. En effet, elle contamineraient la mesure.
2. Les fréquences mesurées avec des filtres. Simplement en limitant la vitesse d'oscillation des bouchons, les vagues plus rapides ou plus lentes seront ignorées.

TODO chose par ailleur effectué sur les téléscopes entier, il 
Malgrès les efforts de la section 4 pour repousser les signaux parasites et limiter le champs d'étude, il reste un manque d'information 


# 5 Reconstruction d'image

De cette manière, avec plusieurs ligne de base, il est également possible de detecter simulanément des vagues provenant de différents endroit.
La compréhension des détails de ce processus implique une vision performante des sommes de sinuzoides que procure la [transformation de fourier](https://fr.wikipedia.org/wiki/Transformation_de_Fourier) ou les [ondelettes](https://fr.wikipedia.org/wiki/Ondelette) et fera peut être l'object d'un chapitre 2 dans le cas improbable d'une demande d'un des 2,3 lecteurs.


# 6 Des vagues aux ondes radios

Le concept mathématique utilisé par un telescope à ouverture synthétique (alias réseau d'antenne) et le détecteur utilisant des flotteurs est identique.

Pour enrichir le vocabuliare du lecteur voici l'analogie:


| Presente explication | [ALMA](https://fr.wikipedia.org/wiki/Grand_r%C3%A9seau_d%27antennes_millim%C3%A9trique/submillim%C3%A9trique_de_l%27Atacama) |
| ---                  | --- |
| Vague                | Onde Electromagnétique |
| Callou               | Astre |
| Bouchon              | Antenne |
| Position             | Accélération d'éléctron |
|                      |   |

J'ai l'espoir d'avoir démontré au lecteur que, comme moi même, il ignore beaucoup sur la nature des vagues de surface eau-air. Pourtant, grosso modo, il sait de quoi il s'agit.

De même, il est intéréssant d'apréhender la notion d'onde éléctromagnétique alias lumière, flux de photon.

Quelle est la différence entre le callou et le bouchon ? (Faire un pause ... réponse:) L'un émet des vagues en se dépançant verticalement dans l'eau et l'autre se déplace verticalement sur l'eau lorsqu'il reçoit des vagues. De plus, si j'agitait artificiellement le bouchon, il émetrai des vagues. Donc la différence n'est pas dans leur nature mais dans leur comportement.

L'accélération d'une charge éléctrique, tipiquement un éléctron, engendre l'émission d'un [photon](https://fr.wikipedia.org/wiki/Photon) et réciproquement la reception d'un photon engendre l'accélération d'un electron.
En agitant artificielement un éléctron dans une antenne, par exemple avec un aimant, on peut trasmettre un signal à une antenne voisine. Le porteur de ce signal est le photon : il est, plus généralement [porteur de la force](https://en.wikipedia.org/wiki/Force_carrier) [électromagnétique](https://fr.wikipedia.org/wiki/%C3%89lectromagn%C3%A9tisme).



# Conclusion

La section 6 montre qu'il es tpossible de détecter l'agitation electronique extraterrestre via celle sur terre. La section 1 donne les limitations et les autres expliquent comment on peut les atteindre en combinant des antennes.

Ici le lecteur devrait avoir compris:

* L'origine de la limitation des téléscopes.
* Comment déterminer la position angulaire d'une source avec la correlation entre deux recepteurs.
* TODO La différence entre interferométrie et triangulation.
* Pourquoi plus de deux recepteurs sont nécéssaires pour former une image.
* TODO Pourquoi beaucoup de calcul.


# Notes



# Liens, aller plus loin

* ESO spectroscopie (pdf) : Introduction gentille à l'interferométrie : [ERIS : Enhanced Resolution Imager and Spectrograph](https://www.eso.org/sci/meetings/2015/eris2015/program.html)


* 
<div> MORE
  <div class="description">
    Html app</br></br>
    Perlito.js: Raku interpreter compiled in javascript
  </div>
</div>

