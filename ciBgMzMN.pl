es_un_pais(argentina).
es_un_pais(brasil).
es_un_pais(uruguay).
es_un_pais(chile).

limita_con(argentina,brasil).
limita_con(argentina, uruguay).
limita_con(argentina,chile).
limita_con(brasil,uruguay).

es_limitrofe(A,B):- 
    (es_un_pais(A),es_un_pais(B)),
    (limita_con(A,B);limita_con(B,A)),
    dif(A,B).

%es_translimitrofe(A,B):-
 %   ((dif(A,B)),
  %  (not(es_limitrofe(A,B))),
   % (es_limitrofe(A,_),es_limitrofe(B,_))).
%habia que forzar que C sea necesario

es_translimitrofe(A,B):-
	dif(A,B),
    es_limitrofe(A,C),
    es_limitrofe(C,B),
    not(es_limitrofe(A,B)).%proyeccion 