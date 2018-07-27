# Clase de composici�n: Juego de Rol

## Primera iteraci�n: Punto de partida

Un importante miembro de las industrias de los videojuegos, est� modelando su primer universo de rol para lo cual (por el momento) existen  de tres tipos de unidades: caballero, palad�n y arquero.

Los arqueros cuando atacan a otras unidades realizan 25 puntos de da�o, los caballeros 30 y los paladines 20. Adem�s los paladines al atacar recuperan 3 puntos de vida.

## Segunda iteraci�n: Armas y armaduras

Se incorpora a lo anterior que toda unidad tiene una armadura, de modo que al recibir da�o por un ataque la vida que pierde ser� el da�o del ataque - la resistencia de la armadura. Cada vez que la unidad es atacada, la resistencia de la armadura disminuye en 1.

Por otro lado, el da�o que realizaba cada tipo de unidad era en realidad lo que se correspond�a a su arma:
- Espada: al atacar realiza 20 de da�o
- Mandoble: al atacar realiza 30 de da�o
- Arco: al atacar realiza 25 de da�o

Y queremos poder crear una unidad que use un arma cualquiera. Eso implica que podr�an haber paladines con espada, con mandoble o con arco.

## Tercer iteraci�n: Chamanes

Muy contentos con nuestra soluci�n nos piden un �ltimo requerimiento, modelar a los Chamanes de fuego y de hielo:

Los chamanes se diferencian de las unidades que modelamos hasta ahora en que no usan armas, y por ende su ataque es distinto. Cuando atacan a una unidad si es un cham�n de fuego, queman a la unidad y si es un cham�n de hielo, la congelan.

Cuando una unidad es congelada pierde 10 puntos de vida y no puede atacar hasta que se descongele, lo cual sucede si es quemado o si recibe 3 ataques f�sicos ya que rompen el hielo (que ser�an los ataques de las unidades armadas). Los chamanes de fuego se comportan igual pero pierden 30 puntos de vida extra.

Cuando una unidad es quemada, si estaba congelado s�lo se descongela, de lo contrario al ser quemado pierde 20 puntos de vida en ese momento y queda quemado, a menos que sea un cham�n de fuego, que s�lo pierde 10 puntos de vida . Si una unidad quemada es congelada, deja de estar quemada y sigue las mismas reglas que se explicaron reci�n.

Una unidad que est� quemada recibe el doble de da�o por ataques f�sicos, y a su vez cuando ataca:
- si es un cham�n de hielo, adem�s de congelar al enemigo, deja de estar quemado
- las unidades armadas aumentan en 10 el da�o que realizan con su ataque a la unidad contraria, pero tambi�n pierden un punto de vida al finalizar su ataque por estar quemados.

Un chaman adem�s puede usar una habilidad especial: Curar una unidad, lo que aumenta 10 de vida de una unidad.
Adem�s cuando un cham�n de fuego cura una unidad congelada, la descongela, y si un cham�n de hielo cura una unidad quemada, deja de estar quemada.

Ah! Y si una unidad se muere en alg�n momento (porque su vida baja a 0):
no puede realizar ataques
no puede ser curada
no puede ser atacada
