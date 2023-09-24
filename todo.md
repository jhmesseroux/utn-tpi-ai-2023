### variable a tener en cuenta

1. objetivo -> perder peso, ganar músculo, mejorar la resistencia, etc.
2. disponibilidad de tiempo -> [1,2,3,4,5,6]
3. Recursos disponibles
4. Edad y género
5. Metas a corto y largo plazo

https://github.com/jhmesseroux/utn-tpi-ai-2023

# salidas

1.  % ejercicio_dificultad(NombreEjercicio, NiveldeDificultad).

% ejercicio_equipamiento(NombreEjercicio, EquipamientoNecesario).
%Ej. ejercicio_equipamiento('Press Plano', barra).

% ejercicio_apto_casa(NombreEjercicio) :- ejercicio_equipamiento(NombreEjercicio, nada).

%Metodo que crea la rutina, por ahora tiene solo un metodo implementado
% 2-fuerza | 2-esporadico | 2-gimnasio | 1-2horas

% [5 - 8] - fuerzas
% [10 -15] - hipertrofia

% Entrada
% Personalizada || No personalizada
% Hipertrofia || Fuerza
% En Casa || Gym
% Frecuencia.. en hora por dia(entre 1 y 3)

% Salida
% Ejercicio 1
% Ejercicio 2
% ....
% Ejercio N
% Primer Semana Segunda Semana Tercer Semana .. Quinta Semana
% Series x Rep Series x Reps Series x Reps Series x rep

% lista_ejercicios(Ubicacion,Ejercicio,Lista):- ejercicio(Ubicacion,Ejercicio,Musculo). % EJ ejercicio('Gymnasio', Escapulares)
% ejercicio_musculo('Nombre_Ejercicio', ParteCuerpo ,Ubicaciones,Dificultad).
