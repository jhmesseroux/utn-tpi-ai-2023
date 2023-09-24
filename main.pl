
:- dynamic objetivo/2.
:- dynamic experiencia/2.
:- dynamic ubicacion/2.
:- dynamic frecuencia/2.
:- dynamic ejercicio_musculo/4.

consulta:-
    writeln("*****************************************************************************************************************"),
    writeln("*                                                                                                               *"),
    writeln("*                                                                                                               *"),
    writeln("*                  Bienvenid@ a la consulta de rutinas, por favor ingrese los datos necesarios                  *"),
    writeln("*                                                                                                               *"),
    writeln("*                                                                                                               *"),
    writeln("*****************************************************************************************************************"),
    nl,
    leerDatos(),
    writeln("* - �Cu�l es su objetivo?"),
    writeln("   1 - Hipertrofia"),
    writeln("   2 - Fuerza"),
    read(OpcionObjetivo),
    objetivo(OpcionObjetivo, _),
    write(- OpcionObjetivo),
    nl,

    writeln("* - �C�mo calificar�a su experiencia?"),
    writeln("   1 - Sin experiencia"),
    writeln("   2 - Ejercicio espor�dico"),
    writeln("   3 - Ejercicio regular"),
    read(OpcionExperiencia),
    nl,
    experiencia(OpcionExperiencia, _),
    writeln("* - �D�nde realizar� la rutina?"),
    writeln("   1 - En casa"),
    writeln("   2 - En un gimnasio"),
    read(OpcionUbicacion),
    ubicacion(OpcionUbicacion, _),
    nl,
    writeln("* - �Con cu�nta frecuencia?"),
    writeln("   1 - 1 Horas"),
    writeln("   2 - 2 Horas"),
    writeln("   3 - 3 Horas"),
    read(OpcionFrecuencia),
    frecuencia(OpcionFrecuencia),
    nl,
    crear_rutina(OpcionObjetivo,OpcionExperiencia,OpcionFrecuencia,OpcionUbicacion),
    writeln("*****************************************************************************************************************"),
    writeln('Quiere realizar otra consulta? (s/n)'),
        read(Respuesta),
        (Respuesta == 's' -> consulta; writeln("Hasta luego!")).
consulta.

leerDatos() :- consult('datos.txt').

crear_rutina(Objetivo,Experiencia,Frecuencia,Ubicacion):-filtrar_ejercicios(Ubicacion,[],[],ListaEjercicios,Experiencia),mostrarRutina(ListaEjercicios,Objetivo,Frecuencia),nl,nl.


%Metodo que filtra ejercicios por musculo y ubicacion -> Teniendo en cuenta que la base de hechos de ejercicios es ejercicio(Ejercicio,Ubicacion,Musculo) Ej: ejercicio('Pecho',gimnasio,espalda).
% ejercicio_musculo('Hiperextensiones en m�quinas', lumbares,[1,2],2).

filtrar_ejercicios(Ubicacion,MusculosPrevios,AcumuladorEjercicios,ListaEjercicios,Experiencia):-         
        ejercicio_musculo(Ejercicio,Musculo,Ubicaciones,Experiencia),pertenece(Ubicacion,Ubicaciones),
        \+pertenece(Musculo,MusculosPrevios),
        filtrar_ejercicios(Ubicacion,[Musculo|MusculosPrevios],[Ejercicio|AcumuladorEjercicios],ListaEjercicios,Experiencia).
        filtrar_ejercicios(_,_,AcumuladorEjercicios,AcumuladorEjercicios,_).

mostrarRutina(ListaEjercicios,Objetivo,Frecuencia):- 
        writeln("Su rutina es la siguiente:"),nl,
        mostrarEjercicios(ListaEjercicios,Objetivo,Frecuencia,1).

mostrarEjercicios([],_,_,_).
mostrarEjercicios([Ejercicio|RestoEjercicios],Objetivo,Frecuencia,NumeroEjercicio):- 
        ejercicio_musculo(Ejercicio,Musculo,_,_),
        write(NumeroEjercicio - " Nombre  " :  Ejercicio | " Musculo " : Musculo | " " ),
        mostrarSeries(Objetivo,Frecuencia),nl,
        NumeroEjercicioSiguiente is NumeroEjercicio + 1,
        mostrarEjercicios(RestoEjercicios,Objetivo,Frecuencia,NumeroEjercicioSiguiente).


mostrarSeries(1,1):- write("5-8 series de 5 repeticiones").
mostrarSeries(1,2):- write("5-8 series de 10 repeticiones").
mostrarSeries(1,3):- write("5-8 series de 15 repeticiones").

mostrarSeries(2,1):- write("10-15 series de 5 repeticiones").
mostrarSeries(2,2):- write("10-15 series de 10 repeticiones").
mostrarSeries(2,3):- write("10-15 series de 15 repeticiones").

mostrarSeries(_,_):- write("No se pudo generar la cantidad de series y repeticiones... 😖").

pertenece(H,[H|_]).
pertenece(H,[_|T]):-pertenece(H,T).

text :- consult('datos.txt'),write('Test :: '),objetivo(1,Objetivo),write(Objetivo),nl.
