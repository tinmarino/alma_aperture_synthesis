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
Es un tema que invoca matemáticas de segundo año de universidad. Sin embargo, esta explicación que requiere unicamente un nivel de educacion bascica<sup>[+]<div class="description">
Es necesario poder leer el castellanito, las ecuaciones y saber que, en un triángulo rectángulo:
$$sin(angle) = \frac{cotes\:opuesto}{hypotenusa}$$
</div></sup>
tiene por objeto ser completa.
Por eso es un poco larga.<br/>
El lector impaciente puede leer solamente la <a href="s2_dirac">sección 2</a>.
Así, comprenderá cómo las interferencias artificiales pueden revelar el ángulo de una fuente para, poco a poco, construir un mapa del cielo.
Sin embargo, absteniéndose de las demás secciones,
este lector carecerá de esta humilde guía, la invitación
hacia una de las más bellas historias naturales, la del [fotón](https://es.wikipedia.org/wiki/Fot%C3%B3n).
<!-- Trick for sup -->
<ul></ul></div>



- [1/ Limitaciones del telescopio:](#s1_limit) El tamaño del telescopio como límite de su resolución angular: "¿Por qué yo?"

- [2/ Plazo:](#s2_dirac) Sección fundamental. Una metáfora con las olas agua-aire muestra cómo el desfase de tiempo de recepción de una ola entre dos flotadores puede revelar la dirección de una ola: "¡Bienvenido a bordo!"

- [3/ Sinusoide:](#s3_modulo) Adición de realismo al modelo, la ola se convierte en un sinusoide, es decir, un conjunto de olas: "¿Vamos a navegar marinero?"

- [4/ Imagen:](#s4_image) La piedra puntual se hace continua.
Creación de imagen desde varias informaciones angulares: "¡Al abordaje!"

- [5/ Onda de radio: ](#s5_radio) Aumento de la distancia de los flotadores y transformación en antenas. "¡Rumbo a las estrellas!"

- [Optionnel/ Nuevas limitaciones:](#so_new_limit) Cálculo de las limitaciones antiguas y nuevas. Determinación de la calidad máxima alcanzable. "Arturo Prat no navega en cajas."

- [Conclusión: ](#s_conclusion) "¿Queda mucho?"

- [Ir más lejos: ](#s_links) "El que guarda, siempre tiene."


# 1/ <a name="s1_limit"></a> Limitaciones del telescopio

<blockquote> Nosce te ipsum </blockquote>

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
En el caso de una abertura circular como la del espejo principal, la imagen de un punto (de una estrella<sup>[+]<div class="description">
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

<blockquote> Verba Docent, exempla trahunt </blockquote>

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


# 3/ <a name="s3_modulo"></a> Retraso de una onda

<blockquote> Fluctuat nec mergitur </blockquote>


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


Cada línea permite discriminar un rango de ángulo diferente.
En términos más genéricos, da una información, como un pixel en una imagen.
Supongamos que podemos hacer girar la línea de flotadores, entonces la linea del horizonte sigue esta rotación. Pues $\theta$ cambiará y cada línea nos traerá nueva información (más píxeles).
La forma más sencilla de hacer esta rotación con una red de antenas y una fuente extraterrestre es hacer que el planeta gire.
Y como ya está girando, basta con esperar.


# 4/ <a name="s4_image"></a>Tiempo de varios objetos: reconstrucción de imagen

<blockquote> Divide ut reges </blockquote>

La sección 3 también cumplió su objetivo de determinar la posición de una piedra puntual que emite una serie de ondas indiferenciables.
Felicitaciones al lector que ha llegado hasta aquí: ahora puede localizar con precisión el ángulo con el que se ha lanzado una piedra puntual con algunos corchos.

- [4.1:](#s41_triangulation) Para que el lector comprenda la potencia de esta técnica vamos a enunciar rápidamente su precisión y lo que la diferencia de la triangulación.

- [4.2:](#s42_forme) A continuación veremos cómo una piedra no puntual puede ser considerada como varias piedras puntuales lado a lado.

- [4.3:](#s43_image) Esto nos permitirá reconstruir la forma de una piedra a partir de los movimientos detectados.

- [4.4:](#s44_spectre) Por último, abordaremos la importancia de los filtros y la medición del tamaño de las olas.<sup>[+]<div class="description">
O medida espectral para las ondas de radio. En francés el color.
</div></sup>


## 4.1/ <a name="s41_triangulation"></a> Precisión real

La divulgación, a menudo, compara la interferometría con la [triangulación](https://es.wikipedia.org/wiki/Triangulaci%C3%B3n).
En efecto, en ambos casos, la correlación entre dos detectores: respectivamente telescopio y ojo, permite obtener una nueva información.

<div class="border-aqua">
<b>La Triangulación:</b>
permite [percibir la profundidad](https://es.wikipedia.org/wiki/Percepci%C3%B3n_de_profundidad). Supone que cada ojo conoce su orientación. La combinación de los dos ojos por una fórmula trigonométrica da la profundidad. En resumen:
<ul><li>
Distancia entre los dos ojos   &nbsp;&nbsp;&&nbsp;&nbsp;    ángulo del ojo derecho  &nbsp;&nbsp;&&nbsp;&nbsp;      ángulo del ojo izquierdo   &nbsp;&nbsp;->&nbsp;&nbsp;   distancia del objeto.
</li></ul>
</div>


<div class="border-aqua">
<b>La Interferometría:</b>
permite conocer el ángulo del transmisor. Supone que cada detector puede medir la intensidad __y__ la fase de la onda incidente. Es decir, el tamaño de las olas __y__ la altitud del flotador.
Por el contrario, en la triangulación nunca se trata de la naturaleza ondulatoria de los rayos. Además: 1/ el ojo humano es incapaz de medir la fase de la luz incidente y 2/ los sensores interferométricos<sup>[+]<div class="description">
Ejemplo de sensor:<br/>
<b>1/ Radio</b><br/>
<b>2/ Telescopio</b> con fibra óptica en el foco imagen.
Esta fibra óptica mezclará todos los ángulos y perderá la información angular de los rayos incidentes. Esto no es grave, ya que esta información se medirá mucho más precisamente posteriormente a través de la interferencia con otro telescopio remoto. Véase, por ejemplo, el [Very Large Telescope Interferometer](https://www.eso.org/sci/facilities/paranal/telescopes/vlti.html).<br/>
<b>3/ Sismómetro</b>. Se habla de [interferometría sísmica] (https://en.wikipedia.org/wiki/Seismic_interferometry)
([Sens-Schönfelder y Wegler 2011](https://www.sciencedirect.com/science/article/pii/S1631071311000861))<br/>
<b>4/ Flotador de Tinmarino</b>. Ver [aquí mismo](https://tinmarino.github.io/?show=aperture_synthesis_page)<br/>
</div></sup>
son incapaces, independientemente, de medir el ángulo del emisor. De hecho, es el objetivo de la medición sincronizada. En resumen:
<ul><li>
Distancia entre los sensores  &nbsp;&nbsp;&&nbsp;&nbsp;        fase del sensor derecho   &nbsp;&nbsp;&&nbsp;&nbsp;       fase del sensor izquierdo    &nbsp;&nbsp;->&nbsp;&nbsp;       ángulo del objeto.
</li></ul>
</div>


<div>
Al aproximarlos, la vulgarización hace una analogía fácilmente comprensible pero incorrecta.
Además, la distancia de los astros lejanos por triangulación es imposible.<sup>[+]<div class="description">
El diametro aparente de los astros es mucho menor que la resolución angular de los sensores y éstos los ven a una distancia infinita.<br/>
Para medir la distancia de los astros (estrellas, supernovas, galaxias), los físicos recurren a una comprensión fina de estos últimos, respectivamente: luminosidad, disminución luminosa y frecuencias de oscilaciones conocidas desplazadas por la expansión del universo.
</div></sup>
Ahora que usted sabe que estos mecanismos son diferentes, viene, en mi opinión, una pregunta legítima: ¿Cuál es la ventaja de la interferometría?</b><sup>[+]<div class="description">
El ojo humano es una tecnología notable: pequeño, ligero, resistente, rápido, de bajo consumo de energía, ya conectado (al cerebro), dotado de una amplia gama dinámica, de un gran campo de visión y de una aceptable resolución angular y profundidad.<br/>
Entonces, ¿por qué estamos construyendo observatorios artificiales? Sentimos que la respuesta está en la resolución angular y la profundidad.
</div></sup>
</div>

<b>Respuesta: la precisión de la medición angular.</b>
En el ejemplo anterior, separamos dos corchos de 2m para medir la orientación de una onda de 10cm de longitud de onda. esas dimaciones eran más fácil de dibujar.
En realidad, las antenas de ALMA están separadas por 16 km y miden el ángulo de incidencia de una onda de 1mm. Guardando nuestro ejemplo con nuestras olas y flotadores, es como separar los flotadores de
$16km \times \frac{10cm}{1mm}$
$= 1600 km$.
A esta distancia, los flotadores pueden medir la diferencia entre una ola que viene de $\theta=0$ y una ola que viene de
$\theta$
$= arcsin \left(\frac{10cm}{1600km}\right)$
$= 0.0000036°$,
Segundo ángulo donde los dos flotadores se encontrarán de nuevo en fase.

<div style="min-width:300px; width:50%; margin:10px;">
placeholder-rayleight
</div>

Hemos utilizado el [criterio de Rayleight](http://ressources.univ-lemans.fr/AccesLibre/UM/Pedago/physique/02/optiondu/rayleigh.html), que estipula que sólo se pueden distinguir dos manchas de difracción después de la distancia donde el máximo de una corresponde al primer mínimo de la otra.

Por lo tanto, la resolución de ALMA es de 0.0000036° o <span class='box'>10 mas</span>: 10 milisegundos de arco. Lo que es muy preciso y permite sintetizar imágenes con gran detalle siguiendo el método que describiremos próximamente a la <a href="#s43_image">section 4.3</a>.

<div style="clear:both"></div>

## 4.2/ <a name="s42_forme"></a> De un punto a una forma

Supongamos que la piedra no es puntual sino de un cierto tamaño.
Entonces las olas generadas serán diferentes. Por ejemplo, no serán perfectamente esféricas al principio. Pero sobre todo no llegarán con un ángulo de incidencia único, un frente de onda recta, es decir, no serán lineales.
Es como, por ejemplo, esas olas dobles que les gustan a los surfistas principiantes donde se añade, a la ola principal, una pequeña ola oblicua que permite levantarse antes. O las olas que se ven desde lejos, que se asemejan a la bahía que penetran. En resumen, olas donde el frente de onda, la línea que dibuja la parte superior de cada ola, no es una línea.


Ya se sabe determinar la posición angular de un punto ([sección 3](#s3_modulo)). Entonces si varios puntos emiten ondas, estas diferentes ondas se propagarán independientemente en el medio (véase [principio de superposición](https://es.wikipedia.org/wiki/Principio_de_superposici%C3%B3n)).
Los detectores recibirán la suma de cada onda. Es decir, la suma de las altitudes que habrían recibido por cada punto.

En otras palabras, se puede predecir con precisión, con una suma, lo que los receptores medirán en función de la posición de las diferentes fuentes puntuales. A la inversa, se puede determinar la posición de cada una de las fuentes en función de los niveles medidos si no falta informaciones en recepción.

<div>
Esta falta de información se debe al hecho de que no hay flotadores en todas partes en la línea de medición. La ecuación matemática es compleja. El lector lo puede predecir de las palabras: falta de información, medida recíproca (alias inverso) sin hablar del error de medición.
Pero afortunadamente para el físico o el aficionado que a menudo son los mismos, hay una regla<sup>[+]<div class="description">
Valoro las reglas: una vez anotadas su campo de aplicación y sus efectos, que a menudo consisten en restringir el campo de las posibles, facilitan el proceso cognitivo. Véase, por ejemplo, mi lista de <a href=https://tinmarino.github.io/?show=cosmo_obs_cheat>10 cosmondements</a>. O aquí mismo algunos ejemplos que son casi definiciones:
<ul>
<li>La materia no atraviesa la materia.</li>
<li>El tiempo pasa del pasado al futuro.</li>
<li>Más presión hay, más rápido sale.</li>
<li>Dos espacios parraleles nunca entran en contacto.</li>
</ul>
Muchos medios afirman un nuevo descubrimiento que viola una de estas reglas.
Simplemente mienten: si mi martillo lo atraviesa, no es materia; si viaja del futuro al pasado, no es real; si el flujo es más lento cuando lo subo, no es presión; finalmente si percibimos un espacio, no es paralelo al nuestro.
</div></sup>
en teoría de la información: <b>se pueden medir al máximo tantos valores como se tiene de datos</b> (véase [Entropie de Shanon](https://es.wikipedia.org/wiki/Entrop%C3%ADa_(informaci%C3%B3n))). Esto significa que se pueden ahorrar los cálculos y considerar que se pueden medir tantos ángulos de impacto de fuentes puntuales (olas) como pares independientes de detectores (flotadores).
<!-- Trick for sup --> <ul></ul>
</div>

<div>
Como podemos medir el ángulo de varias fuentes puntuales, dividimos la forma de la fuente en varias subfuentes puntuales y luego interpolamos para encontrar la forma continua de la fuente original.<sup>[+]<div class="description">
Existen varios algoritmos de interpolación y [desconvolución](https://es.wikipedia.org/wiki/Deconvoluci%C3%B3n) que pueden utilizarse para este fin:
[CLEAN](https://en.wikipedia.org/wiki/CLEAN_(algorithm)), [Maximum Entropy Method](http://repositorio.uchile.cl/handle/2250/149958), Hybrid.<br/>
Estos algoritmos difieren en las hipótesis que hacen sobre el emisor. Son iterativos y configurables.<br/>
Véase la página de [radioastronomía Español](http://www.iram.fr/IRAMFR/GILDAS/doc/html/map-html/node35.html) para una pequeña descripción agradable.
</div></sup>
</div>

En resumen: vamos de un punto a una forma pasando por varios puntos. El término técnico de este enfoque es "Discretización".


## 4.3/ <a name="s43_image"></a> Reconstrucción de imagen

De esta manera, con varias líneas de base, es posible detectar simultáneamente olas procedentes de diferentes lugares.
La comprensión de los detalles del proceso matemático implica una visión eficaz de las sumas de sinusoides que proporciona la [transformada de Fourier](https://es.wikipedia.org/wiki/Transformada_de_Fourier) o las [ondícula](https://es.wikipedia.org/wiki/Ond%C3%ADcula) y hará quizásser objeto de un capítulo 2.

Para los impacientes, no olviden el [principio de retorno inverso de la luz](https://es.wikipedia.org/wiki/Principio_de_Fermat)
que permite hacer la experiencia de pensamiento de la inversión del transmisor y del receptor y garantiza que el curso de la luz será el mismo.
Por lo tanto, "basta" con propagar lo que se recibe como olas, como agitar los corchos artificialmente en agua tranquila. Y la onda, la ola, que veremos en el infinito será... la fuente!

Si usted ha hecho esta experiencia de pensamiento, usted acaba de reconstruir la imagen. O la transformada de Fourier de la distribución de intensidad de los pares de receptores para sacar las palabrotas. En cualquier caso, buen trabajo!


## 4.4/ <a name="s44_spectre"></a> Con varias longitudes de onda

No, aquí, en serio, se vuelve complicado: hay más parámetros a determinar (posiciones, longitudes de onda) que parámetros medibles. Sin información a priori, es imposible porque es absurdo (véase [parsimonia](https://es.wikipedia.org/wiki/Navaja_de_Ockham) y luego [entropie de Shannon](https://es.wikipedia.org/wiki/Entrop%C3%ADa_(informaci%C3%B3n))).

<blockquote> Pluralitas non est ponenda sine necessitate </blockquote>

La solución más simple en este caso, el caso real, es limitar físicamente:

1. El campo de visión con diques que bloquean las olas que no vienen de la dirección de observación. En efecto, contaminarían la medida.
2. Las frecuencias medidas con filtros estrechos.<sup>[+]<div class="description">
El espesor del filtro $\Delta\lambda$ es muy inferior a $\lambda$, la longitud de onda central del filtro.<br/>
Por ejemplo, para nuestros flotadores bajo ondas de frecuencia $0.1s$, limitaríamos la velocidad de oscilación de los flotadores a $0.1s \pm pequeno \times 0.1s$. Digamos $0.1s \pm 0.00001s$<br/>
</div></sup>
Al forzar la velocidad de oscilación de los corchos, las olas más rápidas o más lentas serán ignoradas.

Esta reducción del perímetro de análisis es realizada por telescopios independientes para reducir el ruido y el costo de las mediciones.
En apertura sintética, esta reducción añade la ventaja de disminuir la falta de información. Esto reduce el ruido sistemático de la medición (alias [sesgo](https://es.wikipedia.org/wiki/Sesgo_estad%C3%ADstico)).



# 5/ <a name="s5_radio"></a> De las olas a las ondas de radio

<blockquote> Per Aspera ad Astra </blockquote>

El concepto matemático utilizado por un telescopio de apertura sintética es idéntico al del detector que utiliza flotadores.

## 5.1/ <a name="s51_corresponde"></a> Correspondencias

Para enriquecer el vocabulario del lector, aquí está la analogía:


| Esta explicación | [ALMA](https://es.wikipedia.org/wiki/Atacama_Large_Millimeter_Array) |
| ---              | --- |
| Onda             | Onda electromagnética |
| Guijarros        | Estrella |
| Tapón            | Antena |
| Posición         | Aceleración del electrón |

Tengo la esperanza de haber demostrado al lector que, como yo mismo, ignora mucho sobre la naturaleza de las olas de superficie agua-aire. Sin embargo, en términos generales, sabe de qué se trata.
También es interesante comprender la noción de onda electromagnética (alias: luz, fotón).

¿Cuál es la diferencia entre la piedra y el corcho? (Pensar... respuesta:) El primero emite olas moviéndose verticalmente en el agua y el segundo se mueve verticalmente sobre el agua cuando recibe olas. Además, si agitara artificialmente el tapón, emitiría olas. Así que la diferencia no está en su naturaleza, sino en su comportamiento.

La aceleración de una carga eléctrica, típicamente un electrón, genera la emisión de un [fotón](https://es.wikipedia.org/wiki/Fot%C3%B3n) y viceversa la recepción de un fotón provoca la aceleración de un electrón.<br/>
Agitando artificialmente un electrón en una antena, por ejemplo con un imán, se puede transmitir una señal fotónica a una antena vecina
en la cual, el fotón acelerará un electrón, mensurable por ejemplo con un imán.<br/>
El fotón es el [portador de la fuerza](https://en.wikipedia.org/wiki/Force_carrier) [electromagnética](https://es.wikipedia.org/wiki/Electromagnetismo).

La luz, colonia de fotones congelados en el tiempo y corriendo en el espacio, es muy interesante tanto para la investigación como para la enseñanza científica. Lo que, en sí mismo, es natural porque es lo único que se ve. Sepan que un geólogo tendría la misma retórica para el sonido.


## 5.2/ <a name="s52_antenna_vs_telescope"></a> Antena > Telescopio

Este documento les ha explicado, espero, la síntesis de apertura, técnica utilizada principalmente por las redes de antenas.
En este sentido, me permito explicarles por qué las antenas (reflector + [osciloscopio](https://es.wikipedia.org/wiki/Osciloscopio)) son superiores a los telescopios (espejo + [CCD](https://es.wikipedia.org/wiki/Dispositivo_de_carga_acoplada) o [bolometro](https://es.wikipedia.org/wiki/Bol%C3%B3metro)). La respuesta está en el procesamiento de la señal eléctrica en comparación con la óptica.


El osciloscopio tiene la capacidad de medir simultáneamente fase y amplitud mientras que la CCD o el bolometro sólo mide la intensidad (amplitud al cuadrado).
Esta capacidad permite a la red de antenas registrar todas sus mediciones para que las máquinas hagan, a posteriori, el tratamiento de la señal.
Por lo tanto, la correlación se realiza, tranquilo, con las computadoras.
Mientras que en la óptica, la correlación debe hacerse en tiempo real, con un banco óptico vulnerable a la mínima oscilación, en medio de las máquinas a 3500m de altitud, en un país sísmico.
Cada adquisición del VLTI (óptica) es una aventura humana. Las adquisiciones de ALMA (radio) comienzan a parecerse a un crucero (excepto para las computadoras que virtualizan todo el banco óptico).<br/>
Además, una señal eléctrica puede multiplicarse con mucho menos ruido que una señal óptica. Esto facilita la síntesis de la apertura con más de dos antenas. Por ejemplo, ALMA tiene 66, mientras que el VLTI tiene sólo... 2.


## 5.3/ <a name="s53_cost"></a> Costo de cálculo

El costo de cálculo de la tubería de procesamiento de imágenes está ampliamente dominado por el correlador, como usted va a entender rápidamente.
Tenga en cuenta que los cálculos son aproximados (a un factor 10).

#### Correlador

* __Líneas de base:__ ALMA tiene 66 antenas $\frac{66 \times 65}{2} = 2.145$ pares (en la práctica [1291](https://public.nrao.edu/telescopes/alma/)).

* __Muestreo:__ El observatorio mide una onda de 1mm de frecuencia 300GHz.
después del [teorema de muestreo](https://es.wikipedia.org/wiki/Teorema_de_muestreo_de_Nyquist-Shannon),
es necesario tomar muestras a una frecuencia superior al doble de la frecuencia, es decir, de 600GHz.

* __Operación elemental:__ Para cada muestra temporal de la onda hay que hacer una multiplicación compleja, es decir, 4 multiplicaciones reales.

Supongamos que el procesador (FPGA) tiene una frecuencia de reloj de 1GHz, y hace una multiplicación en 2 tiempos de relojes. Entonces el número de procesadores:

$$ N_{CPU} = 2145 \times \frac{600 [Ghz]}{1 [Ghz]} \times 4 \times 2 = 102 \: millions$$

El correlador de ALMA tiene 130 millones de procesadores FPGA: ¡es una gran máquina!

#### Calibración

A hacer cada minuto como máximo.
Una única operación que, desde una imagen correlacionada, da la ganancia asociada a cada antena.
Algunos procesadores deberían bastar.

#### Redución de imagen

Esto sólo se hace de una vez por todas las adquisiciones correlacionadas y calibradas del mismo lugar del cielo.
Esta operación no es crítica y se puede hacer en calma, 40 días después de la adquisición.
Es un algoritmo recursivo que hará 1000 transformadas de Fourier de una imagen de, digamos $1.000 times 1.000$ = 1M pixels (seamos ingenuos).

La transformada de Fourier tiene un coste de $N \times log(N)$ donde N es el número de píxeles (véase [transformación de Fourier rapide](https://es.wikipedia.org/wiki/Transformada_r%C3%A1pida_de_Fourier)).
Si cada operación toma 8 ciclos de relojes como en el ejemplo anterior, el número de tiempos de reloj es entonces:

$$ N_{tick} = 1k \times 1M \times log(1M) \times 8 = 110G$

Es decir, 110 mil millones de operaciones. Un procesador de 1GHz hará esta reducción en 110 segundos.
Para ir más rapido, comprar un mejor procesador.
Para una calidad superior, más iteraciones se pueden realizar en serie.

<hr>

Para resumir esta sección: como era de esperar, una red de antenas real es más precisa pero más costosa que una red de flotadores.


# Opcional/ <a name="so_new_limit"></a> Limitaciones de la red de antenas

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
    <b>Dos ranuras</b>
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
    <b>Una ranura</b>
  </figcaption>
</figure>
</div>


<div style="display: block; clear: both;"></div>

<!-- Discretisation Right -->
<figure style="float: right; width:300px;" >
  <a name="f_parabol"></a>
  <img style='width:100%' src='Figure/54_parabola.svg' alt='missing'></img>
  <figcaption>
    <b>Interpolación de parábola:</b>
    Combinando la señal de las tres antenas, se simula una parábola agujereada.
  </figcaption>
</figure>


Las dos figuras anteriores representan la experiencia de [ranuras de Young] (https://es.wikipedia.org/wiki/Experimento_de_Young).
Se puede calcular que el lóbulo principal es dos veces más pequeño para una figura de difracción con dos aberturas separadas de una distancia "d" (véase la figura <a href="#f_fente2">dos ranuras</a>) que para una figura de difracción de una abertura de tamaño "d" (véase la figura <a href="#f_fente1">una ranura</a>).
Por lo tanto, la resolución es el doble para las pequeñas ranuras separadas.
Por el contrario, los lóbulos secundarios son más intensos y por lo tanto el ruido es superior.<br/>
En ambos casos, la resolución angular es de aproximadamente
<span class= 'box'>$\lambda/D$</span> radians. Donde D es el tamaño máximo de la apertura (potencialmente agujereada) y $\lambda$, para variar, la longitud de onda.

<div>
El tema de la forma perfecta de una parábola (e.d. ¿es necesario agujerearla?) es objeto de investigación.<sup>[+]<div class="description">
* [Canales 2006](https://spie.org/news/0452-improving-resolution-in-large-telescopes): Improving resolution in large Telescopios: Comparación de una máscara anular y una supergausiana.
* [Propuesta para un telescopio espacial](https://spie.org/news/0452-improving-resolution-in-large-telescopes): High-Resolution Imaging using Large Sparse-Aperture Telescopes
</div></sup>
</div>


<hr>

Aquí hay algunos enlaces para comprender la mecánica física del recorrido de la luz y que justifican el análisis anterior.

1. Propagaciones de la luz, formalismo sobre las ondas: avanza oscilando, girando en el plano complejo: [ecuación de Helmoth](https://es.wikipedia.org/wiki/Ecuaci%C3%B3n_de_Helmholtz).
2. El espectro angular es la transformada de Fourier de la forma del emisor: [ondas planas](https://en.wikipedia.org/wiki/Angular_spectrum_method)).
3. Una onda se comporta como si cada punto agitado se comportara como un emisor secundario: [principio de Huygens-Fresnel](https://es.wikipedia.org/wiki/Principio_de_Fresnel_-_Huygens).
4. Una onda que atraviesa una abertura se dispersará: [teoría de la difracción](https://fr.wikipedia.org/wiki/Th%C3%A9orie_de_la_diffraction).
5. Figura de difracción lejos de la apertura: [difracción de Fraunhoffer](https://es.wikipedia.org/wiki/Difracci%C3%B3n_de_Fraunhofer).
6. No se puede ver un objeto más pequeño que la longitud de onda: [difracción de Fresnel](https://es.wikipedia.org/wiki/Difracci%C3%B3n_de_Fresnel). ¡Pero esto no es para nosotros!



# <a name="s_conclusion"></a> Conclusión

<blockquote> Quid Novi </blockquote>

La sección 5 muestra que es posible detectar la agitación electrónica extraterrestre a través de otra inducida en la Tierra. En la sección 1 se indican las limitaciones. Las otras secciones explican cómo la correlación de varios receptores remotos puede empujar el límite a la de un telescopio del tamaño de su separación.

Ahora el lector debe haber entendido:

* El origen de la [limitación de telescopios](#s1_limit).
* [Como](#s3_modulo) determinar la posición angular de una fuente mediante la correlación entre dos receptores.
* La [diferencia entre interferometría y triangulación](#s41_triangulation).
* Por qué se necesitan más de dos receptores para [formar una imagen](#s43_image).
* Por qué el correlador tiene una importante [carga de cálculo](#s53_cost).
* Por qué la síntesis de apertura es más fácil con [antenas que con telescopios] (#s52_antenna_vs_telescope).

Esta guía práctica está completa.
Espero que lo hayas leído lentamente o la comprensión debe haber sido laboriosa.
De todos modos, gracias por la lectura y felicitaciones por el esfuerzo.
Si has aprendido algo nuevo, es una pequeña victoria.
Que la celebres para, mañana, despertar con más entusiasmo que ayer.


# <a name="s_link"></a> Enlaces para ir más lejos

<blockquote> Sic Itur ad Astra </blockquote>

* [Radioastronomía (presentaciones)](https://web.njit.edu/~Gary/728/).

#### Correlación

* [20 líneas](https://astronomy.swin.edu.au/cosmos/C/Correlator).

* [20 láminas](https://web.njit.edu/~Gary/728/Lecture7.html).

* [20 presentaciones](http://www.aoc.nrao.edu/events/synthesis/2004/presentations.html).

### Electromagnetismo e imágenes

* [Electrodinámica cuántica](http://www.johnboccio.com/courses/QESMS_2017/QED.pdf): QED por Richard Feynman, principio de Huygens-Fresnel (1678) operado por Feynman (1992) en la teoría cuántica de los campos. Explicación sin Matemáticas para todos.

* [Síntesis de apertura de Caltech](http://web.ipac.caltech.edu/staff/fmasci/home/astro_refs/InverseImageProblem.pdf): Simplemente Caltécnicamente perfecto.

* [Muestreo perfecto](https://svi.nl/IdealSampling): buena explicación de la tasa de Nyquist.

* [Sistemas ópticos limitados por difracción](https://es.wikipedia.org/wiki/Fonction_de_transfert_optique#Syst%C3%A8me_optique_limit%C3%A9_par_la_diffraction): de wikipedia con amor.

* [Visibilidad y mancha de Airy] (https://web.njit.edu/~Gary/728/Lecture6.htm)

* [Proceso de emisión en Astrofísica (libro, pdf)](http://www.bartol.udel.edu/~owocki/phys633/Radproc-Ryblightman.pdf): un fundamental escolar.

* [Guía interactiva de la Transformación de Fourier](https://betterexplained.com/articles/an-interactive-guidto-the-fourier-transform/)

* [Espectroscopia de ESO (pdf)](https://www.eso.org/sci/meetings/2015/eris2015/program.html): Introducción amable a la interferometría: "ERIS: Enhanced Resolution Imager and Spectrograph".

### Cosmología

* [Los diez cosmondements (pdf)](https://tinmarino.github.io/pdf/2020_10_command_en.pdf): de la vía y la virtud de la cosmología observacional.

* [Cosmocuentos (pdf)](http://astromania.cl/cosmocuentos/): cosmogonías de aficionados chilenos.


<footer>
Tinmarino.
</footer>
