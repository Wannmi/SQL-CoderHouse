[Inicio](../../README.md)
# Torneo de Ping Pong

## Descripcion del proyecto

El proyecto se basa en un ente fiscalizador de una liga de Ping Pong con la salvedad de que no todas las fechas disputadas formen parte del campeonato. Es decir, se podra planear una liga de 6 torneos puntuados por año para revelar al final campeon pero ademas se podran disputar otros torneos no puntuados (amistosos, reencuentro, etc).

La liga tendra un nombre, una fecha de inicio, cantidad de fechas a disputarse, una tabla de posiciones y acceso a cada resultado individual.


El torneo debera ser unico, tendra una fecha y lugar dodne se disputara, al cual asistira una cierta cantidad de jugadores. El torneo se dividira por categorias cada una tendra premios y puntos para cada posicion de los competidores y tendra historial de partidos. Ademas se debera indicar el tipo de encuentro(Amistoso, liga, reencuentro). Cada torneo tendra un historial de los resultados de cada encuentro y posiciones generales.

_Esta parte es interesante para realizar un CRUD._

### Comentarios sobre la descripcion:

Falta describir:
* Historial de partidos

    Es una tabla?

    _Esta parte es interesante para realizar un buscador._

* Datos personales de jugadores
* Sanciones


# Consulta:

* ### La descipcion de la tematica de la base de datos esta bien?

* ### Me podras dar algun comentario sobre el diagrama de entidad de relacion? Hasta ahora solo plantee el torneo y aun faltan tablas, pero queria saber si va bien encaminado.

![Tabla](./torneo.png)

---


----

El ente fiscalizador realizara jornadas de competencias de ping pong donde tendra acceso a los usuarios inscriptos llamados participantes.
Cada jornada tendra torneos en donde cada uno de ellos correspondera a una categoria y modalidad(Ej Sub-25, parejas), por lo tanto un usuario podra participar en uno o mas torneos de la jornada. Ademas la jornada podra ser puntuada para el campeonato anual o podra ser un encuentro amistoso o de otro indole.
Por otro lado, la jornada tambien almacenara los datos como sede y fecha a disputarse la misma.
Los campeonatos tendran un año, un nombre, tendran varias jornadas y tendra los resultados.



El proyecto se basa en un ente fiscalizador de una liga de Ping Pong con la salvedad de que no todas las fechas disputadas formen parte del campeonato. Es decir, se podra planear una liga de 6 torneos puntuados por año para revelar al final campeon pero ademas se podran disputar otros torneos no puntuados (amistosos, reencuentro, etc).

La liga tendra un nombre, una fecha de inicio, cantidad de fechas a disputarse, una tabla de posiciones y acceso a cada resultado individual.


El torneo debera ser unico, tendra una fecha y lugar dodne se disputara, al cual asistira una cierta cantidad de jugadores. El torneo se dividira por categorias cada una tendra premios y puntos para cada posicion de los competidores y tendra historial de partidos. Ademas se debera indicar el tipo de encuentro(Amistoso, liga, reencuentro). Cada torneo tendra un historial de los resultados de cada encuentro y posiciones generales.

_Esta parte es interesante para realizar un CRUD._

### Comentarios sobre la descripcion:

Falta describir:
* Historial de partidos

    Es una tabla?

    _Esta parte es interesante para realizar un buscador._

* Datos personales de jugadores
* Sanciones


# Consulta:

* ### La descipcion de la tematica de la base de datos esta bien?

* ### Me podras dar algun comentario sobre el diagrama de entidad de relacion? Hasta ahora solo plantee el torneo y aun faltan tablas, pero queria saber si va bien encaminado.


