%Una agencia matrimonial tiene un fichero de candidatos al matrimonio organizado 
%según las declaraciones siguientes:
%hombre(N,A,C,E).
%mujer(N,A,C,E).
%donde n es el nombre de un hombre o una mujer, a su altura (alta, media, baja), c el 
%
%color de su cabello (rubio, castaño, pelirrojo, negro) y e su edad (joven, adulta, vieja).

%gusta(N,M,L,S).
%que indica que a la persona n le gusta el género de música m (clásica, pop, jazz), el 
%
%género de literatura L (aventura, ciencia-ficción, policíaca), y practica el deporte s 
%
%(tenis, natación, jogging).
%busca(N,A,C,E).
%que expresa que la persona n busca una pareja de altura a, con cabello color c y edad 
%e. 
%Se considera que dos personas x e y de sexos diferentes son adecuadas si x conviene 
%a y e y conviene a x.
% Se dice que x conviene a y si x conviene físicamente a y (la 
%altura, edad y color de cabello de y son los que busca x) y si, además, los gustos de 
%x e y en música, literatura y deporte coinciden.

hombre(juan,alta,rubio,joven).
hombre(martin,bajo,pelirrojo,joven).
hombre(sebastian,alta,negro,adulta).

mujer(maria,alta,castaño,joven).
mujer(erica,alta,negro,adulta).

gusta(juan,pop,ciencia-ficcion,natacion).
gusta(maria,pop,policiaca,tenis).
gusta(erica,clasica,aventura,jogging).
gusta(sebastian,clasica,aventura,jogging).


busca(erica,alta,negro,adulta).
busca(sebastian,alta,castaño,adulta).

persona(N,A,C,E):-hombre(N,A,C,E).
persona(N,A,C,E):-mujer(N,A,C,E).

genero_distinto(X,Y):- hombre(X,_,_,_),mujer(Y,_,_,_).
genero_distinto(X,Y):- hombre(Y,_,_,_),mujer(X,_,_,_).

gustos_coincidentes(X,Y):- gusta(X,M,L,S),gusta(Y,M,L,S), dif(X,Y).


puede_gustar(X,Y):- busca(X,A,C,E), persona(Y,A,C,E). 

conviene(X,Y):- genero_distinto(X,Y),
    gustos_coincidentes(X,Y),
    puede_gustar(X,Y),
    puede_gustar(Y,X).
    
   
    
         
       
    
    
    
    





