---
title: Synthèse d'ouverture
category: 
header-includes: |
    <link rel="stylesheet" type="text/css" href="Css/alma_gruvbox.css">
---



La [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture)
est le procésus de construction d'image utilisé par les réseaux d'antennes comme ALMA.
Elle permet de simuler l'ouverture d'un grand [télescope](https://en.wikipedia.org/wiki/Telescope) avec plusieurs petits.
Ce grand télescope virtuel a pour diamètre la distance maximale entre deux petits.

- [1/ Limitations du télescope :](#s1_limit) Pourquoi les grands télescopes ont une meilleure résolution angulaire et que simuler un grand télescope signifie obtenir cette même résolution : "Pourquoi moi ?"

- [2/ Délai :](#s2_dirac) Section fondamentale. En commençant, la méthaphore avec les vagues eau-air, nous verrons comment le délai de reception d'une vague entre deux flotteurs peut nous donner la direction d'une vague : "Bienvenu à bord !"

- [3/ Sinuzoïde :](#s3_modulo) Ajout de réalisme au modèle, la vague deviens une synusoïde, c'est à dire un ensemble de vagues : "On s'amarine moussaillon ?"

- [4/ Imagerie :](#s4_image) Le caillou ponctuel devient contiue : une forme.
Constitution d'image avec plusieurs informations angulaires via une [transormée de Fourier](https://fr.wikipedia.org/wiki/Transformation_de_Fourier) : "À l'abordage !"

- [5/ Onde radio : ](#s5_radio) Augmentation de la distance des flotteurs et transformation en antennes. "Cap vers les étoiles !"

- [Optionel/ Nouvelles limitations:](#so_new_limit) Calcul des limitations anciennes et nouvelle. Détermination de la qualité maximale atteignable. "Marc Pageot ne navigue pas sur des cageots."

- [Conclusion: ](#s_conclusion) "C'est pas bientôt fini !"

- [Aller plus loin: ](#s_conclusion) "Quand y'en a plus, y'en a encore."


# 1 <a name="s1_limit"></a> Limitations du télescope

<blockquote> Nosce te ipsum </blockquote>

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

-> Jusqu'à preuve du contraire, un télescope quelconque peut générer des images d'une résolution et profondeur arbitrairement grande à condition de :

1. Exposer suffisamment longtemps l'objet pour obtenir plus de lumière dans sa direction que le bruit du ciel et de l'appareil.
2. Utiliser un détecteur (Couple Charged Device) avec suffisamment de pixels par cm.
<sup>[+]<div class="description">
Le nombre de pixel par centimètre peut être arbitrairement elevé avec des bancs optiques à l'intérieur du détcteur. Par exemple les nouveaux smartphones déclarent des détecteurs de 9Mpixels (3000x3000) et de 2mm tandis qu'un detecteur de telescope est de 1Mpixel (1000x1000) et mesure 3cm.
</div></sup>

<- Je vais maintenant vous prouver le contraire.

Pour ce qui est de la __profondeur__, un grand télescope est nécessaire.
En effet, bien qu'en sommant un grand nombre d'image du même endroit, nous pouvons obtenir une profondeur infinie, avant de pouvoir les sommer, il faut pouvoir les aligner convenablement et pour ceci, il faut ... des images suffisamment profondes et résoluent.
En effet, si on ne voit rien sur les images comment sait on vers où elle pointent.
Il nous faut donc un télescope suffisamment grand qui puisse absorber la lumière pour résoudre au moins deux étoiles de champs à chaque exposition.
Vous pourrez penser : "si la mécanique du télescope est suffisamment bonne, les images sont aligné par le pointage". Malheureusement, il n'est pas possible d'obtenir un position précise sans [viseur d'étoile](https://fr.wikipedia.org/wiki/Viseur_d%27%C3%A9toiles) qui lui même nécessite de voir un étoile proche du champ d'observation.

Pour ce qui est de la __résolution angulaire__, la taille du télescope est limitant également.
Mais cette fois, ce n'est plus pour une simple question de collecter un maximum de flux lumineux afin d'obtenir un bon signal sur bruit suffisant pour la détection.
L'effet néfaste est la [diffraction](https://en.wikipedia.org/wiki/Diffraction#Mechanism) que subie toute onde qui passe par une ouverture (voir la figure 
<a href="#f_fente"><i>"fente"</i></a>
).
Dans le cas d'une ouverture circulaire comme celle du miroir principale, l'image d'un point est une [tache d'airy](https://fr.wikipedia.org/wiki/Tache_d%27Airy). Ce n'est plus un point, même si le télescope est parfait.
Cette tache est d'autant plus petite que l'ouverture du télescope est grande.

<!-- Figure diffraction -->
<figure style="float: right; width:300px;" >
  <a name="f_fente"></a>
  <img style='width:100%' src='Figure/12_diffraction.svg' alt='missing' />
  <figcaption>
    <b>Fente :</b>
    Diffraction d'une onde traversant une porte.<br/>
    Le front d'onde linéaire devient circulaire avec pour rayon de courbure $\frac{\lambda}{D}$ où $\lambda$ est la longueur d'onde de la vague et D la taille de la porte.
  </figcaption>
</figure>


Ces deux raisons expliquent l'intérêt pour les grand télescope.
Cependant il est économiquement difficile de construire de très grandes ouvertures de qualités, réflecteurs ou lentilles.
C'est pourquoi la [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture)
est utilisée pour simuler un télescope de grande ouverture avec plusieurs petits.

La synthèse d'ouverture est un technologie très liée à la radioastronome car son emploi est aujourd'hui techniquement proche du miracle dans l'optique visible.
En effet, comme vous allez le voir, les détecteurs radio permettent de mesurer la lumière comme une onde, ce qui permet une reconstruction à posteriori.
Par le suite les détecteurs (antennes) seront modélisée par des flotteurs dans l'eau et leur position est mesurable. En optique visible, cette position n'est pas mesurable, on peut juste savoir si le flotteur bouge. En terme techniques, on dit que les antennes radio (ou millimétriques) mesures simultanément la phase et l'amplitude du signal électromagnétique.


# 2 <a name="s2_dirac"></a> Délai d'un choc

<blockquote> Verba docent, exempla trahunt </blockquote>

Supposons qu'une pierre soit lancé dans un lac calme.
Une vague va se propager en cercles concentriques autour de cette pierre.
Nous disposons de deux flotteurs pour mesurer la position de la source de la vague, c'est à dire l'endroit où la pierre est tombée.
Comme en astrophysique, nous voulons mesurer sa position angulaire et non sa distance.

Supposons, pour commencer, qu'il n'y a qu'une vague généré par cette pierre.
Alors, si la pierre a été lancé à droite, comme sur la figure
<a href="#f_carte"><i>"carte des mers"</i></a>
, le flotteur de droite va recevoir la vague avant celui de gauche. Réciproquement, si nous mesurons que le flotteur de droite est déplacé avant celui de gauche, c'est que la vague a été lancé à droite.

<!-- Center Figure diffraction -->
<figure style="margin:10px" >
  <a name="f_carte"></a>
  <img src='Figure/21_float_n_stone.svg#svgView(preserveAspectRatio(none))' alt='missing' style="
    width:70%; min-width:300px; height:450px;
    display: block;
    margin: 0 auto;
  "/>
  <figcaption style="
    text-align:left;
    width:70%; min-width:300px;
    display: block;
    margin: 0 auto;
  ">
    <b>Carte des mers :</b>
    Vagues crées par un caillou jeter dans l'eau et reçue par deux flotteurs au premier plan. La vague va soulever le flotteur de droite puis le flotteur de gauche.<br/>
    Le caillou a été lancé à une position angulaire de $\theta$, et se situe à une distance infinie, c'est pourquoi le front d'onde arrive en forme de ligne sur le flotteurs à l'image d'une majestueuse vague de houle en haute mer et non d'un misérable ricochet de lavoir.<br/>
    Note: Infinie signifie simplement : "beaucoup plus grand que la distance entre les deux flotteurs".
  </figcaption>
</figure>

En employant une formule magique ("trigonometrum s'il te plum") dans le triangle ABC (figure 
<a href="#f_trigo"><i>"trigonometrie"</i></a>
), on obtient :

<!-- Figure diffraction -->
<figure style="float: left; min-width:40%; width:300px" >
  <a name="f_trigo"></a>
  <img style="width:100%" src='Figure/22_float_triangle.svg' alt='missing' />
  <figcaption>
    <b>Trigonometrie :</b>
    $$sin(\theta) = \frac{a}{b} = \frac{oppose}{hypothenus}$$
  </figcaption>
</figure>

Où:

* $b$ est une distance connu : la distance entre les deux flotteurs (b pour [ligne de Base](https://en.wikipedia.org/wiki/Astronomical_interferometer)).
* $a$ est la distance supplémentaire que la vague a due parcourir (a pour À remplacer).


Remplaçons le ! On connait la vitesse de la vague $v$ et le temps de délai $\Delta t$ que la vague a pris pour atteindre le deuxième flotteur

Ainsi a est donné par la formule $vitesse = \frac{distance}{temps} \Leftrightarrow distance = vistesse \times temps$. Ce qui nous donne l'équation:

$$
\begin{aligned} 
\theta &= arcsin\left(\frac{b}{v\times\Delta t}\right) \\
       & = arcsin\left( \frac{Distance\_de\_la\_base}{Vitesse\_de\_la\_vage \times Delai\_temporel\_mesure} \right) \\
\end{aligned} 
$$

Par exemples:

- Si la vitesse de la vague est de $1\frac{m}{s}$, la distance entre les deux flotteurs est de 2m et le temps mesuré est de 2 seconde, c'est que $\theta = 90°$ soit la vague vient de l'extrème droite (à ne pas citer hors contexte).
- Si le temps mesuré est de 1 seconde, la vague viens d'un angle $\theta = arcsin\left(\frac{2}{1 \times 1 }\right) = arcsin(1/2) = 30°$ (en effet $sin(30°) = 1/2$). C'est la situation représentée dans la
<a href="#f_carte"><i>"carte des mers"</i></a>
.


# 3 <a name="s3_modulo"></a> Délai d'une onde

<blockquote> Fluctuat nec mergitur </blockquote>

* TODO bloon discuss: Insister au moins dans un bloon, le manque d'information terrible qu'on avec le modulo 2pi

La section précédente nous a donné $\theta$ : la position (angulaire) de l'objectif.
C'est donc mission acomplie pour la section 2 !

Le problème est que les objectifs astrophysques, ne s'allument pas d'un seul coup mais emmèttent de manière continue.
Il n'y a donc pas de front d'onde (ou vague) de référence.
L'altitude de chaque floteur variera au grès de la vague et suivra une sinoïde plus ou moins synchronisée avec l'autre flotteur.
Ce degrès de synchronysme est appellé [correlation](https://kids.alma.cl/como-estan-conectadas-las-antenas-de-alma/).

<div>
On ne peut plus mesurer $\Delta t$ mais $\Delta t$ modulo $\frac{1}{\nu}$ où $\nu$ est la fréquence de l'onde et donc son inverse, $\frac{1}{\nu}$, est le temp qui sépare deux vagues.
<sup>[+]<div class="description"> On ne peut plus savoir sur quelle vague est chaque flotteur mais à quelle position de la vague : en haut, en descente ...
(voir figure
<a href="#f_altitude"><i>"altitude"</i></a>
)
</div></sup></div>

<!-- Figure Multiple direciton in -->
<figure style="margin:10px" >
  <a name="f_altitude"></a>
  <img style="width:90%" src='Figure/31_wave_which.svg' alt='missing' />
  <figcaption style="
    width:90%; min-width:300px;
    display: block;
    margin: 0 auto;
  ">
    <b>Altitude :</b>
    On peut mesurer que A et C sont en phase et A et B sont défasé de $\frac{\pi}{2}$.</br>
    Mais il est impossible de savoir que A sur la même vague que B et une autre que C par la seule mesure de la position vertical des bouchons puisque toutes les vagues sont parfaitement identiques.
  </figcaption>
</figure>

* Par exemple, supposons que la longueur d'onde est de $\lambda = 10cm = 0.1m$.
* Rapellant les valeurs précédentes (vitesse: $v= 1m/s$, ligne de base: $b = 2m$), le temps qui sépare deux maximum est donc de \frac{1}{\nu} = 0.1s.
<sup>[+]<div class="description">
Utilisant : $v = \frac{d}{t} \left(= \frac{distance}{temps}\right) = \lambda\nu$
</div></sup></div>

<!-- Figure Multiple direciton in -->
<figure style="float: right; width:300px;" >
  <a name="f_possible"></a>
  <img style="width:100%" src='Figure/24_float_all.svg' alt='missing' />
  <figcaption>
    <b>Angles possibles :</b>
    Quelques angles d'origine des vagues qui permettent d'avoir les deux bouchons en phase. <br/>
    Le nombre de vague de retard du bouchon de gauche est indiqué. C'est justement ce nombre qu'on ne peut pas mesurer.<br/>
  </figcaption>
</figure>

* Imaginons,
<a href="#f_cas1"><i>cas 1</i></a>
, une vague venant de $\theta=53°$ (bien à droite) alors elle devra parcourir $b \times sin(\theta)=2\times sin(53°) = 1.6m$ de plus pour arriver au bouchon de gauche. 1.6m étant multiple de 0.1m, le bouchon de gauche sera en retard de 16 vagues sur celui de droite mais "en phase" (i.e. à la même altitude à tout moment)
* Imaginons maintenant,
<a href="#f_cas2"><i>cas 2</i></a>
, une vague venant de $\theta = 30°$ (centre-droite). Alors elle devra parcourir $a = b \times sin(\theta) = 2 \times sin(30°) = \frac{1}{2} * 2 = 1m$. 1m étant aussi multiple de 10cm, les deux bouchons seront aussi en phase.
* En mesurant l'altitude des deux bouchons, nous ne pourrons pas discriminer le cas 1 du cas 2.
* Quelques valeurs possibles de $\theta$ pour deux bouchons en phase sont dans la figure 
<a href="#f_possible"><i>"angles possibles"</i></a>
.



* [Keck](https://fr.wikipedia.org/wiki/Observatoire_W._M._Keck) c'est ti qu'on fait pour savoir si le caillou a été jeté à 53° (cas 1) ou a 30° (cas 2) ?

* Rajoutons un bouchon : "Z". Par exemple, à 0.5m à gauche du bouchon de référence : "X" : celui de droite, et donc a 1.5m à droite de celui de gauche : "Y". Comme sur la figure
<a href="#f_reseau"><i>"réseau"</i></a>
:

<figure style="margin:10px" >
  <a name="f_reseau"></a>
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
    <b>Réseau :</b>
    Trois bouchons valent mieux que deux.
  </figcaption>
</figure>

* Alors si $\theta = 53°$ (cas 1), le bouchon Z recevra l'onde $0.5 \times arcsin(53°) = 0.40m = 40cm$ plus loin. Ce bouchon aura 4 vagues de retard sur X et sera en phase

<!-- Left -->
<div style="clear: both; margin:0; display:flex">
<figure style="float: left; min-width:300px; width:450px; margin:0;
    margin-top:auto;
    align-self: flex-end;
    " >
  <a name="f_cas1"></a>
  <img src='Figure/42_wave_animate_37.svg' alt='missing' style="
    width:90%;
    "/>
  <figcaption style="
    text-align:center;
    width:90%;
  ">
    <b>Cas 1 : $\theta = 53°$ :</b>
    Ces vagues agitent X, Y, Z sont en phase.
  </figcaption>
</figure>
<!-- Right -->
<figure style="float: right; min-width:300px; width:450px; margin:0;
    margin-top:auto;
    align-self: flex-end;
    " >
  <a name="f_cas2"></a>
  <img src='Figure/41_wave_animate_60.svg' alt='missing' style="
    width:90%;
    "/>
  <figcaption style="
    text-align:center;
    width:90%;
  ">
    <b>Cas 2 : $\theta = 30°$ :</b>
    Ces vagues agitent Z en opposition de phase avec X ou Y.
  </figcaption>
</figure>
</div>
<div style="display: block; clear: both;"></div>


* Mais si $\theta = 30°$, le bouchon Z recevra le front d'onde $0.5 \times cos(30°) = 0.25m = 20cm + 5cm$ plus loin. Ce bouchon aura 2 vagues et demi de retard.
Encore une fois, on ne peut pas mesurer les "2 vagues" mais on peut mesurer le "et demi" car Z sera en opposition de phase (déphasé de $\pi$) avec X : quand X sera au sommet de la vague, il sera en bas.
En sommant les altitudes de X et de Z, en tout temps, on obtient zéro. Cette somme est une [interférence](https://fr.wikipedia.org/wiki/Interf%C3%A9rence) artificielle, ici destructive.
On nomme (l'intégrale temporel de ) cette somme $V(b)$ pour "Visibilité avec la basse b".

Chaque ligne permet de discriminer un rang d'angle différent. Suposez que l'on puisse faire tourner la ligne des flotteurs, alors $\theta$ changerai et chaque ligne nous aporterai des informations nouvelles. Le plus simple pour efectuer cette rotation avec un réseau d'antennes et une source extraterestre est de faire tourner la planète. J'ai donc personellement pris la responsabilité de maintenir la rotation de la terre et voyez vous, elle continue de tourner.



# 4 <a name="s4_image"></a>Délai de plusieurs objects : reconstruction d'image

<blockquote> Divide ut reges </blockquote>

La section 3 a également rempli son objectif de determiner la position d'un callou poinctuel emmettant une serie de vagues indifférentiables.
Félicitation au lecteur qui est arrivé jusqu'ici : il peut en effet désormais localiser précisément l'angle avec lequel a été jeté un callou ponctuel avec quelques bouchons.

- [4.1:](#s41_triangulation) Afin que le lecteur comprenne la puissance de cette technique nous allons rapidement énoncer sa précision et ce qui la différentie de la triangulation.

- [4.2:](#s42_forme) Puis verrons en quoi un callou non pnctuel n'est qu'au final plusieurs callou ponctuel côte à côte.

- [4.3:](#s41_image) Ce qui nous permettra de reconstiture la forme d'un callou à partir des déplacements détectés.

- [4.4:](#s44_spectre) Enfin nous aborderons l'importance des filtres et la mesure de la taille des vagues.
<sup>[+]<div class="description">
Ou mesure spectrale pour les ondes radios. En Français la couleur.
</div></sup>


## 4.1 <a name="s41_triangulation"></a> Précision réelle

La vulgarisation, fréquement compare l'interféromérie avec la [triangulation](https://fr.wikipedia.org/wiki/Triangulation).
En effet, dans les deux cas, la corrélation entre deux detecteurs : télescope et oeil respectivement, permet d'obtenir une irmation nouvelle.

__La Triangulation :__
permet à l'être humain de [percevoir la profondeur](https://fr.wikipedia.org/wiki/Perception_de_la_profondeur). Elle suppose que chaque oeil connaisse son orientation. La combinaison des deux yeux par une formule trigonométrique donne la profondeur. En résumé:

* Distance entre les deux yeux, angle oeil droit, angle oeil guache -> distance de l'object.

<div>
<b>L'Interférométrie :</b>
permet de connaitre l'angle de l'émétteur. Elle suppose que chaque détecteur puisse mesurer l'intensité et la phase de l'onde incidente. C'est à dire la taille des vagues et l'atitude du flotteur.
Hors dans la triangulation, il n'est jamais question de la nature ondulatoire des raies. Par ailleur: 1 l'oeil humain est incapbale de mesurer la phase de la lumière incidente et 2 les capteurs interferométriques
<sup>[+]<div class="description">
Antenne.<br/>
Ou télescope avec une fibre optique au foyer image.
Cette fibre optique va mélanger tout les angles et perdre l'information angulaire des rayons incidents. Ce n'est pas grave car cette information sera mesurée postérieurement bien plus précisément via les interférences avec un autre télescope éloigné TODO voir VLTI.
</div></sup>
sont incapables indépendement de mesurer l'angle de l'émétteur. D'ailleur c'est l'objetif de la mesure synchronysée. En résumé:
<ul><li>
Distance entre les capteurs, phase capteur droit, phase capteur gauche -> angle de l'object.
</li></ul>
<div>

<div>
En les rapprochant, la vulgarisation fait une analogie facilement compréhensible mais incorrecte.
De plus, la distance des astres lointains par triangulation est impossible.
<sup>[+]<div class="description">
La distance des astres est bien plus grande que celle des capteurs et ces derniers les voient à une distance infinie.<br/>
Pour mesurer la distance  des astres (étoiles, supernovaes, galaxies), les physiciens font apel à une compréhension fine de ces derniers, respectivement : lumosité, décroissance lumineuse et fréquences d'ocilations connues décalés par l'expansion de l'univers.
</div></sup>
</div>

<div>
Maintenant que vous savez que ces mécanismes sont différents, vient, à mon avis, une question légitime : <b>quel est l'avantage de l'interférométrie ?</b>
<sup>[+]<div class="description">
L'oeil humain est d'un technologie remarquable : petit, léger, résistant, rapide, peu gourmand en energie, déjà branché (au cerveau), doté d'une grande gamme dynamique, d'un grand champs de vision et d'une acceptable résolution angulaire et profondeur.<br/>
Alors pourquoi contruisons nous des observatoires artificiels ? On sent que la réponse réside dans la résolution angulaire et la profondeur.
</div></sup>
</div>

<div>
<b>Réponse : la précision de la mesure angulaire.</b>
Nous avons, dans l'exemple précédent, séparer deux bouchons de 2m pour mesurer l'orientation d'une vague de 10cm de longueur d'onde. En effet, c'était plus facile à dessiner.
En réalité, les antennes d'ALMA sont séparées de 16km et mesurent l'angle d'incidence d'une onde de 1mm. En gardant notre exemple avec nos vagues et nos flotteurs, c'est comme si on séparait les flotteurs de $16km \times \frac{10cm}{1mm} = 1600km$. A cette distance, les flotteurs peuvent mesurer la différence entre une vague venant de $theta=0$ et une vague venant de
$\theta = arcsin\left(\frac{10cm}{1600km}\right) = 0.0000036°$,
deuxième angle où les deux flotteurs se retrouveront de nouveau en phase.
<sup>[+]<div class="description">
TODO petit angle approximation, distance de résolution, critère dde Rayleight
 où les deux flotteurs sont en phase 
</div></sup>
</div>

La résolution d'ALMA est donc de 0.0000036° ou 10 mili-arc-segonde de degrés. Ce qui est très précis et permet de synthéthiser des images avec un grand détails en suivant la méthode que nous décrirons prochainement à la <a href="#s41_image">section 4.3</a>.
</div>


* TODO antnne > Télescope
  * pour 1 multiplier le signal et
  * 2 pouvoir mesurer phase et amplitude


## 4.2 <a name="s42_forme"></a> D'un point à une forme

Supposons de le caillous ne soit pas ponctuel mais d'une certaine taille.
Alors, la vague engendrée sera différente : elle ne sera pas parfaitement sphérique à l'origine.

On sait déjà determiner la position angulaire d'un point ([section 3](s3_modulo)). Alors si plusieurs points emettent des ondes, ces différentes ondes se propageront indépendement dans le milieu et les détecteurs recevront la somme de chaque onde. C'est à dire la somme des altitudes qu'ils auraient reçu pour chaque point.

En d'autre termes, on peut prédire précisément, avec une somme, ce que les recépteurs mesureront en fonctions de la positions des différentes sources ponctuelles. Réciproquement, on peut determiner la position de chacunes de sources en fonction des niveaux mesurés moyennant le manque d'information en reception.

Ce manque d'information est du au fait qu'il n'y a pas de flotteurs partout sur la ligne de mesure. L'écuacion mathématique est complexe. Le lecteur peut le prédire des mots : manque d'information, mesure réciproque (alias inverse) sans parler de l'erreur de mesure. Mais heureusement pour le physicien ou l'amateur, qui bien souvent sont les mêmes, il existe un régle intuituive en théorie de l'information : <b>on ne peut mesurer au maximum autant de valeurs que l'on a de données</b>. Ca veut dire qu'on peut s'épargner les calculs et considérer qu'on peut mesurer autant d'angles d'inciences sources pontuelles (vagues) que l'on a de detecteurs (flotteurs).

Comme nous pouvons mesurer l'angle de plusieurs sources pontuelles, nous divisons la forme de la source en plusieurs sous-sources ponctuelles et puis interpoler pour trouver la forme continue de la source classique.
* TODO bloon, Algorithme d'interpolation CLEAN, MAx entropie, supposition ou non, erruer.

<div>
En résumé : nous allons d'un point à un forme en passsant par plusieurs points.
<sup>[+]<div class="description">
Le terme technique est
<a href=https://fr.wikipedia.org/wiki/Discr%C3%A9tisation>Discrétisation</a></br>
</div></sup>
</div>


## 4.3 <a name="s43_image"></a> Reconstruction d'image

De cette manière, avec plusieurs ligne de base, il est également possible de detecter simulanément des vagues provenant de différents endroit.
La compréhension des détails de ce processus implique une vision performante des sommes de sinuzoides que procure la [transformation de fourier](https://fr.wikipedia.org/wiki/Transformation_de_Fourier) ou les [ondelettes](https://fr.wikipedia.org/wiki/Ondelette) et fera peut être l'object d'un chapitre 2 dans le cas improbable d'une demande d'un des 2,3 lecteurs.

* TODO Recontruction d'image somme de sinuzoide:
  * text: pourquoi c'est comme plussieurs petits
  * image step function de -thete a theta)


## 4.4 <a name="s44_spectre"></a> Avec plusieurs longueurs d'ondes

Non là sérieux, ça devient compliqué : il y a plus de paramètres à déterminer (positions, longueurs d'ondes) que de paramètres mesurables. Sans information à priori, c'est donc mathématiquement impossible.

La solution la plus simple dans ce cas, le cas réel, est de limiter physiquement:

1. Le champ de vision avec des avec des digues qui bloquent les vagues ne venant pas de la direction d'observation. En effet, elle contamineraient la mesure.
2. Les fréquences mesurées avec des filtres. Simplement en limitant la vitesse d'oscillation des bouchons, les vagues plus rapides ou plus lentes seront ignorées.

TODO chose par ailleur effectué sur les téléscopes entier, il 
Malgrès les efforts de la section 4 pour repousser les signaux parasites et limiter le champs d'étude, il reste un manque d'information 



# 5 <a name="s5_radio"></a> Des vagues aux ondes radios

<blockquote> Per aspera ad astra </blockquote>

Le concept mathématique utilisé par un telescope à ouverture synthétique est identique à celui du détecteur utilisant des flotteurs.

Pour enrichir le vocabuliare du lecteur voici l'analogie:


| Presente explication | [ALMA](https://fr.wikipedia.org/wiki/Grand_r%C3%A9seau_d%27antennes_millim%C3%A9trique/submillim%C3%A9trique_de_l%27Atacama) |
| ---                  | --- |
| Vague                | Onde Electromagnétique |
| Callou               | Astre |
| Bouchon              | Antenne |
| Position             | Accélération d'éléctron |

J'ai l'espoir d'avoir démontré au lecteur que, comme moi même, il ignore beaucoup sur la nature des vagues de surface eau-air. Pourtant, grosso modo, il sait de quoi il s'agit.

<div>
De même, il est intéréssant d'apréhender la notion d'onde éléctromagnétique.
<sup>[alias]<div class="description">
Lumière, Photon, Onde (radio)
</div></sup>
</div>

Quelle est la différence entre le callou et le bouchon ? (Faire un pause ... réponse:) Le premier émet des vagues en se dépançant verticalement dans l'eau et le second se déplace verticalement sur l'eau lorsqu'il reçoit des vagues. De plus, si j'agitais artificiellement le bouchon, il émetrai des vagues. Donc la différence n'est pas dans leur nature mais dans leur comportement.

L'accélération d'une charge éléctrique, tipiquement un éléctron, engendre l'émission d'un [photon](https://fr.wikipedia.org/wiki/Photon) et réciproquement la reception d'un photon engendre l'accélération d'un electron.
En agitant artificielement un éléctron dans une antenne, par exemple avec un aimant, on peut trasmettre un signal à une antenne voisine. Le porteur de ce signal est le photon : il est, plus généralement [porteur de la force](https://en.wikipedia.org/wiki/Force_carrier) [électromagnétique](https://fr.wikipedia.org/wiki/%C3%89lectromagn%C3%A9tisme).


# <a name="so_new_limit"></a> Optionel Limitations du réseau d'antennes

<blockquote> Dura lex, sed lex </blockquote>

* TODO Parler de la résolution totale fente d'young et principe de raylight
* TODO OPtional section: démonstration des anciennes et nouvelles limitations (young et aperture)
* TODO ici un dessin de tache d'airy



# <a name="s_conclusion"></a> Conclusion

<blockquote> Quid novi </blockquote>

La section 6 montre qu'il est possible de détecter l'agitation electronique extraterrestre via une une autre induite sur terre. La section 1 donne les limitations. Enfin, les autres sections expliquent la correlation de plusieurs récepteurs distants peut pousser la limite à celle d'un téléscope de la taille de leur séparation.

Ici le lecteur devrait avoir compris:

* L'origine de la [limitation des téléscopes](#s1_limit)
* Comment déterminer la position angulaire d'une source avec la correlation entre deux recepteurs.
* La [différence entre interferométrie et triangulation](#s41_triangulation).
* Pourquoi plus de deux recepteurs sont nécéssaires pour [former une image](#s41_image).
* TODO Pourquoi beaucoup de calcul.
* TODO téléescope > antennes

Voilà cette explication est terminée.
J'espère que tu as lu lentement sans quoi la compréhensieux a due être hasardeuse.
Enfin, si tu as tout compris c'est très très bien.
Félicitation, si tu es arrivé jusque ici, le voyage était périlleux.
S'il t'as plue, je m'en vois ravis. 
C'est 
Sinon, 


# Liens pour aller plus loin

<blockquote> Sic itur ad astra </blockquote>

* [ESO spectroscopie (pdf)](https://www.eso.org/sci/meetings/2015/eris2015/program.html) : Introduction gentille à l'interferométrie : "ERIS : Enhanced Resolution Imager and Spectrograph"

* 
