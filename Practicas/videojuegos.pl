persona(erick,23).
persona(juan,12).
persona(ana,15).
persona(catalina,16).
persona(pablo,7).
persona(alondra,12).
persona(sharon,18).
persona(tatiana,19).
persona(esteban,14).
persona(grefg,24).
persona(aurelio,34).
persona(ariana,20).
persona(jose,11).
persona(teylor,17).
persona(rosa,21).

videojuego(gta,18).
videojuego(cod,18).
videojuego(crash,3).
videojuego(sims,10).
videojuego(culebrita,0).
videojuego(gato,0).
videojuego(fortnite,12).
videojuego(coc,3).
videojuego(lol,10).
videojuego(fifa21,0).
videojuego(dota,12).


puede_jugar(Nombre,Nombre_juego):-
    persona(Nombre, Edad),
    videojuego(Nombre_juego, Edad_minima),
    Edad >= Edad_minima.
