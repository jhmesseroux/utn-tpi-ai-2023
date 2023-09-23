% En este archivo se provaran los metodos

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

ejercicio_musculo('Escapulares', espalda, casa).
ejercicio_musculo('Dorsales en polea', espalda, gimnasio).
ejercicio_musculo('Press Plano', pecho,casa).
ejercicio_musculo('Press TRX', pecho,gimnasio).
ejercicio_musculo('Press militar', hombros,gimnasio).
ejercicio_musculo('vuelos laterales', hombros,casa).




% Ejemplo de uso: filtrar_ejercicios(Ubi,[],[],ListaEjercicios) input: Ubicacion y inicializacion de las listas '[]' output: Lista de ejercicios filtrados por ubicacion 1 de cada musculo 

filtrar_ejercicios(Ubicacion,MusculosPrevios,AcumuladorEjercicios,ListaEjercicios):- ejercicio(Ejercicio,Ubicacion,Musculo),
                                                                                    \+pertenece(Musculo,MusculosPrevios),
                                                                                    filtrar_ejercicios(Ubicacion,[Musculo|MusculosPrevios],[Ejercicio|AcumuladorEjercicios],ListaEjercicios).
filtrar_ejercicios(_,_,AcumuladorEjercicios,AcumuladorEjercicios).



%Metodos de listas
pertenece(H,[H|_]).
pertenece(H,[_|T]):-pertenece(H,T).