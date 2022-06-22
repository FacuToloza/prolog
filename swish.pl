%clauses
transporte(roma,20).
transporte(londres,30).
transporte(tunez,10).

alojamiento(roma,hotel,50).
alojamiento(roma,hostal,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostal,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostal,20).
alojamiento(tunez,camping,5).
%finclauses
%maximos o minimos

%crear regla viaje

multiplicar(P,X,Y):- P is X*Y.
sumar(S,X,Y):- S is X+Y.
menor(X,Y):- X<Y.   


%viaje(C,S,H,P)    
%viajeeconomico(C,S,H,P,Pmax)
  
%mayor promedio ejemplo
%promedio(A,P):-..........
%los A con el mejor promedio
    %mejor_promedio(A,Pmax):-????
    %busco los contrarios primero
    %Alumno() X Alumno(), despues selecciono el mayor Prom1 < Prom2
    %Proyecto Pmin
    %diferencia P-Pmin, me da el maximo 
    %
%

viaje(C,S,H,P):-alojamiento(C,H,PH),multiplicar(PA,PH,S) ,transporte(C,PT),sumar(P,PA,PT).
     

viaje_semana(C,H,P):-alojamiento(C,H,PH) ,transporte(C,PT),sumar(P,PH,PT).  
  %producto cartesiano y proyeccion  
todos_los_precios(P1,P2):- viaje_semana(_,_,P1), viaje_semana(_,_,P2).

%seleccion de los mayores
precios_mayores(Pmayores):- todos_los_precios(Pmayores,P2), Pmayores>P2.


minimo_precio(Pminimo):- viaje_semana(_,_,Pminimo), not( precios_mayores(Pminimo)).
    
viaje_mas_economico(Pminimo):-
    minimo_precio(Pminimo),
    viaje_semana(_,_,Pminimo).


    
    
    
    
    
    
    
    
    
    
    
    