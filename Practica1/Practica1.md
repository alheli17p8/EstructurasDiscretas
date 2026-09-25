# PRACTICA 1

## **1.-¿Cuales son las principales diferencias entre Haskell y Rust?**

Bueno, para empezar su enfoque es distinto, 
ya que mientras Haskell es un lenguaje de programacion funcional puro que destaca mas por su enfoque en lazy evaluation 
(una tecnica de programacion que retrasa el calculo de una expresion hasta el mismo momento en que su valor es realmente necesario),
 en este lenguaje los programas se crean a partir de la combinacion de funciones matematicas puras,
  lo que significa que no hay efectos secundarios ocultos ni nada parecido. 
  Su sistema de tipos es estatico y muy expresivo, utilizando una inferencia de tipos avanzada que se asegura de que el codigo sea valido en el momento de la compilacion.

Por otro lado tenemos que Rust es un lenguaje de programacion de sistemas que se ha creado para ofrecer un muy buen rendimiento, seguridad en la memoria y la capacidad de manejar la concurrencia sin que ocurran carreras de datos. Ademas a diferencia de Haskell, Rust si mezcla caracteristicas de los paradigmas imperactivo, estructurado y funcional, ademas de que tambien incorpora elementos orientados a objetos.
 Lo que realmente lo distingue es que no necesita un recolector de basura (garbage collector) para gestionar la memoria, en vez de eso implementa un sistema estricto de propiedad (ownership), prestamos (borrowing) y tiempos de vida (lifetimes) que se va verificando durante la compilación

 ## **2.-¿Por qué Haskell no ha alcanzado una adopción significativa en la industria del software?**
 Esto se debe en gran parte a su compliacada curva de aprendizaje, que se basa en conceptos matematicos avanzados como las monadas (permite encadenar operaciones secuenciales y manejar efectos secundarios) y la pureza funcional.
 Ademas lazy evaluation puede complicar el manejo de la memoria y dificultar el diagnostico de problemas de rendimiento,
 si a todo esto tambien le sumamos que hay un mercado laboral muy limitado, donde los costos de capacitacion son altos 
 y su ecosistema esta fragmentado en comparacion de otras opciones mas comerciales.
 Por si fuera poco, lenguajes como Rust, TypeScript,etc, han incorporado muchas de sus mejores funciones,
 brindando gran parte de sus ventajas sin la rigidez de un modelo puramente funcional.

 ## *3.-Si tuvieras que explicarle a una persona que no es de CC la función que cumple Git frente a la de GitHub, ¿cómo se lo explicarías?**

Le diria que git es algo asi como el deshacer de word y al mismo tiempo como un tipo de Whatssap donde en vez de mensajes van quedando todos los cambios u acciones,
asi si mas adelante te equivocas puedes deshacer o regresar en el momento exacto que necesites,
asi como tambien puedes ver absolutamente todo lo que se hizo en orden.

Para explicarle que es GitHub le diria que es como un google drive donde en vez de subir tus archivos por correo u otra cosa,
los subes por medio de Git, y asi puedes tener un respaldo seguro que puedes consultar en cualquier dispositivo mientrastengas tu cuenta

### ***REFERENCIAS***:

-The Power Business School. (s. f.). Haskell: Qué es, para qué sirve y características. https://thepower.education/blog/tech/haskell-lenguaje-de-programacion
-Microsoft. (2026, 20 de septiembre). Información general sobre el desarrollo en Windows con Rust. Microsoft Learn. https://learn.microsoft.com/es-es/windows/dev-environment/rust/overview
-Liamzy. (2023, 12 de julio). Commercial Haskell should go after Python / Julia, not Rust. Haskell Community Discourse. https://discourse.haskell.org/t/commercial-haskell-should-go-after-python-julia-not-rust/69