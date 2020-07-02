---
title: Síntesis de apertura
category: Astronomia, Radio, Optica
header-includes: |
    <link rel="stylesheet" type="text/css" href="Css/alma_gruvbox.css">
---


La [síntesis de apertura](https://es.wikipedia.org/wiki/S%C3%ADntesis_de_apertura)
es el proceso de creación de imágenes utilizado por redes de antenas como [ALMA](https://es.wikipedia.org/wiki/Atacama_Large_Millimeter_Array).
Permite simular la apertura de un gran [telescopio](https://es.wikipedia.org/wiki/Telescopio) con varios pequeños.
Este gran telescopio virtual tiene como diámetro la distancia máxima entre dos pequeños.

<div>
Es un tema que invoca las matemáticas de Bac+2. Sin embargo, esta explicación que requiere unicamente un nivel de educacion bascica<sup>[+]<div class="description">
Es necesario poder leer el chilenito, las ecuaciones y saber que, en un triángulo rectángulo:
$$sin(angle) = \frac{cotes\:opuesto}{hypotenusa}$$
</div></sup>
tiene por objeto ser completa.
Por eso es un poco larga.<br/>
El lector impaciente puede leer solamente la <a href="s2_dirac">sección 2</a>.
Así, comprenderá cómo las interferencias artificiales pueden revelar el ángulo de una fuente para, poco a poco, construir un mapa del cielo.
Sin embargo, absteniéndose de las demás secciones,
este lector carecerá de esta guía vulgar, la invitación
hacia una de las más bellas historias naturales, la del [fotón](https://es.wikipedia.org/wiki/Fot%C3%B3n).
<!-- Trick for sup -->
<ul></ul></div>



- [1/ Limitaciones del telescopio:](#s1_limit) El tamaño del telescopio como límite de su resolución angular: "¿Por qué yo?"

- [2/ Plazo:](#s2_dirac) Sección fundamental. Una metáfora con las olas agua-aire muestra cómo el tiempo de recepción de una ola entre dos flotadores puede revelar la dirección de una ola: "¡Bienvenido a bordo!"

- [3/ Sinusoide:](#s3_modulo) Adición de realismo al modelo, la ola se convierte en un sinusoide, es decir, un conjunto de olas: "¿Vamos a navegar marinero?"

- [4/ Imagen:](#s4_image) La piedra puntual se hace continua.
Creación de imagen desde varias informaciones angulares: "¡Al abordaje!"

- [5/ Onda de radio: ](#s5_radio) Aumento de la distancia de los flotadores y transformación en antenas. "¡Rumbo a las estrellas!"

- [Optionnel/ Nouvelles limitations:](#so_new_limit) Calcul des limitations anciennes et nouvelles. Détermination de la qualité maximale atteignable. "Arturo Prat no navega en cajas."

- [Conclusión: ](#s_conclusion) "¿Queda mucho?"

- [Ir más lejos: ](#s_conclusion) "El que guarda, siempre tiene."


# 1/ <a name="s1_limit"></a> Limitaciones del telescopio

<blockquote> Nosce te ipsum</blockquote>

La calidad de una imagen astrofísica se mide con dos parámetros: su [resolución angular](https://en.wikipedia.org/wiki/Optical_resolution) y su [profundidad](https://fr.wikipedia.org/wiki/L_istedes_champs_profundidades).


1. __La profundidad__ es el flujo de la fuente menos luminosa que se puede detectar.<sup>[+]<div class="description">
Una gran profundidad permite detectar objetos poco brillantes. Por ejemplo, objetos lejanos.
</div></sup>
2. __La resolución angular__ es el ángulo más pequeño que un telescopio puede resolver.<sup>[+]<div class="description">
Es decir, dos objetos separados de un ángulo inferior a la resolución aparecerán como un solo.<br/>
O cualquier objeto de tamaño inferior a la resolución angular aparecerá como un punto.<br/>
<b>Ejemplo:</b> un telescopio óptico de 1 m de diámetro ($D$),
observando una señal de longitud de onda $ lambda = 550nm$ (en amarillo) tiene una resolución
(como se verá en [sección opcional](#so_new_limit)) de
$\lambda / D$
$= 550nm / 1m$
$= 5.5 \times 10^{-7} radians$
$\left(= 0.00000055 radian\right)$
$= 5.5 \times 10^7 * 180 / \pi °$
$= 3.15 \times 10^{-5} °$
$= 3.15 \times 10^{-5} / 3600 ''$
= 0,1 segundos de grados.<br/>
<b>Fígense</b> que los atrónomos no cuentan en radianes [rad] ni en grados [°] que son ángulos demasiado grandes pero en segundos de grado [''] o en milisegundos de grado [mas].
Son unidades tales que hay tantos segundos (respectivamente de milisegundo) de grado en un grado que de (milli) segundos en una hora, es decir 3600 (respectivamente 3.600.000).<br/>
Una gran resolución angular permite observar objetos de pequeño tamaño angular. Por ejemplo, objetos lejanos.
</div></sup>

-> Hasta que se demuestre lo contrario, cualquier telescopio puede generar imágenes de gran resolución y profundidad arbitrariamente, a condición de:

1. Exponer el objeto durante el tiempo suficiente para obtener más luz de ese que el ruido del cielo y del aparato.
2. Utilizar un detector (Couple Charged Device) con suficientes píxeles por cm.<sup>[+]<div class="description">
El número de píxeles por centímetro puede ser arbitrariamente alto con bancos ópticos dentro del detector. Por ejemplo, los nuevos teléfonos móviles declaran detectores de 9Mpixeles (= 3000x3000) y 2mm, mientras que un detector de telescopio es de 1Mpixel (1000x1000) y mide 3cm.
</div></sup>

<- Aquí está la prueba de lo contrario:

<div>
En cuanto a la __profundidad__, se necesita un gran telescopio.
En efecto, aunque sumando un gran número de imágenes del mismo lugar, podemos obtener una profundidad infinita, antes de poderlas sommer, es necesario poderlas alinear convenientemente y para esto, es necesario ... imágenes suficientemente profundas y resueltas.
En efecto, si no se ve nada en las imágenes cómo se sabe hacia dónde apuntan.
Así que necesitamos un telescopio lo suficientemente grande como para absorber la luz para resolver al menos dos estrellas de campo en cada exposición.
Usted puede pensar: "si la mecánica del telescopio es suficientemente buena, las imágenes se alinean por el punteo". Desafortunadamente, no es posible obtener una posición precisa sin <a href="https://en.wikipedia.org/wiki/Star_tracker">visor de estrellas</a> que requiere ver una estrella cerca del campo de observación.<sup>[+]<div class="description">
La __Escala de píxeles__ es un tema interesante y conexo a ese,
ya que es fundamental en la mediada de la posición de una estrella,
pues en la alineación de imágenes.
(Ver <a href="https://starizona.com/tutorial/harold-nyquist">debate del criterio de Nyquist para las CCD</a>).
</div></sup>
<!-- Trick for sup --> <ul></ul>
</div>



<div>
En cuanto a la __resolución angular__, el tamaño del telescopio también es limitado.
Pero esta vez, no es por la simple razón de recoger un máximo de flujo luminoso con el fin de obtener una señal de ruido suficiente para la detección.
Es más complicado que eso.
El efecto adverso es la <a href="https://es.wikipedia.org/wiki/Difracci%C3%B3n_(f%C3%ADsica)">diffraction</a> que sufra cualquier onda que pase por una abertura (ver la figura <a href="#f_fente"><i>"rendija"</i></a>). <sup>[+]<div class="description">
Experimentamos la difracción todos los días cuando escuchamos el sonido de una habitación cercana.
</div></sup>
En el caso de una abertura circular como la del espejo principal, la imagen de un punto (de una estrella>[+]<div class="description">
El diámetro angular de las estrellas es mucho menor que la resolución del mejor telescopio. Así que tienen la misma imagen que un punto (infinitamente pequeño). Las galaxias no lo son.
</div></sup>
) ya no es un punto pero se extiende según la forma simétrica del <a href="https://es.wikipedia.org/wiki/Disco_de_Airy">disco de Airy</a>.
Esta mancha es más pequeña cuanto mayor es la apertura del telescopio.
Debería entender por qué al final de esta guía.<br/>
<!-- Trick for --> <ul></ul>
</div>

<hr>

<!-- Figure diffraction Right -->
<figure style="float: right; width:300px;" >
  <a name="f_fente"></a>
  <img style='width:100%' src='Figure/12_diffraction.svg' alt='missing'></img>
  <figcaption>
    <b>Rendija :</b>
    Difracción de una onda que atraviesa una puerta.<br/>
    El frente de onda, antes lineal, se curva como si la apertura fuera el emisor.
  </figcaption>
</figure>


Ambas razones explican el interés por los grandes telescopios.
Sin embargo, es económicamente difícil construir grandes aberturas de calidad, sean reflectores o lentes.
Es por eso que la [síntesis de apertura](https://fr.wikipedia.org/wiki/Synth%C3%A8se_d%27apertura)
se utiliza para simular un telescopio de gran apertura con varios pequeños.

La síntesis de apertura es una tecnología muy relacionada con la radioastronomía, ya que su uso es hoy técnicamente cercano al milagro en la óptica visible.
De hecho, como verán, los detectores de radio miden la luz como una onda, lo que permite una reconstrucción de la apertura a posteriori.
Posteriormente, los detectores (antenas) serán modelados por flotadores en el agua y su posición es medible. En óptica visible, esta posición no es mensurable, sólo se puede saber si el flotador se mueve. En términos técnicos, se dice que las antenas de radio (o milimétricas) miden simultáneamente la fase y la amplitud de la señal electromagnética.


# 2/ <a name="s2_dirac"></a> Retraso de un choque

<blockquote> Verba Docent, exempla trahunt</blockquote>

Supongamos que una piedra es arrojada a un lago tranquilo.
Una ola se extenderá en círculos concéntricos alrededor de esta piedra.
Disponemos de dos flotadores para medir la posición de la fuente de la ola, es decir, el lugar donde cayó la piedra.
Como en astrofísica, queremos medir su posición angular y no su distancia que suponemos infinita.

Supongamos, para empezar, que sólo hay una ola generada por esta piedra.
Entonces, si la piedra fue lanzada a la derecha, como en la figura
<a href="#f_mapa"<i>"mapa del lago"</i></a>,
El flotador de la derecha recibirá la ola antes que el de la izquierda. Inversamente, si medimos que el flotador de la derecha se mueve antes que el de la izquierda, es que la ola fue lanzada a la derecha.

<!-- Center Figure diffraction -->
<figure style="margin:10px" >
  <a name="f_carte"></a>
  <img class="center" src='Figure/21_float_n_stone.svg#svgView(preserveAspectRatio(none))' alt='missing' style="
    width:70%; min-width:300px; height:450px;
  "></img>
  <figcaption class="center" style="
    text-align:left;
    width:70%; min-width:300px;
  ">
    <b>Mapa del lago:</b>
    Ola creada por una roca arrojada al agua y recibida por dos flotadores en primer plano. La ola levantará el flotador de la derecha y luego el flotador de la izquierda.<br/>
    El guijarro fue lanzado en una posición angular de $\theta$ y a una distancia infinita, es porqué el frente de onda llega en forma de línea en el flotador a la imagen de una majestuosa ola del oleaje en alta mar y no de un miserable rebote de lavadero.<br/>
    Nota: Infinito significa simplemente: "mucho más grande que la distancia entre los dos flotadores".
  </figcaption>
</figure>

Utilizando una fórmula mágica ("trigonometrum por favum") en el triángulo ABC (figura
<a href="#f_trigo"><i>"trigonometría"</i></a>
), se obtiene lo siguiente:

$$sin(\theta) = \frac{opuesto}{hypotenusa} = \frac{a}{b}$$

<!-- Figure diffraction -->
<figure style="float: left; min-width:40%; width:300px" >
  <a name="f_trigo"></a>
  <img style="width:100%" src='Figure/22_float_triangle.svg' alt='missing'></img>
  <figcaption style="text-align:center">
    <b>Trigonométría</b>
  </figcaption>
</figure>

Con:

* $b$ : una distancia conocida: la distancia entre los dos flotadores (b para [línea de Base](https://es.wikipedia.org/wiki/Interfer%C3%B3metro_astron%C3%B3mico)).
* $a$ : la distancia adicional que la ola tuvo que recorrer (a para A remplazar).


¡Lo remplazamos! Se conoce a priori la velocidad de la ola $v$ y se mide el tiempo de retardo $\Delta t$ que la ola tomó para alcanzar el segundo flotador

La fórmula $velocidad = \frac{distancia}{tiempo}$ $\Leftrightarrow$ $distancia = velocidad \times tiempos$ nos da $a = v \times \Delta t$.
Invirtiendo la fórmula trigonométrica y cambiando $a$, tenemos:

$$
\begin{aligned}
\theta &= arcsin\left(\frac{v\times\Delta t}{b}\right) \\
       & = arcsin\left( \frac{Velocidad\_de\_ola \times Demora\_temporal\_medida}{Tamano\_de\_la\_base} \right) \\
\end{aligned}
$$

Tenemos $\theta$ y... es lo que estábamos buscando: ¡la posición angular de la piedra!

Por ejemplo:

- Si la velocidad de la ola es de 1 m/s, la distancia entre los dos flotadores es de 2m y el tiempo medido es de 2 segundos, es decir, $\theta = 90°$. Es decir, la ola viene de la extrema derecha (no citar fuera de contexto).
- Si el tiempo medido es de un segundo, la onda viene de un ángulo
$\theta$
$= arcsin(\left(\frac{1 times 1}{2}\right) = arcsin(1/2)$
$= 30°$ (en efecto: $sin(30°) = 1/2$). Es la situación representada en el
<a href="#f_carte"><i>"mapa de los mares"</i></a>.


# 3/ <a name="s3_modulo"></a> Retardo de una onda

<blockquote> Fluctuat nec mergitur</blockquote>


La sección anterior nos dio $\theta$ : la posición (angular) del objetivo.
¡Así que la Sección 2 ha cumplido su misión!

El problema es que los objetivos astrofísicos no se encienden de un solo golpe, sino que emiten de manera continua.
Por lo tanto, no hay un frente de onda (o ola) de referencia.
La altitud de cada flotador variará según la ola y seguirá un sinusoide más o menos sincronizado con el otro flotador.
Este grado de sincronización se denomina [correlación](https://kids.alma.cl/como-estan-conectadas-las-antenas-de-alma/).

<div>
No se puede medir $\Delta t$ pero $\Delta t$ modulo $\frac{1}{\nu}$ donde $\nu$ es la frecuencia de la onda y por lo tanto su inverso, $\frac{1}{\nu}$, es el tiempo que separa dos olas.<sup>[+]<div class="description">
Ya no se puede saber en qué ola está cada flotador pero en qué posición de la ola: arriba, abajo...
(véase la figura <a href="#f_altitude"><i>"altura"</i></a>) <br/>
Tenga en cuenta que esta falta de información es drástica.
En efecto, con una línea de base de 16 km y ondas de 1 mm, se puede tener una duda entre $\frac{16km \times \pi}{1mm} = 50M$ (50 millones) de valores posibles de $\theta$ para una fuente puntual. Para 10 fuentes, sería $(50M)^{10} = 9\times10^{76}$.
</div></sup></div>

<!-- Figure Multiple direction in -->
<figure class="center" style="width:90%; margin:10px">
  <a name="f_altitude"></a>
  <img style="width:100%" src='Figure/31_wave_which.svg' alt='missing'></img>
  <figcaption style="width:90%; min-width:300px;">
    <b>Altura :</b>
    Se puede medir que A y C están en fase y A y B están desfasados de $\frac{\pi}{2}$.<br/>
    Pero es imposible saber que A está en la misma onda que B y que C está en otra
    por la única medida de la posición vertical de los flotadores ya que todas las olas son perfectamente idénticas.
  </figcaption>
</figure>

* Por ejemplo, supongamos que la longitud de onda es $\lambda = 10cm = 0,1m$.
* Recordando el valor anterior: la velocidad: $v=1m/s$ por lo tanto el tiempo que separa dos máximos es de $\frac{1}{\nu} = 0.1s.<sup>[+]<div class="description">
Usando: $v$ $= frac{distancia}{tiempo}$ $=\lambda\nu$
</div></sup></div>
Recordemos también que la línea de base: $b = 2m$.

<!-- Figure Multiple direction in -->
<figure style="float: right; width:300px;" >
  <a name="f_possible"></a>
  <img style="width:100%" src='Figure/24_float_all.svg' alt='missing'></img>
  <figcaption>
    <b>Ángulos posibles:</b>
    Algunos ángulos de origen de las olas que permiten tener los dos flotadores en fase.<br/>
    Se indica el número de ondas de retraso del tapón izquierdo. Es precisamente este número que no se puede medir.<br/>
  </figcaption>
</figure>

* Imaginamos,
<a href="#f_cas1"><i>caso 1</i></a>,
una ola que viene de $\theta=53°$ (bien a la derecha) entonces tendrá que recorrer
$b \times sin(\theta)=2 \times sin(53°) = 1.6m$ más para llegar al tapón izquierdo. 1.6m siendo múltiplo de 0.1m, el tapón de la izquierda será en retraso de 16 ondas sobre el de la derecha pero "en fase" (e.d. a la misma altitud en cualquier momento).
* Supongamos que ahora,
<a href="#f_cas2"><i>caso 2</i></a>,
una ola que viene de $\theta = 30°$ (centro-derecha). Entonces tendrá que navegar $a$
$= b \times sin(\theta)$
$= 2 \times sin(30°)$
$= \frac{1}{2} \times 2$
$= 1m$.
Dado que un metro es también múltiplo de 10cm, los dos tapones también estarán en fase.
* Al medir la altitud de los dos tapones, no podremos discriminar el caso 1 del caso 2.
* Algunos valores posibles de $\theta$ para dos tapones en fase están en la figura
<a href="#f_possible"><i>"ángulos posibles"</i></a>.



* ¿[Keck](https://es.wikipedia.org/wiki/Observatoire_W._M._Keck) se hace para saber si la piedra ha sido arrojada a 53° (caso 1) o a 30° (caso 2)?

* Añadamos un flotador: "Z". Por ejemplo, a 0.5m a la izquierda del tapón de referencia, el de la derecha: "X", y por lo tanto a 1.5m a la derecha del de la izquierda: "Y". Como en la figura
<a href="#f_reseau"><i>"red"</i></a>.
Este corcho nos dará una información crucial que nos permitirá discriminar el caso 1 del caso 2.

<figure style="margin:10px" >
  <a name="f_reseau"></a>
  <img src='Figure/23_float_three.svg' alt='missing' style="
    width:90%; max-width:700px; min-width:300px; height:200px;
    display: block;
    margin: 0 auto;
  "></img>
  <figcaption style="
    text-align:center;
    width:90%; max-width:700px; min-width:300px;
    display: block;
    margin: 0 auto;
  ">
    <b>Red :</b>
    Tres corchos son mejores que dos.
  </figcaption>
</figure>

* Entonces si $\theta = 53°$ (caso 1), el flotador Z recibirá la onda $0.5 \times arcsin(53°)$ $= 0.40m$ $= 40cm$ más lejos. Este corcho tendrá 4 olas de retraso sobre X y estará en fase.

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
    "></img>
  <figcaption style="
    text-align:center;
    width:90%;
    height:60px;
  ">
    <b>Cas 1 : $\theta = 53°$ :</b>
    X, Y, Z en fase.
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
    "></img>
  <figcaption style="
    text-align:center;
    width:90%;
    height:60px;
  ">
    <b>Cas 2 : $\theta = 30°$ :</b>
    Z en oposición de fase.
  </figcaption>
</figure>
</div>
<div style="display: block; clear: both;"></div>


* Pero si $\theta = 30°$, el flotador Z recibirá el frente de onda $0.5 \times cos(30°)$ $=0.25m = 20cm + 5cm$ más lejos. Este tapón tendrá dos olas y media de retraso.
Una vez más, no se pueden medir las "2 olas", pero se puede medir el "y medio" porque Z estará en oposición de fase (desfasado de $\pi$) con X: cuando X esté en la cima de la ola, estará abajo.
Si sumamos las altitudes de X y Z, obtenemos cero en todo momento. Esta suma es una [interferencia](https://es.wikipedia.org/wiki/Interferencia) artificial, aquí destructiva.<sup>[+]<div class="description">
En la práctica, se realiza 1/ proyección en el espacio complejo; 2/ multiplicación y 3/ integración para medir el
[grado de coherencia](https://es.wikipedia.org/wiki/Grado_de_coherencia) y aplicar el [teorema de Van Cittert-Zernike](https://en.wikipedia.org/wiki/Van_Cittert%E2%80%93Zernike_theorem#Aperture_synthesis).
</div></sup>

<div>
Al final, añadir una línea de base nos ha permitido restringir el campo de posibilidades en la posición de la piedra, de un factor 2. Es el máximo que una información más puede darnos.
Además, añadir un tapón, en este caso nos ha añadido 2 líneas de base: la de 0.5m __y__ la de 1.5m.
Lo que nos dio dos informaciones adicionales.
Por ejemplo, si la sección 2 vacilaba entre 100 opciones posibles, la línea de 0.5m elimina la mitad: quedan 50. De la misma manera, la segunda línea también elimina la mitad, quedando 25.<sup>[+]<div class="description">
Aquí suponemos que cada línea es independiente, lo que es el caso si sus tamaños son diferentes.<br/>
¡Imaginen cómo los técnicos de ALMA se divierten colocando 66 antenas para tener 2145 líneas de base de diferentes tamaños! Y cubriendo uniformemente el conjunto de los tamaños de base posibles (generalmente en coordenadas circulares).
</div></sup>
</div>


Cada línea discrimina un rango de ángulo diferente.
En términos más genéricos, da una información, como un pixel en una imagen.
Supongamos que podemos hacer girar la línea de flotadores, entonces $ theta$ cambiará y cada línea nos traerá nueva información (más píxeles).
La forma más sencilla de hacer esta rotación con una red de antenas y una fuente extraterrestre es hacer que el planeta gire.
Y como ya está girando, basta con esperar.


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
Ces algorithmes diffèrent dans les hypothèses qu'ils font sur l'émetteur. Ils sont itératifs et paramétrables.<br/>
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
L'épaisseur de filtre $\Delta\lambda$ est très inférieur à $\lambda$, la longueur d'onde centrale du filtre.<br/>
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
    "></img>
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
    "></img>
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
  <img style='width:100%' src='Figure/54_parabola.svg' alt='missing'></img>
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
