---
title: Synthèse d'ouverture
category: 
header-includes: |
    <link rel="stylesheet" type="text/css" href="Css/alma_gruvbox.css">
---



La [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture)
est le processus de construction d'image utilisé par les réseaux d'antennes comme [ALMA](https://fr.wikipedia.org/wiki/Grand_r%C3%A9seau_d%27antennes_millim%C3%A9trique/submillim%C3%A9trique_de_l%27Atacama).
Elle permet de simuler l'ouverture d'un grand [télescope](https://en.wikipedia.org/wiki/Telescope) avec plusieurs petits.
Ce grand télescope virtuel a pour diamètre la distance maximale entre deux petits.

- [1/ Limitations du télescope :](#s1_limit) Pourquoi les grands télescopes ont une meilleure résolution angulaire et que simuler un grand télescope signifie obtenir cette même résolution : "Pourquoi moi ?"

- [2/ Délai :](#s2_dirac) Section fondamentale. En commençant, la métaphore avec les vagues eau-air, nous verrons comment le délai de réception d'une vague entre deux flotteurs peut nous donner la direction d'une vague : "Bienvenu à bord !"

- [3/ Sinusoïde :](#s3_modulo) Ajout de réalisme au modèle, la vague deviens une sinusoïde, c'est-à-dire un ensemble de vagues : "On s'amarine moussaillon ?"

- [4/ Imagerie :](#s4_image) Le caillou ponctuel devient continue : une forme.
Constitution d'image depuis plusieurs informations angulaires : "À l'abordage !"

- [5/ Onde radio : ](#s5_radio) Augmentation de la distance des flotteurs et transformation en antennes. "Cap vers les étoiles !"

- [Optionnel/ Nouvelles limitations:](#so_new_limit) Calcul des limitations anciennes et nouvelle. Détermination de la qualité maximale atteignable. "Marc Pageot ne navigue pas sur des cageots."

- [Conclusion: ](#s_conclusion) "C'est pas bientôt fini !"

- [Aller plus loin: ](#s_conclusion) "Quand y'en a plus, y'en a encore."


# 1/ <a name="s1_limit"></a> Limitations du télescope

<blockquote> Nosce te ipsum </blockquote>

On mesure la qualité d'une image astrophysique avec deux paramètres : sa [résolution angulaire](https://en.wikipedia.org/wiki/Dynamic_range#Photography) et sa [profondeur](https://fr.wikipedia.org/wiki/Liste_des_champs_profonds).


1. __La profondeur__ est le flux de la source la moins lumineuse que l'on peut détecter.
<sup>[+]<div class="description">
Une grande profondeur permet de détecter des objets peu brillant. Par exemple, des objets lointains.
</div></sup>
2. __La résolution angulaire__ est le plus petit angle qu'un télescope peut résoudre. 
<sup>[+]<div class="description">
C'est à dire que deux objets séparés d'un angle inférieur à la résolution apparaîtront comme un seul.<br/>
Tout objet de taille inférieur à la résolution angulaire apparaîtra comme un point.<br/>
Un télescope optique de 1m de diamètre ($D$), observant un signal de longueur d'onde $\lambda = 550nm$ (dans le jaune) a une résolution de 0.1 seconde de degrés c'est à dire 0.1 degré divisé par 3600. Une grande résolution angulaire permet d'observer des objets de petite taille angulaire par exemple, des objets lointains.
</div></sup>

-> Jusqu'à preuve du contraire, un télescope quelconque peut générer des images d'une résolution et profondeur arbitrairement grande à condition de :

1. Exposer suffisamment longtemps l'objet pour obtenir plus de lumière dans sa direction que le bruit du ciel et de l'appareil.
2. Utiliser un détecteur (Couple Charged Device) avec suffisamment de pixels par cm.
<sup>[+]<div class="description">
Le nombre de pixels par centimètre peut être arbitrairement élevé avec des bancs optiques à l'intérieur du détecteur. Par exemple les nouveaux téléphones portables déclarent des détecteurs de 9Mpixels (= 3000x3000) et de 2mm tandis qu'un détecteur de télescope est de 1Mpixel (1000x1000) et mesure 3cm.
</div></sup>

<- Je vais maintenant vous prouver le contraire.

Pour ce qui est de la __profondeur__, un grand télescope est nécessaire.
En effet, bien qu'en sommant un grand nombre d'images du même endroit, nous pouvons obtenir une profondeur infinie, avant de pouvoir les sommer, il faut pouvoir les aligner convenablement et pour ceci, il faut ... des images suffisamment profondes et résolues.
En effet, si on ne voit rien sur les images comment sait-on vers où elles pointent.
Il nous faut donc un télescope suffisamment grand qui puisse absorber la lumière pour résoudre au moins deux étoiles de champs à chaque exposition.
Vous pourrez penser : "si la mécanique du télescope est suffisamment bonne, les images sont alignées par le pointage". Malheureusement, il n'est pas possible d'obtenir une position précise sans [viseur d'étoile](https://fr.wikipedia.org/wiki/Viseur_d%27%C3%A9toiles) qui lui-même nécessite de voir un étoile proche du champ d'observation.

Pour ce qui est de la __résolution angulaire__, la taille du télescope est limitant également.
Mais cette fois, ce n'est plus pour une simple question de collecter un maximum de flux lumineux afin d'obtenir un bon signal sur bruit suffisant pour la détection.
L'effet néfaste est la [diffraction](https://en.wikipedia.org/wiki/Diffraction#Mechanism) que subie toute onde qui passe par une ouverture (voir la figure 
<a href="#f_fente"><i>"fente"</i></a>).
Dans le cas d'une ouverture circulaire comme celle du miroir principale, l'image d'un point est une [tache d'Airy](https://fr.wikipedia.org/wiki/Tache_d%27Airy). Ce n'est plus un point, même si le télescope est parfait.
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


Ces deux raisons expliquent l'intérêt pour les grands télescopes.
Cependant il est économiquement difficile de construire de très grandes ouvertures de qualités, réflecteurs ou lentilles.
C'est pourquoi la [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture)
est utilisée pour simuler un télescope de grande ouverture avec plusieurs petits.

La synthèse d'ouverture est une technologie très liée à la radioastronome car son emploi est aujourd'hui techniquement proche du miracle dans l'optique visible.
En effet, comme vous allez le voir, les détecteurs radios permettent de mesurer la lumière comme une onde, ce qui permet une reconstruction à posteriori.
Par le suite, les détecteurs (antennes) seront modélisée par des flotteurs dans l'eau et leur position est mesurable. En optique visible, cette position n'est pas mesurable, on peut juste savoir si le flotteur bouge. En termes techniques, on dit que les antennes radios (ou millimétriques) mesures simultanément la phase et l'amplitude du signal électromagnétique.


# 2/ <a name="s2_dirac"></a> Délai d'un choc

<blockquote> Verba docent, exempla trahunt </blockquote>

Supposons qu'une pierre soit lancée dans un lac calme.
Une vague va se propager en cercles concentriques autour de cette pierre.
Nous disposons de deux flotteurs pour mesurer la position de la source de la vague, c'est-à-dire l'endroit où la pierre est tombée.
Comme en astrophysique, nous voulons mesurer sa position angulaire et non sa distance.

Supposons, pour commencer, qu'il n'y a qu'une vague généré par cette pierre.
Alors, si la pierre a été lancée à droite, comme sur la figure
<a href="#f_carte"><i>"carte des mers"</i></a>,
le flotteur de droite va recevoir la vague avant celui de gauche. Réciproquement, si nous mesurons que le flotteur de droite est déplacé avant celui de gauche, c'est que la vague a été lancé à droite.

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
    Le caillou a été lancé à une position angulaire de $\theta$, et se situe à une distance infinie, c'est pourquoi le front d'onde arrive en forme de ligne sur le flotteur à l'image d'une majestueuse vague de houle en haute mer et non d'un misérable ricochet de lavoir.<br/>
    Note: Infinie signifie simplement : "beaucoup plus grand que la distance entre les deux flotteurs".
  </figcaption>
</figure>

En employant une formule magique ("trigonometrum s'il te plum") dans le triangle ABC (figure 
<a href="#f_trigo"><i>"trigonométrie"</i></a>
), on obtient :

<!-- Figure diffraction -->
<figure style="float: left; min-width:40%; width:300px" >
  <a name="f_trigo"></a>
  <img style="width:100%" src='Figure/22_float_triangle.svg' alt='missing' />
  <figcaption>
    <b>Trigonométrie :</b>
    $$sin(\theta) = \frac{a}{b} = \frac{oppose}{hypothénuse}$$
  </figcaption>
</figure>

Où:

* $b$ est une distance connue : la distance entre les deux flotteurs (b pour [ligne de Base](https://en.wikipedia.org/wiki/Astronomical_interferometer)).
* $a$ est la distance supplémentaire que la vague a dû parcourir (a pour À remplacer).


Remplaçons-le ! On connait la vitesse de la vague $v$ et le temps de délai $\Delta t$ que la vague a pris pour atteindre le deuxième flotteur

Ainsi a est donné par la formule $vitesse = \frac{distance}{temps} \Leftrightarrow distance = vistesse \times temps$. Ce qui nous donne l'équation:

$$
\begin{aligned} 
\theta &= arcsin\left(\frac{b}{v\times\Delta t}\right) \\
       & = arcsin\left( \frac{Distance\_de\_la\_base}{Vitesse\_de\_la\_vague \times Delai\_temporel\_mesure} \right) \\
\end{aligned} 
$$

Par exemples:

- Si la vitesse de la vague est de $1\frac{m}{s}$, la distance entre les deux flotteurs est de 2m et le temps mesuré est de 2 seconde, c'est que $\theta = 90°$. C'est-à-dire que la vague vient de l'extrême droite (à ne pas citer hors contexte).
- Si le temps mesuré est de 1 seconde, la vague viens d'un angle $\theta = arcsin\left(\frac{2}{1 \times 1 }\right) = arcsin(1/2) = 30°$ (en effet $sin(30°) = 1/2$). C'est la situation représentée dans la
<a href="#f_carte"><i>"carte des mers"</i></a>
.


# 3/ <a name="s3_modulo"></a> Délai d'une onde

<blockquote> Fluctuat nec mergitur </blockquote>


La section précédente nous a donné $\theta$ : la position (angulaire) de l'objectif.
C'est donc mission accomplie pour la section 2 !

Le problème est que les objectifs astrophysiques, ne s'allument pas d'un seul coup mais émettent de manière continue.
Il n'y a donc pas de front d'onde (ou vague) de référence.
L'altitude de chaque flotteur variera au grède la vague et suivra une sinusoïde plus ou moins synchronisée avec l'autre flotteur.
Ce degrés de synchronisme est appelé [corrélation](https://kids.alma.cl/como-estan-conectadas-las-antenas-de-alma/).

<div>
On ne peut plus mesurer $\Delta t$ mais $\Delta t$ modulo $\frac{1}{\nu}$ où $\nu$ est la fréquence de l'onde et donc son inverse, $\frac{1}{\nu}$, est le temp qui sépare deux vagues.
<sup>[+]<div class="description">
On ne peut plus savoir sur quelle vague est chaque flotteur mais à quelle position de la vague : en haut, en descente ...
(voir figure <a href="#f_altitude"><i>"altitude"</i></a>)<br/>
Remarquez que ce manque d'information est drastique.
En effet, savec une ligne de base de 16km et des ondes de 1mm, on peut avoir un doute entre $\frac{16km \times \pi}{1mm} = 50M$ (50 millions) de valeurs possibles de $\theta$ pour une source ponctuelle. (Pour 10 sources, ce serai $50M^{10} = 9\times10^{76}$).
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
    On peut mesurer que A et C sont en phase et A et B sont déphasé de $\frac{\pi}{2}$.</br>
    Mais il est impossible de savoir que A sur la même vague que B et une autre que C par la seule mesure de la position verticale des bouchons puisque toutes les vagues sont parfaitement identiques.
  </figcaption>
</figure>

* Par exemple, supposons que la longueur d'onde est de $\lambda = 10cm = 0.1m$.
* Rappelant les valeurs précédentes (vitesse: $v= 1m/s$, ligne de base: $b = 2m$), le temps qui sépare deux maximums est donc de \frac{1}{\nu} = 0.1s.
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
    Le nombre de vagues de retard du bouchon de gauche est indiqué. C'est justement ce nombre qu'on ne peut pas mesurer.<br/>
  </figcaption>
</figure>

* Imaginons,
<a href="#f_cas1"><i>cas 1</i></a>
, une vague venant de $\theta=53°$ (bien à droite) alors elle devra parcourir $b \times sin(\theta)=2\times sin(53°) = 1.6m$ de plus pour arriver au bouchon de gauche. 1.6m étant multiple de 0.1m, le bouchon de gauche sera en retard de 16 vagues sur celui de droite mais "en phase" (i.e. à la même altitude à tout moment)
* Imaginons maintenant,
<a href="#f_cas2"><i>cas 2</i></a>,
une vague venant de $\theta = 30°$ (centre-droite). Alors elle devra parcourir $a = b \times sin(\theta) = 2 \times sin(30°) = \frac{1}{2} * 2 = 1m$. 1m étant aussi multiple de 10cm, les deux bouchons seront aussi en phase.
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
On nomme (l'intégrale temporelle de) cette somme $V(b)$ pour "Visibilité avec la basse b".

Chaque ligne permet de discriminer un rang d'angle différent. Supposez que l'on puisse faire tourner la ligne des flotteurs, alors $\theta$ changerai et chaque ligne nous apporterai des informations nouvelles. Le plus simple pour effectuer cette rotation avec un réseau d'antennes et une source extraterrestre est de faire tourner la planète. J'ai donc personnellement pris la responsabilité de maintenir la rotation de la terre et voyez-vous, elle continue de tourner.



# 4/ <a name="s4_image"></a>Délai de plusieurs objets : reconstruction d'image

<blockquote> Divide ut reges </blockquote>

La section 3 a également rempli son objectif de déterminer la position d'un caillou ponctuel émettant une série de vagues indifférentiables.
Félicitation au lecteur qui est arrivé jusqu'ici : il peut en effet désormais localiser précisément l'angle avec lequel a été jeté un caillou ponctuel avec quelques bouchons.

- [4.1:](#s41_triangulation) Afin que le lecteur comprenne la puissance de cette technique nous allons rapidement énoncer sa précision et ce qui la différencie de la triangulation.

- [4.2:](#s42_forme) Puis verrons en quoi un caillou non ponctuel peut être considéré comme plusieurs caillou ponctuels côte à côte.

- [4.3:](#s41_image) Ce qui nous permettra de reconstuire la forme d'un caillou à partir des déplacements détectés.

- [4.4:](#s44_spectre) Enfin nous aborderons l'importance des filtres et la mesure de la taille des vagues.
<sup>[+]<div class="description">
Ou mesure spectrale pour les ondes radios. En Français la couleur.
</div></sup>


## 4.1/ <a name="s41_triangulation"></a> Précision réelle

La vulgarisation, fréquemment compare l'interférométrie avec la [triangulation](https://fr.wikipedia.org/wiki/Triangulation).
En effet, dans les deux cas, la corrélation entre deux détecteurs : télescope et oeil respectivement, permet d'obtenir une information nouvelle.

<div class="border-aqua">
<b>La Triangulation :</b>
permet à l'être humain de [percevoir la profondeur](https://fr.wikipedia.org/wiki/Perception_de_la_profondeur). Elle suppose que chaque oeil connaisse son orientation. La combinaison des deux yeux par une formule trigonométrique donne la profondeur. En résumé:
<ul><li>
Distance entre les deux yeux, angle oeil droit, angle oeil gauche -> distance de l'objet.
</li></ul>
</div>


<div class="border-aqua">
<b>L'Interférométrie :</b>
permet de connaitre l'angle de l'émetteur. Elle suppose que chaque détecteur puisse mesurer l'intensité et la phase de l'onde incidente. C'est-à-dire la taille des vagues et l'altitude du flotteur.
Hors dans la triangulation, il n'est jamais question de la nature ondulatoire des raies. Par ailleurs: 1 l'oeil humain est incapable de mesurer la phase de la lumière incidente et 2 les capteurs interférométriques<sup>[+]<div class="description">
Exemple de capteur :<br/>
<b>1/ Antenne radio</b><br/>
<b>2/ Télescope</b> avec une fibre optique au foyer image.
Cette fibre optique va mélanger tout les angles et perdre l'information angulaire des rayons incidents. Ce n'est pas grave car cette information sera mesurée postérieurement bien plus précisément via les interférences avec un autre télescope éloigné. Voir par exemple le [Very Large Telescope Interferometer](https://www.eso.org/sci/facilities/paranal/telescopes/vlti.html).<br/>
<b>3/ Sismomètre</b>. On parle d'[interférométrie sismique](https://en.wikipedia.org/wiki/Seismic_interferometry)
([Sens-Schönfelder et Wegler 2011](https://www.sciencedirect.com/science/article/pii/S1631071311000861))<br/>
<b>4/ Flotteur de Tinmarino</b>. Voir [ici même](https://tinmarino.github.io/?show=aperture_synthesis_page)<br/>
</div></sup>
sont incapables, indépendamment, de mesurer l'angle de l'émetteur. D'ailleurs c'est l'objectif de la mesure synchronisée. En résumé :
<ul><li>
Distance entre les capteurs, phase capteur droit, phase capteur gauche -> angle de l'objet.
</li></ul>
</div>


<div>
En les rapprochant, la vulgarisation fait une analogie facilement compréhensible mais incorrecte.
De plus, la distance des astres lointains par triangulation est impossible.<sup>[+]<div class="description">
La distance des astres est bien plus grande que celle des capteurs et ces derniers les voient à une distance infinie.<br/>
Pour mesurer la distance  des astres (étoiles, supernovaes, galaxies), les physiciens font apel à une compréhension fine de ces derniers, respectivement : lumosité, décroissance lumineuse et fréquences d'ocilations connues décalés par l'expansion de l'univers.
</div></sup>
Maintenant que vous savez que ces mécanismes sont différents, vient, à mon avis, une question légitime : <b>quel est l'avantage de l'interférométrie ?</b><sup>[+]<div class="description">
L'oeil humain est d'un technologie remarquable : petit, léger, résistant, rapide, peu gourmand en energie, déjà branché (au cerveau), doté d'une grande gamme dynamique, d'un grand champs de vision et d'une acceptable résolution angulaire et profondeur.<br/>
Alors pourquoi contruisons nous des observatoires artificiels ? On sent que la réponse réside dans la résolution angulaire et la profondeur.
</div></sup>
</div>

<div>
<b>Réponse : la précision de la mesure angulaire.</b>
Nous avons, dans l'exemple précédent, séparer deux bouchons de 2m pour mesurer l'orientation d'une vague de 10cm de longueur d'onde. En effet, c'était plus facile à dessiner.
En réalité, les antennes d'ALMA sont séparées de 16km et mesurent l'angle d'incidence d'une onde de 1mm. En gardant notre exemple avec nos vagues et nos flotteurs, c'est comme si on séparait les flotteurs de $16km \times \frac{10cm}{1mm} = 1600km$. À cette distance, les flotteurs peuvent mesurer la différence entre une vague venant de $theta=0$ et une vague venant de
$\theta = arcsin\left(\frac{10cm}{1600km}\right) = 0.0000036°$,
deuxième angle où les deux flotteurs se retrouveront de nouveau en phase.<sup>[+]<div class="description">
Nous avons utilisé le [critère de Rayleight](http://ressources.univ-lemans.fr/AccesLibre/UM/Pedago/physique/02/optiondu/rayleigh.html) qui stipule qu'on ne peut distinguer deux taches de diffraction si le maximum de l'une correspond au premier minima de l'autre.
</div></sup>
</div>

La résolution d'ALMA est donc de 0.0000036° ou 10 mili-arc-segonde de degrés. Ce qui est très précis et permet de synthétiser des images avec un grand détail en suivant la méthode que nous décrirons prochainement à la <a href="#s41_image">section 4.3</a>.
</div>


## 4.2/ <a name="s42_forme"></a> D'un point à une forme

Supposons de le caillou ne soit pas ponctuel mais d'une certaine taille.
Alors, la vague engendrée sera différente : elle ne sera pas parfaitement sphérique à l'origine.

On sait déjà déterminer la position angulaire d'un point ([section 3](s3_modulo)). Alors si plusieurs points émettent des ondes, ces différentes ondes se propageront indépendamment dans le milieu et les détecteurs recevront la somme de chaque onde. C'est-à-dire la somme des altitudes qu'ils auraient reçu pour chaque point.

En d'autre termes, on peut prédire précisément, avec une somme, ce que les récepteurs mesureront en fonctions de la positions des différentes sources ponctuelles. Réciproquement, on peut déterminer la position de chacune des sources en fonction des niveaux mesurés moyennant le manque d'information en réception.

Ce manque d'information est dû au fait qu'il n'y a pas de flotteurs partout sur la ligne de mesure. L'équation mathématique est complexe. Le lecteur peut le prédire des mots : manque d'information, mesure réciproque (alias inverse) sans parler de l'erreur de mesure. Mais heureusement pour le physicien ou l'amateur, qui bien souvent sont les mêmes, il existe une règle intuitive en théorie de l'information : <b>on ne peut mesurer au maximum autant de valeurs que l'on a de données</b>. Ça veut dire qu'on peut s'épargner les calculs et considérer qu'on peut mesurer autant d'angles d'incidences de sources ponctuelles (vagues) que l'on a de détecteurs (flotteurs).

<div>
Comme nous pouvons mesurer l'angle de plusieurs sources ponctuelles, nous divisons la forme de la source en plusieurs sous-sources ponctuelles et puis interpoler pour trouver la forme continue de la source classique.<sup>[+]<div class="description">
Il existe, plusieurs algorithmes d'interpolation et [déconvolution](https://en.wikipedia.org/wiki/Deconvolution) utilisable à cette fin :
[CLEAN](https://en.wikipedia.org/wiki/CLEAN_(algorithm)), [Maximum Entropy Method](http://repositorio.uchile.cl/handle/2250/149958), Hybrid.<br/>
Ces algorithmes diffèrent dans les hypothèses qu'ils font sur l'émetteur. Ils sont itératifs et paramétrables.</br>
Voir la page des radio astronomes Français](http://www.iram.fr/IRAMFR/GILDAS/doc/html/map-html/node35.html) pour un petit descriptif sympa.
</div></sup>
</div>

En résumé : nous allons d'un point à un forme en passant par plusieurs points. Le terme technique de cette approche est "Discrétisation".


## 4.3/ <a name="s43_image"></a> Reconstruction d'image

De cette manière, avec plusieurs lignes de base, il est également possible de détecter simultanément des vagues provenant de différents endroit.
La compréhension des détails de ce processus implique une vision performante des sommes de sinusïdes que procure la [transformation de Fourier](https://fr.wikipedia.org/wiki/Transformation_de_Fourier) ou les [ondelettes](https://fr.wikipedia.org/wiki/Ondelette) et fera peut-être l'objet d'un chapitre 2 dans le cas improbable d'une demande d'un des 2,3 lecteurs.

* TODO Reconstruction d'image somme de sinusoïde:
  * text: pourquoi c'est comme plusieurs petits
  * image step function de -thete a theta)


## 4.4/ <a name="s44_spectre"></a> Avec plusieurs longueurs d'ondes

Non là sérieux, ça devient compliqué : il y a plus de paramètres à déterminer (positions, longueurs d'ondes) que de paramètres mesurables. Sans information à priori, c'est donc mathématiquement impossible.

La solution la plus simple dans ce cas, le cas réel, est de limiter physiquement:

1. Le champ de vision avec des digues qui bloquent les vagues ne venant pas de la direction d'observation. En effet, elles contamineraient la mesure.
2. Les fréquences mesurées avec des filtres. Simplement en limitant la vitesse d'oscillation des bouchons, les vagues plus rapides ou plus lentes seront ignorées.

TODO chose par ailleurs effectué sur les télescopes entier, il 
Malgré les efforts de la section 4 pour repousser les signaux parasites et limiter le champ d'étude, il reste un manque d'information 



# 5/ <a name="s5_radio"></a> Des vagues aux ondes radios

<blockquote> Per aspera ad astra </blockquote>

Le concept mathématique utilisé par un télescope à ouverture synthétique est identique à celui du détecteur utilisant des flotteurs.

Pour enrichir le vocabulaire du lecteur voici l'analogie:


| Presente explication | [ALMA](https://fr.wikipedia.org/wiki/Grand_r%C3%A9seau_d%27antennes_millim%C3%A9trique/submillim%C3%A9trique_de_l%27Atacama) |
| ---                  | --- |
| Vague                | Onde Électromagnétique |
| Caillou              | Astre |
| Bouchon              | Antenne |
| Position             | Accélération d'électron |

J'ai l'espoir d'avoir démontré au lecteur que, comme moi-même, il ignore beaucoup sur la nature des vagues de surface eau-air. Pourtant, grosso modo, il sait de quoi il s'agit.

<div>
De même, il est intéressant d'appréhender la notion d’onde électromagnétique.
<sup>[alias]<div class="description">
Lumière, Photon, Onde (radio)
</div></sup>
</div>

Quelle est la différence entre le caillou et le bouchon ? (Faire un pause ... réponse : ) Le premier émet des vagues en se déplaçant verticalement dans l'eau et le second se déplace verticalement sur l'eau lorsqu'il reçoit des vagues. De plus, si j'agitais artificiellement le bouchon, il emmétrai des vagues. Donc la différence n'est pas dans leur nature mais dans leur comportement.

L'accélération d'une charge électrique, typiquement un électron, engendre l'émission d'un [photon](https://fr.wikipedia.org/wiki/Photon) et réciproquement la réception d'un photon engendre l'accélération d'un électron.
En agitant artificiellement un électron dans une antenne, par exemple avec un aimant, on peut transmettre un signal à une antenne voisine. Le porteur de ce signal est le photon : il est, plus généralement [porteur de la force](https://en.wikipedia.org/wiki/Force_carrier) [électromagnétique](https://fr.wikipedia.org/wiki/%C3%89lectromagn%C3%A9tisme).

* TODO antnne > Télescope
  * pour 1 multiplier le signal et
  * 2 pouvoir mesurer phase et amplitude


# <a name="so_new_limit"></a> Optionnel/ Limitations du réseau d'antennes

<blockquote> Dura lex, sed lex </blockquote>

* TODO Parler de la résolution totale fente d'young et principe de raylight
* TODO link: https://fr.wikipedia.org/wiki/Fentes_de_Young

<!-- Center Figure Fente de Young -->
<figure style="margin:10px" >
  <a name="f_carte"></a>
  <img src='Figure/51_slit_two.svg#svgView(preserveAspectRatio(none))'
      alt='missing'
      style=" width:90%; min-width:300px; height:450px;
    display: block;
    margin: 0 auto;
  "/>
  <figcaption style="
    text-align:left;
    width:70%; min-width:300px;
    display: block;
    margin: 0 auto;
  ">
    <b>Fentes de Young :</b>
  </figcaption>
</figure>



* TODO OPtional section: démonstration des anciennes et nouvelles limitations (young et aperture)
* TODO ici un dessin de tache d'airy



# <a name="s_conclusion"></a> Conclusion

<blockquote> Quid novi </blockquote>

La section 6 montre qu'il est possible de détecter l'agitation électronique extraterrestre via une autre induite sur terre. La section 1 donne les limitations. Enfin, les autres sections expliquent la corrélation de plusieurs récepteurs distants peut pousser la limite à celle d'un téleescope de la taille de leur séparation.

Ici le lecteur devrait avoir compris:

* L'origine de la [limitation des télescopes](#s1_limit)
* Comment déterminer la position angulaire d'une source avec la corrélation entre deux récepteurs.
* La [différence entre interférométrie et triangulation](#s41_triangulation).
* Pourquoi plus de deux récepteurs sont nécessaires pour [former une image](#s41_image).
* TODO Pourquoi beaucoup de calcul.
* TODO télescope > antennes

TODO final not good
Voilà cette explication est terminée.
J'espère que tu as lu lentement sans quoi la compréhension a due être hasardeuse.
Enfin, si tu as tout compris c'est très bien.
Félicitation, si tu es arrivé jusqu'ici, le voyage était périlleux.
S'il t'as plue, je m'en vois ravis. 
C'est 
Sinon, 


# Liens pour aller plus loin

<blockquote> Sic itur ad astra </blockquote>

* [ESO spectroscopie (pdf)](https://www.eso.org/sci/meetings/2015/eris2015/program.html) : Introduction gentille à l'interférométrie : "ERIS : Enhanced Resolution Imager and Spectrograph"

* 
