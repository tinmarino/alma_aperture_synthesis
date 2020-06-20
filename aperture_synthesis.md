---
title: Synthèse d'ouverture
category: 
header-includes: |
    <script type="text/javascript" src="http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML"></script>

    <style>

    body {
      background-color: #232629;
      color: #eee;
      margin: 15px; max-width:900px;
      word-wrap: break-word;
      overflow-wrap: break-word;
      
      /* Font */
      color: #eee; font-family: 'Droid Sans', sans-serif; font-size: 17px; font-weight: 400; line-height: 30px;
    }

    /* H1 */
    h1 { 
      --color: #b81; color: #b81; font-family: 'Droid serif', serif; font-size: 40px; font-weight: 400; font-style: italic; line-height: 44px; margin: 50px -10px 20px; 
      max-width: 900px;
    }
    h1:after {
      content:' ';
      display:block;
      border:2px solid #b81;
      border-radius:4px;
      box-shadow:inset 0 1px 1px rgba(0, 0, 0, .05);
      max-width: 900px;
    }
    h1.title {
      text-align: center;
      font-size: 50px;
      line-height: 60px;
      color: #eee;
      max-width: 900px;
      margin: 0;
    }
    h1.title:before {
      content:' ';
      display:block;
      border:4px solid #48D;
      border-radius:4px;
      margin: 0px 0px 10px 0px;
      box-shadow:inset 0 1px 1px rgba(0, 0, 0, .05);
    }
    h1.title:after {
      content:' ';
      display:block;
      border:4px solid #D41;
      border-radius:4px;
      margin: 10px 0px 30px 0px;
      box-shadow:inset 0 1px 1px rgba(0, 0, 0, .05);
    }


    /* H2 */
    h2 { --color:#460 ; margin: 0 -10px 20px; color:#b81; 
      text-decoration: underline;
      max-width: 800px;
      margin: 60px 0 20px 0;
    }

    /* Normal */
    p {
      margin: 0 0 14px; 
      max-width: 1000px; /* or a suitable width*/
    }

    /* Link */
    a { color: var(--h0); text-decoration: none; border-bottom: 1px solid #4c3a07; }
    a:hover { color: #fff; background: var(--h0); }

    /* List */
    li {
      color: #eee;
      max-width: 1000px; /* or a suitable width*/
    }

    /* Blockquote */
    blockquote {
      background: #232629;
      color: #eee;
      border-left: 10px solid #232629;
      margin: 1.5em 10px;
      padding: 0.5em 10px;
      quotes: "\201C""\201D""\2018""\2019";
      max-width: 800px;
    }
    blockquote:before {
      color: #eee;
      content: "\201C";
      /* Bigger lefter */
      font-size: 4em;
      line-height: 0.1em;
      margin-right: 0.25em;
      vertical-align: -0.4em;
    }
    blockquote:after {
      content:' ';
      display:block;
      border:1px solid #aaa;
      border-radius:1px;
      margin: 10px 0px 0px 0px;
      box-shadow:inset 0 1px 1px rgba(0, 0, 0, .05);
    }
    blockquote p {
    display: inline;
    }

    </style>
---



La [synthèse d'ouverture](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27ouverture) est un procédé qui permet de simuler l'ouverture d'un grand télescope avec plusieurs petits. Ce grand télescope virtuel a pour diamètre la distance maximale entre deux petits.

Nous verrons (1) pourquoi les grands télescopes ont une meilleure résolution angulaire et que simuler un grand télescope signifie obtenir cette même résolution.

En (2) 

En (3) nous verrons comment joindre les informations de deux télescopes pour obtenir des informations précise sur l'angle d'une source. Spoiler: il faut faire une somme

Puis la partie (4) explique comment plusieurs informations angulaire permettent de constituer une image via une [transormée de Fourier](https://fr.wikipedia.org/wiki/Transformation_de_Fourier).



# 1. Limitations du télescope

On mesure la qualité d'une image astrophysique avec deux paramètres: sa [résolution angulaire](https://en.wikipedia.org/wiki/Dynamic_range#Photography) et sa [profondeur](https://fr.wikipedia.org/wiki/Liste_des_champs_profonds).


1. __La profondeur__ est le flux de la source la moins lumineuse que l'on peut détecter. Une grande profondeur permet de détecter des abjects peu brillant,par exemple, des abjects lointains.
2. __La résolution angulaire__ est le plus petit angle qu'un télescope peut résoudre. C'est à dire que deux abjects séparés d'un angle inférieur, donc plus proches que la résolution apparaitront comme un seul.<sup>[1](#resolution_telescope)</sup>

Jusqu'à preuve du contraire, un télescope quelconque peut générer des images d'une résolution et profondeur arbitrairement grande à condition de:

1. Exposer suffisamment longtemps l'objet pour obtenir plus de lumière dans sa direction que le bruit du ciel et de l'appareil.
2. Utiliser un détecteur (Couple Charged Device) avec suffisamment de pixels par cm.<sup>[2](#detecteur_pixel)</sup>

Je vais maintenant vous prouvez le contraire.

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
  <img src='Figure/12_diffraction.svg' alt='missing' />
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
Si le temps mesuré est de 1 seconde, la vague viens d'un angle $\theta = arccos\left(\frac{2}{1 \times 1 }\right) = arccos(1/2) = 60°$ (en effet $cos(60°): = 1/2$). C'est la situation su schema (TODO link schema).


# 3 Délai d'une onde

La section précédente nous a donné $\theta$, la position (angulaire) de l'objectif.
C'est donc mission acomplie pour la section 2 !

Le problème est que les objectifs astrophysques, ne s'allument pas d'un seul coup mais emmèttent de manière continue.
Il n'y a donc pas de front d'onde de référence.
L'altitude de chaque floteur variera au grès de la vague et suivra une sinoïde plus ou moins synchronisée avec l'autre flotteur.
Ce degrès de synchronysme est appellé [correlation](https://kids.alma.cl/como-estan-conectadas-las-antenas-de-alma/)

On ne peut plus mesurer $\Delta t$ mais $\Delta t$ modulo $\frac{1}{\nu}$ où $\nu$ est la fréquence de l'onde et donc son inverse, $\frac{1}{\nu}, est le temp qui sépare deux vagues.

* Par exemple, supposons que la longueur d'onde est de 1m.
* Rapellons les valeurs précédentes (vitesse = 1m/s, ligne de base = 2m). Le temps qui sépare deux maximum est donc de 1s.
* Imaginons, cas 1, une vague venant de $\theta=0 (l'extrème droite) alors elle devra parcourir 2m de plus pour arriver au bouchon de gauche. 2m étant multiple de 1m, les deux bouchons seront "en phase" (i.e. à la même altitude à tout moment).
* Imaginons maintenant, cas 2, une vague venant de $\theta = 60°$ (centre-droite). Alors elle devra parcourir $a = cos(\theta) \times b$ = cos(60°) * 2 ) = \frac{1}{2} * 2 = 1m$. 1m étant aussi multiple de 1m, les deux bouchons seront en phase.
* En mesurant l'altitude des deux bouchons, nous ne pourrons pas discriminer le cas 1 du cas 2.
* [Keck](https://fr.wikipedia.org/wiki/Observatoire_W._M._Keck) c'est ti qu'on fait pour savoir si le caillou a été jeté à 0° (cas 1) ou a 60° (cas 2).

* Rajoutons un bouchon. Par exemple, à 0.5m à gauche du bouchon de référence (celui de droite) et donc a 1.5m à droite de celui de gauche.

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

* Alors si $\theta = 0$ (cas 1), le bouchon Z recevra l'onde 0.5m plus loin. Se bouchon sera en opposition de phase avec X : quand X sera au sommet de la vague, il sera en bas. En sommant les altitudes de X et de Z, en tout temps, on obtient zéro. Cette somme est une [interférence](https://fr.wikipedia.org/wiki/Interf%C3%A9rence) artificielle, ici destructive.
* Mais si $\theta = 60°$, le bouchon Z recevra le front d'onde 0.5 * cos(60°) = 0.25m plus loin. Il sera déphasé de $\frac{pi}{2}$ et quand X sera en haut de la vague, Z sera au milieu de sa descente.
* Au final, ajouter une ligne de base nous a permis de restreindre le champs des possibilités sur la positions du callou, d'un facteur 2. Ce qui est le maximum qu'une information de plus peut nous apporter.
* Par contre ajouté un bouchon, dans ce cas nous a ajouté 2 ligne de base : celle de 0.5m __et__ celle de 1.5m. Ce qui nous donnde 2 informations de corrélations supplémentaires. Par example si la section 2 hésitait entre 100 chois possibles la ligne de 0.5m en élimine la moitié : il en reste alors 50. De la même manière la deuxième ligne en elimine aussi une mooitié, il en reste 25. Nous supposons ici que chaque ligne est indépendante, ce qui est le cas si leurs tailles sont différentes.

Chaque ligne permet de discriminer un rang d'angle différent. Suposez que l'on puisse faire tourner la ligne des flotteurs, alors $\theta$ changerai et chaque ligne nous aporterai des informations nouvelles. Le plus simple pour efectuer cette rotation avec un réseau d'antennes et une source extraterestre est de faire tourner la planète. J'ai donc personellement pris la responsabilité de maintenir la rotation de la terre et voyez vous, elle continue de tourner.



# 4 Délai de plusieurs objects avec plusieurs longueur d'onde.

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

De même il est intéréssant de comprendre de quoi s'agit une onde éléctromagnétique.

Quelle est la différence entre le callou et le bouchon ? (Faire un pause ... réponse:) L'un émet des vagues en se dépançant verticalement dans l'eau et l'autre se déplace verticalement sur l'eau lorsqu'il reçoit des vagues. De plus, si j'agitait artificiellement le bouchon, il émetrai des vagues. Donc la différence n'est pas dans leur nature mais dans leur comportement.

L'accélération d'une charge éléctrique, tipiquement un éléctron, engendre l'émission d'un [photon](https://fr.wikipedia.org/wiki/Photon) et réciproquement la reception d'un photon engendre l'accélération d'un electron.
En agitant artificielement un éléctron dans une antenne, par exemple avec un aimant, on peut trasmettre un signal à une antenne voisine. Le porteur de ce signal est le photon : il est, plus généralement [porteur de la force](https://en.wikipedia.org/wiki/Force_carrier) [électromagnétique](https://fr.wikipedia.org/wiki/%C3%89lectromagn%C3%A9tisme).



# Conclusion



# Notes

<a name="resolution_telescope">1</a>: La résolution typique (télescope optique de 1m de diamètre) est de 1 seconde de degrés c'est à dire 1 degré divisé par 3600. Une grande résolution angulaire permet d'observer des objects de petite taille angulaire par exemple, des objects lointain.

<a name="detecteur_pixel">2</a>: Le nombre de pixel par centimètre peut être arbitrairement elevé avec des bancs optiques à l'intérieur du détcteur. Par exemple les nouveaux smartphones déclarent des détecteurs de 9Mpixels (3000x3000) et de 2mm tandis qu'un detecteur de telescope est de 1Mpixel (1000x1000) et mesure 3cm.
