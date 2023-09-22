personalizar(1, 'No personalizada').
personalizar(2, 'Personalizada').

objetivo(1, hipertrofia).
objetivo(2, fuerza).

ubicacion(1, casa).
ubicacion(2, gimnasio).

experiencia(1, 'Sin experiencia').
experiencia(2, 'Ejercicio espor�dico').
experiencia(3, 'Ejercicio regular').

frecuencia(1).
frecuencia(2).
frecuencia(3).

ejercicio_musculo('Escapulares', espalda).
ejercicio_musculo('Dorsales en polea', espalda).
ejercicio_musculo('Remo Parado', espalda).
ejercicio_musculo('Press Plano', pecho).
ejercicio_musculo('Press inclinado', pecho).
ejercicio_musculo('Press TRX', pecho).
ejercicio_musculo('Press militar', hombros).
ejercicio_musculo('vuelos laterales', hombros).
ejercicio_musculo('Press con Barra', hombros).
ejercicio_musculo('Prensa de piernas inclinadas', isquios).
ejercicio_musculo('Peso muerto rumano', isquios).
ejercicio_musculo('Flexiones de caderas en m�quinas', isquios).
ejercicio_musculo('Curl con Barra w', biceps).
ejercicio_musculo('Curl con mancuernas', biceps).
ejercicio_musculo('Curl con polea alta', biceps).
ejercicio_musculo('Sentadilla', cuadriceps).
ejercicio_musculo('Prensa de piernas', cuadriceps).
ejercicio_musculo('Sentadilla B�lgara', cuadriceps).
ejercicio_musculo('Elevaciones de Talones Unilaterales', gemelos).
ejercicio_musculo('Salto Tijera', gemelos).
ejercicio_musculo('Elevaciones con talones en m�quina smith', gemelos).
ejercicio_musculo('Sentadilla sumo', aductores).
ejercicio_musculo('Estocadas laterales', aductores).
ejercicio_musculo('Sentadilla con bola suiza', aductores).
ejercicio_musculo('Extensiones de mu�eca con banda el�stica', antebrazo).
ejercicio_musculo('Curl de mu�eca con barra', antebrazo ).
ejercicio_musculo('Flexiones de mu�eca con cuerda en polea alta', antebrazo).
ejercicio_musculo('Shrugs en m�quina Smith', trapecio).
ejercicio_musculo('Encogimiento en Barra T', trapecio).
ejercicio_musculo('Encogimiento con Mancuernas', trapecio).
ejercicio_musculo('Elevaciones con piernas elevadas', abdominales).
ejercicio_musculo('Elevaciones de piernas en suspensi�n', abdominales).
ejercicio_musculo('Giros rusos', abdominales).
ejercicio_musculo('Superman', lumbares).
ejercicio_musculo('Hiperextensiones en el suelo', lumbares).
ejercicio_musculo('Plancha inversa', lumbares).
ejercicio_musculo('Hiperextensiones en m�quinas', lumbares).

ejercicio_dificultad(NombreEjercicio, NiveldeDificultad).

ejercicio_equipamiento(NombreEjercicio, EquipamientoNecesario).
%Ej. ejercicio_equipamiento('Press Plano', barra).

ejercicio_apto_casa(NombreEjercicio) :- ejercicio_equipamiento(NombreEjercicio, nada).

consulta:-
    writeln("Bienvenid@ a la consulta de rutinas, por favor ingrese los datos necesarios"),
    writeln("* - �Cu�l es su objetivo?"),
    writeln("1 - Hipertrofia"),
    writeln("2 - Fuerza"),
    read(OpcionObjetivo),
    objetivo(OpcionObjetivo, _),
    writeln("* - �C�mo calificar�a su experiencia?"),
    writeln("1 - Sin experiencia"),
    writeln("2 - Ejercicio espor�dico"),
    writeln("3 - Ejercicio regular"),
    read(OpcionExperiencia),
    experiencia(OpcionExperiencia, _),
    writeln("* - �D�nde realizar� la rutina?"),
    writeln("1 - En casa"),
    writeln("2 - En un gimnasio"),
    read(OpcionUbicacion),
    ubicacion(OpcionUbicacion, _),
    writeln("* - �Con cu�nta frecuencia?"),
    writeln("1 - "),
    writeln("2 - "),
    writeln("3 - "),
    read(OpcionFrecuencia),
    frecuencia(OpcionFrecuencia),
    consulta.
consulta.


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
%   Primer Semana   Segunda Semana   Tercer Semana .. Quinta Semana
%    Series x Rep   Series x Reps    Series x Reps   Series x rep



