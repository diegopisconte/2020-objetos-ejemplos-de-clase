# Clase de Colecciones: El ej�rcito de Dany

Los seguidores de Dany son caballeros, ex-mercenarios, ex-esclavos, y �dragones! Nos mand� un cuervo con los siguientes requerimientos para implementar en Wollok, y mejorar sus chances para quedarse con el trono de hierro:

1. Dany necesita saber si es una �true queen�, que se cumple si la motivaci�n de todos sus soldados (que pueden ser caballeros, ex-esclavos o ex-mercenarios) es mayor a 100.

2. Tambi�n desea saber cu�les de sus soldados son kamikazes para mandarlos a una misi�n suicida.
- Un caballero es kamikaze si es rom�ntico,
- un ex-esclavo si su odio al ex-amo es mayor a 20,
- y un ex-mercenario siempre lo es.

3. Determinar si Dany puede lanzar un ataque a�reo, que se sumple si alguno de sus dragones puede atacar. Un drag�n puede atacar si est� feliz (si su felicidad es mayor a 50) y si es adulto. Un drag�n es adulto si mide m�s de 15 metros y su potencia de fuego es mayor o igual a 10.

4. Para las reuniones estrat�gicas, Dany quiere saber la fuerza de su ej�rcito, esto se calcula sumando las fuerzas de todos sus soldados.
- La fuerza del caballero es el triple de su motivaci�n,
- la del ex-mercenario su motivaci�n aumentada en 50,
- y la del ex-esclavo la suma de su motivaci�n y su odio al ex-amo.

5. Nuestra reina quiere saber si puede combatir, que ser� cierto si la fuerza de su ej�rcito es mayor a 10000 � si puede lanzar un ataque a�reo.

6. Cuando ella da un discurso, aumenta la motivaci�n de sus soldados:
- Para los caballeros en 70 si es rom�ntico, sino en 30,
- para los ex-esclavos en 20,
- y para los ex-mercenarios en 10.

Adem�s, a sus dragones les aumenta la felicidad en 40 puntos porque les gusta escuchar la voz de su mam�.

7. Finalmente necesitamos simular un ataque a�reo contra un enemigo. Para lanzar un ataque a�reo, Dany busca un drag�n apto para la tarea y lo manda a atacar a su enemigo. Cuando un ej�rcito enemigo sufre un ataque a�reo, pierde a la mitad m�s d�bil de sus soldados. Adem�s la felicidad del drag�n que realiz� el ataque aumenta en 20 puntos.