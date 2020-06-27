---
title: Synthèse d'ouverture
category: Astronomie, Radio, Optique
header-includes: |
    <link rel="stylesheet" type="text/css" href="Css/alma_gruvbox.css">
---



La [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture)
est le processus de construction d'image utilisé par les réseaux d'antennes comme [ALMA](https://fr.wikipedia.org/wiki/Grand_r%C3%A9seau_d%27antennes_millim%C3%A9trique/submillim%C3%A9trique_de_l%27Atacama).
Elle permet de simuler l'ouverture d'un grand [télescope](https://en.wikipedia.org/wiki/Telescope) avec plusieurs petits.
Ce grand télescope virtuel a pour diamètre la distance maximale entre deux petits.

<div>
C'est un sujet qui invoque des mathématiques de Bac+2. Pourtant, la présente explication qui ne requiert d'un niveau collège<sup>[+]<div class="description">
Il faut pouvoir lire le Français, les équations et savoir que, dans un triangle rectangle : 
$$sin(angle) = \frac{cotes\:oppose}{hypothenuse}$$
</div></sup>
vise à être complète.
Ce qui explique qu'elle soit un peu longue.<br/>
Le lecteur impatient peut lire uniquement la <a href="s2_dirac">section 2</a>.
En effet, il comprendra comment des interférences artificielles peuvent révéler l'angle d'une source pour, petit à petit, construire une carte du ciel.
Par contre, en s'abstenant des autres sections,
ce lecteur manquera de ce vulgaire guide, l'invitation 
vers une des plus belles histoires naturelles, celle du [photon](https://fr.wikipedia.org/wiki/Photon).
<!-- Trick for sup -->
<ul></ul></div>



- [1/ Limitations du télescope :](#s1_limit) La taille du télescope comme frontière de sa résolution angulaire : "Pourquoi moi ?"

- [2/ Délai :](#s2_dirac) Section fondamentale. Une métaphore avec les vagues eau-airs montre comment le délai de réception d'une vague entre deux flotteurs peut révéler la direction d'une vague : "Bienvenu à bord !"

- [3/ Sinusoïde :](#s3_modulo) Ajout de réalisme au modèle, la vague devient une sinusoïde, c'est-à-dire un ensemble de vagues : "On s'amarine moussaillon ?"

- [4/ Imagerie :](#s4_image) Le caillou ponctuel devient continue.
Constitution d'image depuis plusieurs informations angulaires : "À l'abordage !"

- [5/ Onde radio : ](#s5_radio) Augmentation de la distance des flotteurs et transformation en antennes. "Cap vers les étoiles !"

- [Optionnel/ Nouvelles limitations:](#so_new_limit) Calcul des limitations anciennes et nouvelles. Détermination de la qualité maximale atteignable. "Marc Pageot ne navigue pas sur des cageots."

- [Conclusion: ](#s_conclusion) "C'est pas bientôt fini !"

- [Aller plus loin: ](#s_conclusion) "Quand y'en a plus, y'en a encore."


# 1/ <a name="s1_limit"></a> Limitations du télescope

<blockquote> Nosce te ipsum </blockquote>

On mesure la qualité d'une image astrophysique avec deux paramètres : sa [résolution angulaire](https://en.wikipedia.org/wiki/Dynamic_range#Photography) et sa [profondeur](https://fr.wikipedia.org/wiki/Liste_des_champs_profonds).


1. __La profondeur__ est le flux de la source la moins lumineuse que l'on peut détecter.<sup>[+]<div class="description">
Une grande profondeur permet de détecter des objets peu brillants. Par exemple, des objets lointains.
</div></sup>
2. __La résolution angulaire__ est le plus petit angle qu'un télescope peut résoudre.<sup>[+]<div class="description">
C'est-à-dire que deux objets séparés d'un angle inférieur à la résolution apparaîtront comme un seul.<br/>
Ou tout objet de taille inférieur à la résolution angulaire apparaîtra comme un point.<br/>
<b>Exemple :</b> un télescope optique de 1m de diamètre ($D$),
observant un signal de longueur d'onde $\lambda = 550nm$ (dans le jaune) a une résolution 
(comme on verra dans [section optionelle](#so_new_limit)) de
$\lambda / D$
$= 550nm / 1m$
$= 5.5 \times 10^7 radians$
$\left(= 0.00000055 radian\right)$
$= 5.5 \times 10^7 * 180 / \pi °$
$= 3.15 \times 10^{-5} °$
$= 3.15 \times 10^{-5} / 3600 ''$
= 0.1 seconde de degrés.<br/>
<b>Notez</b> que les atronomes ne comptent pas en radian [rad] ni en degré [°] qui sont des angles bien trop grands mais en seconde de degré [''] voir en milli seconde de degré [mas].
Ce sont des unitées telles qu'il y a autant de secondes (respectivement de milli seconde) de degré dans un degré que de (milli) seconde dans une heure soit 3600 (respectivement 3.600.000).<br/>
Une grande résolution angulaire permet d'observer des objets de petite taille angulaire. Par exemple, des objets lointains.
</div></sup>

-> Jusqu'à preuve du contraire, un télescope quelconque peut générer des images d'une résolution et profondeur arbitrairement grande à condition de :

1. Exposer suffisamment longtemps l'objet pour obtenir plus de lumière dans sa direction que le bruit du ciel et de l'appareil.
2. Utiliser un détecteur (Couple Charged Device) avec suffisamment de pixels par cm.<sup>[+]<div class="description">
Le nombre de pixels par centimètre peut être arbitrairement élevé avec des bancs optiques à l'intérieur du détecteur. Par exemple les nouveaux téléphones portables déclarent des détecteurs de 9Mpixels (= 3000x3000) et de 2mm tandis qu'un détecteur de télescope est de 1Mpixel (1000x1000) et mesure 3cm.
</div></sup>

<- Voici maintenant la preuve du contraire :

Pour ce qui est de la __profondeur__, un grand télescope est nécessaire.
En effet, bien qu'en sommant un grand nombre d'images du même endroit, nous pouvons obtenir une profondeur infinie, avant de pouvoir les sommer, il faut pouvoir les aligner convenablement et pour ceci, il faut ... des images suffisamment profondes et résolues.
En effet, si on ne voit rien sur les images comment sait-on vers où elles pointent.
Il nous faut donc un télescope suffisamment grand qui puisse absorber la lumière pour résoudre au moins deux étoiles de champs à chaque exposition.
Vous pourrez penser : "si la mécanique du télescope est suffisamment bonne, les images sont alignées par le pointage". Malheureusement, il n'est pas possible d'obtenir une position précise sans [viseur d'étoile](https://fr.wikipedia.org/wiki/Viseur_d%27%C3%A9toiles) qui lui-même nécessite de voir un étoile proche du champ d'observation.


<div>
Pour ce qui est de la <b>résolution angulaire</b>, la taille du télescope est limitante également.
Mais cette fois, ce n'est plus pour la simple raison de collecter un maximum de flux lumineux afin d'obtenir un signal sur bruit suffisant pour la détection.
C'est plus compliqué.
L'effet néfaste est la <a href="https://en.wikipedia.org/wiki/Diffraction#Mechanism">diffraction</a> que subie toute onde qui passe par une ouverture (voir la figure <a href="#f_fente"><i>"fente"</i></a>).<sup>[+]<div class="description">
Nous faisons l'expérience de la diffraction tous les jours lorsque nous entendons le son provenant d'une pièce voisine.
</div></sup>
Dans le cas d'une ouverture circulaire comme celle du miroir principale, l'image d'un point (d'une étoile<sup>[+]<div class="description">
Le diamètre angulaire des étoiles est bien plus petit que la résolution du meilleur télescope. Elles ont donc la même image qu'un point (infiniment petit). Ce n'est pas le cas des galaxies.
</div></sup>
) n'est plus un point mais s'étale selon la forme symétrique de la <a href="https://fr.wikipedia.org/wiki/Tache_d%27Airy">tache d'Airy</a>.
Cette tache est d'autant plus petite que l'ouverture du télescope est grande.
Vous devriez comprendre pourquoi à la fin de ce guide.<br/>
<!-- Trick for sup --> <ul></ul>
</div>

<hr>

<!-- Figure diffraction Right -->
<figure style="float: right; width:300px;" >
  <a name="f_fente"></a>
  <img style='width:100%' src='Figure/12_diffraction.svg' alt='missing' />
  <figcaption>
    <b>Fente :</b>
    Diffraction d'une onde traversant une porte.<br/>
    Le front d'onde, auparavant linéaire, se courbe comme si l'ouverture était l'émetteur.
  </figcaption>
</figure>


Ces deux raisons expliquent l'intérêt pour les grands télescopes.
Cependant il est économiquement difficile de construire de très grandes ouvertures de qualités, réflecteurs ou lentilles.
C'est pourquoi la [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture)
est utilisée pour simuler un télescope de grande ouverture avec plusieurs petits.

La synthèse d'ouverture est une technologie très liée à la radioastronomie car son emploi est aujourd'hui techniquement proche du miracle dans l'optique visible.
En effet, comme vous allez le voir, les détecteurs radios permettent de mesurer la lumière comme une onde, ce qui permet une reconstruction d'ouverture à posteriori.
Par la suite, les détecteurs (antennes) seront modélisés par des flotteurs dans l'eau et leur position est mesurable. En optique visible, cette position n'est pas mesurable, on peut juste savoir si le flotteur bouge. En termes techniques, on dit que les antennes radios (ou millimétriques) mesurent simultanément la phase et l'amplitude du signal électromagnétique.


# 2/ <a name="s2_dirac"></a> Délai d'un choc

<blockquote> Verba docent, exempla trahunt </blockquote>

Supposons qu'une pierre soit lancée dans un lac calme.
Une vague va se propager en cercles concentriques autour de cette pierre.
Nous disposons de deux flotteurs pour mesurer la position de la source de la vague, c'est-à-dire l'endroit où la pierre est tombée.
Comme en astrophysique, nous voulons mesurer sa position angulaire et non sa distance que nous supposerons infinie.

Supposons, pour commencer, qu'il n'y a qu'une vague générée par cette pierre.
Alors, si la pierre a été lancée à droite, comme sur la figure
<a href="#f_carte"><i>"carte du lac"</i></a>,
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
    <b>Carte du lac :</b>
    Vague créée par un caillou jeté dans l'eau et reçue par deux flotteurs au premier plan. La vague va soulever le flotteur de droite puis le flotteur de gauche.<br/>
    Le caillou a été lancé à une position angulaire de $\theta$, et se situe à une distance infinie, c'est pourquoi le front d'onde arrive en forme de ligne sur le flotteur à l'image d'une majestueuse vague de houle en haute mer et non d'un misérable ricochet de lavoir.<br/>
    Note: Infinie signifie simplement : "beaucoup plus grand que la distance entre les deux flotteurs".
  </figcaption>
</figure>

En employant une formule magique ("trigonometrum s'il te plum") dans le triangle ABC (figure
<a href="#f_trigo"><i>"trigonométrie"</i></a>
), on obtient :

$$sin(\theta) = \frac{oppose}{hypothenuse} = \frac{a}{b}$$

<!-- Figure diffraction -->
<figure style="float: left; min-width:40%; width:300px" >
  <a name="f_trigo"></a>
  <img style="width:100%" src='Figure/22_float_triangle.svg' alt='missing' />
  <figcaption style="text-align:center">
    <b>Trigonométrie</b>
  </figcaption>
</figure>

Avec :

* $b$ : une distance connue : la distance entre les deux flotteurs (b pour [ligne de Base](https://en.wikipedia.org/wiki/Astronomical_interferometer)).
* $a$ : la distance supplémentaire que la vague a dû parcourir (a pour À remplacer).


Remplaçons-le ! On connait à priori la vitesse de la vague $v$ et on mesure le temps de délai $\Delta t$ que la vague a pris pour atteindre le deuxième flotteur

La formule $vitesse = \frac{distance}{temps} \Leftrightarrow distance = vistesse \times temps$ nous donne $a = v \times \Delta t$.
En inversant la formule trigonométrique et replaçant $a$, on a :

$$
\begin{aligned}
\theta &= arcsin\left(\frac{v\times\Delta t}{b}\right) \\
       & = arcsin\left( \frac{Vitesse\_de\_la\_vague \times Delai\_temporel\_mesure}{Distance\_de\_la\_base} \right) \\
\end{aligned}
$$

On a $\theta$ et ... c'est ce qu'on cherchait : la position angulaire de la pierre !

Par exemple:

- Si la vitesse de la vague est de 1m/s, la distance entre les deux flotteurs est de 2m et le temps mesuré est de 2 seconde, c'est que $\theta = 90°$. C'est-à-dire que la vague vient de l'extrême droite (à ne pas citer hors contexte).
- Si le temps mesuré est de 1 seconde, la vague viens d'un angle
$\theta$
$= arcsin\left(\frac{1 \times 1}{2}\right) = arcsin\left(1/2\right)$
$= 30°$ (en effet : $sin(30°) = 1/2$). C'est la situation représentée dans la
<a href="#f_carte"><i>"carte des mers"</i></a>
.


# 3/ <a name="s3_modulo"></a> Délai d'une onde

<blockquote> Fluctuat nec mergitur </blockquote>


La section précédente nous a donné $\theta$ : la position (angulaire) de l'objectif.
C'est donc mission accomplie pour la section 2 !

Le problème est que les objectifs astrophysiques, ne s'allument pas d'un seul coup mais émettent de manière continue.
Il n'y a donc pas de front d'onde (ou vague) de référence.
L'altitude de chaque flotteur variera au gré de la vague et suivra une sinusoïde plus ou moins synchronisée avec l'autre flotteur.
Ce degrés de synchronisme est appelé [corrélation](https://kids.alma.cl/como-estan-conectadas-las-antenas-de-alma/).

<div>
On ne peut plus mesurer $\Delta t$ mais $\Delta t$ modulo $\frac{1}{\nu}$ où $\nu$ est la fréquence de l'onde et donc son inverse, $\frac{1}{\nu}$, est le temp qui sépare deux vagues.<sup>[+]<div class="description">
On ne peut plus savoir sur quelle vague est chaque flotteur mais à quelle position de la vague : en haut, en descente ...
(voir figure <a href="#f_altitude"><i>"altitude"</i></a>)<br/>
Remarquez que ce manque d'information est drastique.
En effet, avec une ligne de base de 16km et des ondes de 1mm, on peut avoir un doute entre $\frac{16km \times \pi}{1mm} = 50M$ (50 millions) de valeurs possibles de $\theta$ pour une source ponctuelle. Pour 10 sources, ce serai $(50M)^{10} = 9\times10^{76}$. 
</div></sup></div>

<!-- Figure Multiple direction in -->
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
    Mais il est impossible de savoir que A est sur la même vague que B et que C est sur une autre
    par la seule mesure de la position verticale des bouchons puisque toutes les vagues sont parfaitement identiques.
  </figcaption>
</figure>

* Par exemple, supposons que la longueur d'onde est de $\lambda = 10cm = 0.1m$.
* Rappelant la valeur précédente : la vitesse: $v= 1m/s$ donc le temps qui sépare deux maximums est donc de \frac{1}{\nu} = 0.1s.<sup>[+]<div class="description">
Utilisant : $v$ $= \frac{distance}{temps}$ $= \lambda\nu$
</div></sup></div>
Rappelons ausi que la ligne de base : $b = 2m$.

<!-- Figure Multiple direction in -->
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
<a href="#f_cas1"><i>cas 1</i></a>,
une vague venant de $\theta=53°$ (bien à droite) alors elle devra parcourir
$b \times sin(\theta)=2\times sin(53°) = 1.6m$ de plus pour arriver au bouchon de gauche. 1.6m étant multiple de 0.1m, le bouchon de gauche sera en retard de 16 vagues sur celui de droite mais "en phase" (i.e. à la même altitude à tout moment)
* Imaginons maintenant,
<a href="#f_cas2"><i>cas 2</i></a>,
une vague venant de $\theta = 30°$ (centre-droite). Alors elle devra parcourir $a$
$= b \times sin(\theta)$
$= 2 \times sin(30°)$
$= \frac{1}{2} * 2$
$= 1m$. 1m étant aussi multiple de 10cm, les deux bouchons seront aussi en phase.
* En mesurant l'altitude des deux bouchons, nous ne pourrons pas discriminer le cas 1 du cas 2.
* Quelques valeurs possibles de $\theta$ pour deux bouchons en phase sont dans la figure
<a href="#f_possible"><i>"angles possibles"</i></a>
.



* [Keck](https://fr.wikipedia.org/wiki/Observatoire_W._M._Keck) c'est ti qu'on fait pour savoir si le caillou a été jeté à 53° (cas 1) ou a 30° (cas 2) ?

* Rajoutons un bouchon : "Z". Par exemple, à 0.5m à gauche du bouchon de référence, celui de droite : "X", et donc a 1.5m à droite de celui de gauche : "Y". Comme sur la figure
<a href="#f_reseau"><i>"réseau"</i></a>.
Ce bouchon nous apportera une information cruciale permettant de dinstinguer le cas 1 du cas 2.

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
<figure style="float: left;
    width:450px; margin:0;
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
    height:60px;
  ">
    <b>Cas 1 : $\theta = 53°$ :</b>
    X, Y, Z en phase.
  </figcaption>
</figure>
<!-- Right -->
<figure style="float: right;
    width:450px; margin:0;
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
    height:60px;
  ">
    <b>Cas 2 : $\theta = 30°$ :</b>
    Z en opposition de phase.
  </figcaption>
</figure>
</div>
<div style="display: block; clear: both;"></div>


* Mais si $\theta = 30°$, le bouchon Z recevra le front d'onde $0.5 \times cos(30°) = 0.25m = 20cm + 5cm$ plus loin. Ce bouchon aura 2 vagues et demi de retard.
Encore une fois, on ne peut pas mesurer les "2 vagues" mais on peut mesurer le "et demi" car Z sera en opposition de phase (déphasé de $\pi$) avec X : quand X sera au sommet de la vague, il sera en bas.
En sommant les altitudes de X et de Z, en tout temps, on obtient zéro. Cette somme est une [interférence](https://fr.wikipedia.org/wiki/Interf%C3%A9rence) artificielle, ici destructive.<sup>[+]<div class="description">
Dans la pratique, on effectue 1/ une projection dans l'espace complexe; 2/ une multiplication puis 3/ une intégration pour mesurer le 
[degré de cohérence](https://en.wikipedia.org/wiki/Degree_of_coherence) puis appliquer le [théorème de Van Cittert–Zernike](https://en.wikipedia.org/wiki/Van_Cittert%E2%80%93Zernike_theorem#Aperture_synthesis).
</div></sup>

<div>
Au fina, ajouter une ligne de base nous a permis de restreindre le champ des possibilités sur la position du caillou, d'un facteur 2. Ce qui est le maximum qu'une information de plus peut nous apporter.
De plus, ajouter un bouchon, dans ce cas nous a ajouté 2 lignes de base : celle de 0.5m __et__ celle de 1.5m.
Ce qui nous a donné 2 informations de corrélations supplémentaires.
Par exemple si la section 2 hésitait entre 100 choix possibles la ligne de 0.5m en élimine la moitié : il en reste alors 50. De la même manière la deuxième ligne en élimine aussi une moitié, il en reste 25.<sup>[+]<div class="description">
Nous supposons ici que chaque ligne est indépendante, ce qui est le cas si leurs tailles sont différentes.<br/>
Imaginez comment les techniciens d'ALMA s'amusent pour placer 66 antennes de manière à avoir 2145 lignes de base de taille différente ! Et en couvrant homogénement l'ensemble des tailles de base possible (généralement en coordonnées circulaires).
</div></sup>
</div>


Chaque ligne permet de discriminer un rang d'angle différent.
En termes plus génériques, elle donne une information, comme un pixel dans une image.
Supposez que l'on puisse faire tourner la ligne des flotteurs, alors $\theta$ changerai et chaque ligne nous apporterai des informations nouvelles (plus de pixels).
Le plus simple pour effectuer cette rotation avec un réseau d'antennes et une source extraterrestre est de faire tourner la planète.
Et puisqu'elle tourne déjà, il suffit d'attendre.


# 4/ <a name="s4_image"></a>Délai de plusieurs objets : reconstruction d'image

<blockquote> Divide ut reges </blockquote>

La section 3 a également rempli son objectif de déterminer la position d'un caillou ponctuel émettant une série de vagues indifférentiables.
Félicitation au lecteur qui est arrivé jusqu'ici : il peut en effet désormais localiser précisément l'angle avec lequel a été jeté un caillou ponctuel avec quelques bouchons.

- [4.1:](#s41_triangulation) Afin que le lecteur comprenne la puissance de cette technique nous allons rapidement énoncer sa précision et ce qui la différencie de la triangulation.

- [4.2:](#s42_forme) Puis nous verrons comment un caillou non ponctuel peut être considéré comme plusieurs cailloux ponctuels côte à côte.

- [4.3:](#s43_image) Ce qui nous permettra de reconstruire la forme d'un caillou à partir des déplacements détectés.

- [4.4:](#s44_spectre) Enfin nous aborderons l'importance des filtres et la mesure de la taille des vagues.<sup>[+]<div class="description">
Ou mesure spectrale pour les ondes radios. En français la couleur.
</div></sup>


## 4.1/ <a name="s41_triangulation"></a> Précision réelle

La vulgarisation, fréquemment, compare l'interférométrie avec la [triangulation](https://fr.wikipedia.org/wiki/Triangulation).
En effet, dans les deux cas, la corrélation entre deux détecteurs : respectivement télescope et oeil, permet d'obtenir une information nouvelle.

<div class="border-aqua">
<b>La Triangulation :</b>
permet de [percevoir la profondeur](https://fr.wikipedia.org/wiki/Perception_de_la_profondeur). Elle suppose que chaque oeil connaisse son orientation. La combinaison des deux yeux par une formule trigonométrique donne la profondeur. En résumé:
<ul><li>
Distance entre les deux yeux &nbsp;&nbsp;&&nbsp;&nbsp; angle oeil droit &nbsp;&nbsp;&&nbsp;&nbsp; angle oeil gauche &nbsp;&nbsp;->&nbsp;&nbsp; distance de l'objet.
</li></ul>
</div>


<div class="border-aqua">
<b>L'Interférométrie :</b>
permet de connaitre l'angle de l'émetteur. Elle suppose que chaque détecteur puisse mesurer l'intensité et la phase de l'onde incidente. C'est-à-dire la taille des vagues __et__ l'altitude du flotteur.
Au contraire, dans la triangulation, il n'est jamais question de la nature ondulatoire des raies. Par ailleurs: 1/ l'oeil humain est incapable de mesurer la phase de la lumière incidente et 2/ les capteurs interférométriques<sup>[+]<div class="description">
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
Distance entre les capteurs &nbsp;&nbsp;&&nbsp;&nbsp; phase capteur droit &nbsp;&nbsp;&&nbsp;&nbsp;  phase capteur gauche &nbsp;&nbsp;->&nbsp;&nbsp; angle de l'objet.
</li></ul>
</div>


<div>
En les rapprochant, la vulgarisation fait une analogie facilement compréhensible mais incorrecte.
De plus, la distance des astres lointains par triangulation est impossible.<sup>[+]<div class="description">
La distance des astres est bien plus grande que celle des capteurs et ces derniers les voient à une distance infinie.<br/>
Pour mesurer la distance  des astres (étoiles, supernovaes, galaxies), les physiciens font appel à une compréhension fine de ces derniers, respectivement : luminosité, décroissance lumineuse et fréquences d'oscilations connues décalés par l'expansion de l'univers.
</div></sup>
Maintenant que vous savez que ces mécanismes sont différents, vient, à mon avis, une question légitime : <b>quel est l'avantage de l'interférométrie ?</b><sup>[+]<div class="description">
L'oeil humain est d'une technologie remarquable : petit, léger, résistant, rapide, peu gourmand en énergie, déjà branché (au cerveau), doté d'une grande gamme dynamique, d'un grand champ de vision et d'une acceptable résolution angulaire et profondeur.<br/>
Alors pourquoi construisons nous des observatoires artificiels ? On sent que la réponse réside dans la résolution angulaire et la profondeur.
</div></sup>
</div>

<b>Réponse : la précision de la mesure angulaire.</b>
Nous avons, dans l'exemple précédent, séparer deux bouchons de 2m pour mesurer l'orientation d'une vague de 10cm de longueur d'onde. En effet, c'était plus facile à dessiner.
En réalité, les antennes d'ALMA sont séparées de 16km et mesurent l'angle d'incidence d'une onde de 1mm. En gardant notre exemple avec nos vagues et nos flotteurs, c'est comme si on séparait les flotteurs de
$16km \times \frac{10cm}{1mm}$
$= 1600 km$. À cette distance, les flotteurs peuvent mesurer la différence entre une vague venant de $\theta=0$ et une vague venant de
$\theta$
$= arcsin\left(\frac{10cm}{1600km}\right)$
$= 0.0000036°$,
deuxième angle où les deux flotteurs se retrouveront de nouveau en phase.

<div style="min-width:300px; width:50%; margin:10px;">
placeholder-rayleight
</div>

Nous avons utilisé le [critère de Rayleight](http://ressources.univ-lemans.fr/AccesLibre/UM/Pedago/physique/02/optiondu/rayleigh.html) qui stipule qu'on ne peut distinguer deux taches de diffraction qu'après la distance où le maximum de l'une correspond au premier minimum de l'autre.

La résolution d'ALMA est donc de 0.0000036° ou <span class='box'>10 mas</span> : 10 milli-arc-seconde de degrés. Ce qui est très précis et permet de synthétiser des images avec un grand détail en suivant la méthode que nous décrirons prochainement à la <a href="#s43_image">section 4.3</a>.

<div style="clear:both"></div>

## 4.2/ <a name="s42_forme"></a> D'un point à une forme

Supposons que le caillou ne soit pas ponctuel mais d'une certaine taille.
Alors, les vagues engendrées seront différentes. Par exemple, elles ne seront pas parfaitement sphériques à l'origine. Mais surtout elles n'arriveront pas avec un angle d'incidence unique, un front d'onde droit, c'est-à-dire qu'elles ne seront pas linéaires.
C'est comme, par exemple, ces doubles vagues qu'aiment les surfeurs débutants où s'ajoute, à la vague principale, une petite vague oblique qui permet de se lever plus tôt. Ou ces vagues qu'on voit de loin qui épousent la forme d'une baie. Bref, des vagues où le front d'onde, la ligne que dessine le haut de chaque vague, n'est pas une ligne.


On sait déjà déterminer la position angulaire d'un point ([section 3](s3_modulo)). Alors si plusieurs points émettent des ondes, ces différentes ondes se propageront indépendamment dans le milieu (voir [principe de superposition](https://fr.wikipedia.org/wiki/Principe_de_superposition)).
Les détecteurs recevront donc la somme de chaque onde. C'est-à-dire la somme des altitudes qu'ils auraient reçu pour chaque point.

En d'autre termes, on peut prédire précisément, avec une somme, ce que les récepteurs mesureront en fonctions de la positions des différentes sources ponctuelles. Réciproquement, on peut déterminer la position de chacune des sources en fonction des niveaux mesurés moyennant le manque d'information en réception.

<div>
Ce manque d'information est dû au fait qu'il n'y a pas de flotteurs partout sur la ligne de mesure. L'équation mathématique est complexe. Le lecteur peut le prédire des mots : manque d'information, mesure réciproque (alias inverse) sans parler de l'erreur de mesure.
Mais heureusement pour le physicien ou l'amateur qui bien souvent sont les mêmes, il existe une règle<sup>[+]<div class="description">
J'apprécie les règles : une fois notés leur champ d'application et leurs effets, qui souvent consistent à restreindre le champ des possibles, elles facilitent le processus cognitif. Voir par exemple ma liste des <a href=https://tinmarino.github.io/?show=cosmo_obs_cheat>10 cosmondements</a>. Où ici même quelques exemples qui sont presque des définitions :
<ul>
<li>La matière ne traverse pas la matière.
<li>Le temps s'écoule du passé vers le futur.</li>
<li>Plus y'a de pression, plus ça part vite.</li>
<li>Deux espaces parrallèles n'entrent jamais en contact.</li>
</ul>
Beaucoup de médias revendiquent une nouvelle découverte qui enfreint un de ces règles.
Simplement ils mentent : si mon marteau la traverse, ce n'est pas de la matière; si ça voyage du futur vers le passé, ce n'est pas réel; si le flux est plus lent lorsque je l'augmente, ce n'est pas de la pression; enfin si on perçoit un espace, c'est qu'il n'est pas parallèle au nôtre.
</div></sup>
en théorie de l'information : <b>on ne peut mesurer au maximum autant de valeurs que l'on a de données</b> (voir [Entropie de Shanon](https://fr.wikipedia.org/wiki/Entropie_de_Shannon)). Ça veut dire qu'on peut s'épargner les calculs et considérer qu'on peut mesurer autant d'angles d'incidences de sources ponctuelles (vagues) que l'on a de paire indépendante de détecteurs (flotteurs).
<!-- Trick for sup --> <ul></ul>
</div>

<div>
Comme nous pouvons mesurer l'angle de plusieurs sources ponctuelles, nous divisons la forme de la source en plusieurs sous-sources ponctuelles et puis interpolons pour trouver la forme continue de la source originale.<sup>[+]<div class="description">
Il existe plusieurs algorithmes d'interpolation et [déconvolution](https://en.wikipedia.org/wiki/Deconvolution) utilisables à cette fin :
[CLEAN](https://en.wikipedia.org/wiki/CLEAN_(algorithm)), [Maximum Entropy Method](http://repositorio.uchile.cl/handle/2250/149958), Hybrid.<br/>
Ces algorithmes diffèrent dans les hypothèses qu'ils font sur l'émetteur. Ils sont itératifs et paramétrables.</br>
Voir la page des [radioastronomes Français](http://www.iram.fr/IRAMFR/GILDAS/doc/html/map-html/node35.html) pour un petit descriptif sympa.
</div></sup>
</div>

En résumé : nous allons d'un point à un forme en passant par plusieurs points. Le terme technique de cette approche est "Discrétisation".


## 4.3/ <a name="s43_image"></a> Reconstruction d'image

De cette manière, avec plusieurs lignes de base, il est possible de détecter simultanément des vagues provenant de différents endroits.
La compréhension des détails de ce processus implique une vision performante des sommes de sinusoïdes que procure la [transformation de Fourier](https://fr.wikipedia.org/wiki/Transformation_de_Fourier) ou les [ondelettes](https://fr.wikipedia.org/wiki/Ondelette) et fera peut-être l'objet d'un chapitre 2.

Pour les impatients, n'oubliez pas le [principe de retour inverse de la lumière](https://fr.wikipedia.org/wiki/Principe_de_Fermat#Principe_du_retour_inverse_de_la_lumi%C3%A8re)
qui permet de faire l'expérience de pensée d'inversion de l'émetteur et du récepteur et garantit que le parcours de la lumière sera le même.
Il "suffit" donc de propager ce que l'on reçoit comme des vagues, comme si on agitait les bouchons artificiellement dans une eau calme. Et l'onde, la vague, que l'on verra à l'infini sera ... la source !

Si vous avez fait cette expérience de pensée, vous venez de reconstruire l'image. Ou la transformée de Fourier de la distribution d'intensité des paires de récepteurs pour sortir les gros mots. En tout cas beau travail !


## 4.4/ <a name="s44_spectre"></a> Avec plusieurs longueurs d'ondes

Non là sérieux, ça devient compliqué : il y a plus de paramètres à déterminer (positions, longueurs d'ondes) que de paramètres mesurables. Sans information à priori, c'est impossible car absurde (voir [parcimonie](https://fr.wikipedia.org/wiki/Parcimonie) puis [entropie de Shannon](https://fr.wikipedia.org/wiki/Entropie_de_Shannon)).

<blockquote> Pluralitas non est ponenda sine necessitate </blockquote>

La solution la plus simple dans ce cas, le cas réel, est de limiter physiquement :

1. Le champ de vision avec des digues qui bloquent les vagues ne venant pas de la direction d'observation. En effet, elles contamineraient la mesure.
2. Les fréquences mesurées avec des filtres étroits.<sup>[+]<div class="description">
L'épaisseur de filtre $\Delta\lambda$ est très inférieur à $\lambda$, la longueur d'onde centrale du filtre.</br>
Par exemple, pour nos flotteurs sous des vagues de fréquence $0.1s$, on limiterait la vitesse d'oscillation des flotteurs à $0.1s \pm petit \times 0.1s$. Disons $0.1s\pm0.00001s$<br/>
</div></sup>
En contraignant la vitesse d'oscillation des bouchons, les vagues plus rapides ou plus lentes seront ignorées.

Cette réduction du périmètre d'analyse est d'ailleurs effectuée par les télescopes indépendants pour réduire le bruit et le coût des mesures.
En ouverture synthétique, cette réduction ajoute l'avantage de diminuer le manque d'information. Ce qui concrètement réduit le bruit systématique de la mesure (alias le [biais](https://fr.wikipedia.org/wiki/Biais_(statistique))).



# 5/ <a name="s5_radio"></a> Des vagues aux ondes radios

<blockquote> Per aspera ad astra </blockquote>

Le concept mathématique utilisé par un télescope à synthèse d'ouverture est identique à celui du détecteur utilisant des flotteurs.

## 5.1/ <a name="s51_correspond"></a> Correspondances

Pour enrichir le vocabulaire du lecteur voici l'analogie:


| Présente explication | [ALMA](https://fr.wikipedia.org/wiki/Grand_r%C3%A9seau_d%27antennes_millim%C3%A9trique/submillim%C3%A9trique_de_l%27Atacama) |
| ---                  | --- |
| Vague                | Onde Électromagnétique |
| Caillou              | Astre |
| Bouchon              | Antenne |
| Position             | Accélération d'électron |

J'ai l'espoir d'avoir démontré au lecteur que, comme moi-même, il ignore beaucoup sur la nature des vagues de surface eau-air. Pourtant, grosso modo, il sait de quoi il s'agit.
De même, il est intéressant d'appréhender la notion d’onde électromagnétique (alias : lumière, photon).

Quelle est la différence entre le caillou et le bouchon ? (Réfléchir ... réponse : ) Le premier émet des vagues en se déplaçant verticalement dans l'eau et le second se déplace verticalement sur l'eau lorsqu'il reçoit des vagues. De plus, si j'agitais artificiellement le bouchon, il émettrait des vagues. Donc la différence n'est pas dans leur nature mais dans leur comportement.

L'accélération d'une charge électrique, typiquement un électron, engendre l'émission d'un [photon](https://fr.wikipedia.org/wiki/Photon) et réciproquement la réception d'un photon engendre l'accélération d'un électron.<br/>
En agitant artificiellement un électron dans une antenne, par exemple avec un aimant, on peut transmettre un signal photonique à une antenne voisine
au sein de laquelle, le photon fera accélérer un électron, mesurable par exemple avec un aimant.<br/>
Le photon est le [porteur de la force](https://en.wikipedia.org/wiki/Force_carrier) [électromagnétique](https://fr.wikipedia.org/wiki/%C3%89lectromagn%C3%A9tisme).

La lumière, colonie de photons figés dans le temps et fonçant dans l'espace, est très intéressante autant pour la recherche que l'enseignement scientifique. Ce qui, en soi, est naturel car c'est la seule chose que l'on voit. Sachez tout de même qu'un géologue aurait la même rhétorique pour le son.

## 5.2/ <a name="s52_antenna_vs_telescope"></a> Antenne > Télescope

Ce document vous a expliqué, je l'espère, la synthèse d'ouverture, technique utilisée principalement par les réseaux d'antennes.
Dans cette optique, je me permets de vous expliquer pourquoi les antennes (réflecteur + [oscilloscope](https://fr.wikipedia.org/wiki/Oscilloscope)) sont supérieures aux télescopes (miroir + [CCD](https://fr.wikipedia.org/wiki/Capteur_photographique_CCD) ou [bolomètre](https://fr.wikipedia.org/wiki/Bolom%C3%A8tre)). La réponse réside dans le traitement de signal électrique par rapport à l'optique.


L'oscilloscope a la capacité de mesurer simultanément phase et amplitude alors que la CCD ou le bolomètre ne mesure que l'intensité (amplitude au carré).
Cette capacité permet au réseau d'antennes d'enregistrer toutes ses mesures afin que les machines fassent, à postériori, le traitement du signal.
Ainsi, la corrélation est effectuée, au calme, avec des ordinateurs. Alors que dans l'optique, la corrélation doit être faite en temps réel, avec un banc optique vulnérable à la moindre oscillation, au milieu des machines à 3500m d'altitude, dans un pays sismique. Chaque acquisition du VLTI (optique) est une aventure humaine. Les acquisitions d'ALMA (radio) commence à ressembler à une croisière (sauf pour les ordinateurs qui virtualisent tout le banc optique).<br/>
De plus, un signal électrique peut être multiplié avec beaucoup moins de bruit qu'un signal optique. Ceci facilite la synthèse d'ouverture avec plus de deux antennes. Par exemple ALMA en a 66 alors que le VLTI n'en a que ... 2.

## 5.3/ <a name="s53_cost"></a> Coût de calcul

Le coût de calcul du pipeline de traitement d'image est largement dominé par le corrélateur, comme vous allez vite le comprendre.
Notez que les calculs sont approximatifs (à un facteur 10 voir 1000 prés).

### Corrélateur

* __Lignes de base :__ ALMA a 66 antennes donc $\frac{66 \times 65}{2} = 2145$ paires (en pratique [1291](https://public.nrao.edu/telescopes/alma/)).

* __Échantillonnage :__ L'observatoire mesure une onde de 1mm donc de fréquence 300GHz.
D'après le [théorème d'échantillonnage](https://fr.wikipedia.org/wiki/Th%C3%A9or%C3%A8me_d%27%C3%A9chantillonnage),
il faut échantillonner à une fréquence supérieure au double de la fréquence donc de 600GHz.

* __Opération élémentaire :__ Pour chaque échantillon temporel de l'onde, il faut faire une multiplication complexe, c'est-à-dire 4 multiplications réelles.

Supposons que le processeur (FPGA) a une fréquence d'horloge de 1GHz, et fasse une multiplication en 2 temps d'horloges. Alors le nombre de processeurs :

$$ N_{CPU} = 2145 \times \frac{600 [GHz]}{1 [GHz]} \times 4 \times 2  = 102 \: millions$$

Le corrélateur d'ALMA a 130 millions de processeurs FPGA : c'est une grosse machine !

### Calibration

À faire toutes les minutes au maximum.
Une unique opération qui, depuis une image corrélée donne le gain associé à chaque antenne.
Quelques processeurs devraient suffirent.

### Réducteur d'image

Ceci n'est fait qu'une fois pour toutes les acquisitions corrélées et calibrées du même endroit du ciel.
Cette opération n'est pas critique et peut être faite au calme, 40 jours après l'acquisition.
C'est un algorithme récursif qui fera 1000 transformées de Fourier d'une image de, disons $1.000 \times 1.000$ = 1M pixels (soyons naïf).

La transformée de Fourier a un coût de $N \times log(N)$ où N est le nombre de pixels (voir [transformation de Fourier rapide](https://fr.wikipedia.org/wiki/Transformation_de_Fourier_rapide)).
Si chaque opération prend 8 cycles d'horloges comme à l'exemple précédent, le nombre de temps d'horloge est donc : 

$$ N_{tick} = 1k \times 1M \times log(1M) \times 8 = 110G$$

Soit 110 milliards. Un processeur a un 1GHz effectuera cette réduction en 110 secondes.
Pour une qualité supérieure, plus d'itérations peuvent être effectuée en série.

<hr>

Pour résumé cette section : comme on pouvait s'y attendre, un réseau d'antennes réel est plus précis mais plus cher qu'un réseau de flotteurs.


# Optionnel/ <a name="so_new_limit"></a> Limitations du réseau d'antennes

<blockquote> Dura lex, sed lex </blockquote>



<!-- Tache de young -->
<div style="clear: both; margin:0; display:flex">
<!-- Left -->
<figure style="float: left;
    width:450px; margin:0;
    margin-top:auto;
    align-self: flex-end;
    " >
  <a name="f_fente2"></a>
  <img src='Figure/51_slit_two.svg' alt='missing' style="
    width:90%;
    "/>
  <figcaption style="
    text-align:center;
    width:90%;
  ">
    <b>Deux Fentes</b>
  </figcaption>
</figure>

<!-- Right -->
<figure style="float: right;
    width:450px; margin:0;
    margin-top:auto;
    align-self: flex-end;
    " >
  <a name="f_fente1"></a>
  <img src='Figure/52_slit_one.svg' alt='missing' style="
    width:90%;
    "/>
  <figcaption style="
    text-align:center;
    width:90%;
  ">
    <b>Une Fente</b>
  </figcaption>
</figure>
</div>


<div style="display: block; clear: both;"></div>

<!-- Discretisation Right -->
<figure style="float: right; width:300px;" >
  <a name="f_fente"></a>
  <img style='width:100%' src='Figure/54_parabola.svg' alt='missing' />
  <figcaption>
    <b>Interpolation de parabole :</b>
    En combinant le signal des trois antennes, on simule une parabole trouée.
  </figcaption>
</figure>

Les deux figures ci dessus représentent l'expérience des [fentes de Young](https://fr.wikipedia.org/wiki/Fentes_de_Young).
On peut calculer que le lobe principal est deux fois plus petit pour une figure de diffraction avec deux ouvertures séparées d'une distance "d" (voir figure <a href="#f_fente2">deux fentes</a>) que pour une figure de diffraction d'une ouverture de taille "d" (voir figure <a href="#f_fente1">une fente</a>).
La résolution est donc deux fois supérieure pour les petites fentes séparées.
Par contre, les lobes secondaires sont plus intenses et donc le bruit est supérieur.<br/>
__À retenir :__ dans les deux cas, la résolution angulaire est d'environ
<span class='box'>$\lambda / D$</span> radians. Où D est la taille maximale de l'ouverture (potentiellement trouée) et $\lambda$, pour changer, la longeur d'onde.

<div>
Le sujet de la forme parfaite d'une parabole (i.e. faut-il la trouer ?) fait l'objet de recherches.<sup>[+]<div class="description">
* [Canales 2006](https://spie.org/news/0452-improving-resolution-in-large-telescopes) : Improving resolution in large telescopes : Comparaison d'un masque annulaire et un masque supergaussien.
* [Proposition pour un télescope spatial](https://spie.org/news/0452-improving-resolution-in-large-telescopes) : High-Resolution Imaging using Large Sparse-Aperture Telescopes
</div></sup>
</div>


<hr>

Voici quelques liens pour comprendre la mécanique physique du parcours de la lumière et qui justifient l'analyse précédente.

1. Propagations de la lumière, formalisme sur les ondes : ça avance en oscillant, tournant dans le plan complexe : [équation de Helmoth](https://en.wikipedia.org/wiki/Helmholtz_equation).
2. Le spectre angulaire est la transformée de Fourier de la forme de l'émetteur : [ondes planes](https://fr.wikipedia.org/wiki/Spectre_d%27ondes_planes)).
3. Une onde se comporte comme si tout point agité se comportait comme un émetteur secondaire : [principe de Huygens-Fresnel](https://fr.wikipedia.org/wiki/Principe_de_Huygens-Fresnel).
4. Une onde traversant une ouverture va se disperser : [théorie de la diffraction](https://fr.wikipedia.org/wiki/Th%C3%A9orie_de_la_diffraction).
5. Figure de diffraction loin de l'ouverture : [diffraction de Fraunhoffer](https://fr.wikipedia.org/wiki/Diffraction_de_Fraunhofer).
6. On ne peut pas voir d'objet plus petit que la longueur d'onde : [diffraction de Fresnel](https://fr.wikipedia.org/wiki/Diffraction_de_Fresnel). Mais ça, ce n'est pas pour nous !



# <a name="s_conclusion"></a> Conclusion

<blockquote> Quid novi </blockquote>

La section 5 montre qu'il est possible de détecter l'agitation électronique extraterrestre via une autre induite sur terre. La section 1 donne les limitations. Enfin, les autres sections expliquent comment la corrélation de plusieurs récepteurs distants peut pousser la limite à celle d'un télescope de la taille de leur séparation.

Maintenant le lecteur devrait avoir compris :

* L'origine de la [limitation des télescopes](#s1_limit).
* [Comment](#s3_modulo) déterminer la position angulaire d'une source via la corrélation entre deux récepteurs.
* La [différence entre interférométrie et triangulation](#s41_triangulation).
* Pourquoi plus de deux récepteurs sont nécessaires pour [former une image](#s43_image).
* Pourquoi le corrélateur a une importante [charge de calcul](#s53_cost).
* Pourquoi la synthèse d'ouverture est plus facile à effectuer avec des [antennes qu'avec des télescopes](#s52_antenna_vs_telescope).

Ce guide pratique est terminé.
J'espère que tu l'as lu lentement sans quoi la compréhension a due être laborieuse.
Quoi qu'il en soit, merci pour la lecture et félicitation pour l'effort.
Si tu as appris quelque chose de nouveau, c'est une petite victoire.
Puisses-tu la célébrer pour, demain, te réveiller avec plus d'enthousiasme qu'hier.


# Liens pour aller plus loin

<blockquote> Sic itur ad astra </blockquote>

* [Radioastronomie (présentations)](https://web.njit.edu/~gary/728/).

### Corrélation

* [20 lignes](https://astronomy.swin.edu.au/cosmos/C/Correlator).

* [20 planches](https://web.njit.edu/~gary/728/Lecture7.html).

* [20 présentations](http://www.aoc.nrao.edu/events/synthesis/2004/presentations.html).

### Électromagnétisme et imagerie

* [Électrodynamique quantique](http://www.johnboccio.com/courses/QESMS_2017/QED.pdf) : QED par Richard Feynman, principe de Huygens-Fresnel (1678) exploité par Feynman (1992) dans la théorie quantique des champs. Explication sans Mathématiques pour tous.

* [Synthèse d'ouverture par Caltech](http://web.ipac.caltech.edu/staff/fmasci/home/astro_refs/InverseImageProblem.pdf) : juste Caltechniquement parfait.

* [Échantillonnage parfait](https://svi.nl/IdealSampling) : jolie explication du taux de Nyquist.

* [Systèmes optiques limités par la diffraction](https://fr.wikipedia.org/wiki/Fonction_de_transfert_optique#Syst%C3%A8me_optique_limit%C3%A9_par_la_diffraction) : par wikipédia avec amour.

* [Visibilité et tache d'Airy](https://web.njit.edu/~gary/728/Lecture6.htm)

* [Processus d'émissions en Astrophysique (livre, pdf)](http://www.bartol.udel.edu/~owocki/phys633/RadProc-RybLightman.pdf) : un fondamental scholaire.

* [Guide interactif de la Transformation de Fourier](https://betterexplained.com/articles/an-interactive-guide-to-the-fourier-transform/)

* [ESO spectroscopie (pdf)](https://www.eso.org/sci/meetings/2015/eris2015/program.html) : Introduction gentille à l'interférométrie : "ERIS : Enhanced Resolution Imager and Spectrograph".

### Cosmologie

* [Les dix cosmondements (pdf)](https://tinmarino.github.io/pdf/2020_10_command_en.pdf) : de la voie et la vertu de la cosmologie observationnelle.

* [Cosmocuentos (pdf)](http://astromania.cl/cosmocuentos/) : cosmogonies par des amateurs Chiliens.


<footer>
Tinmarino.
</footer>
