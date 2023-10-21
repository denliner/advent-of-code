rule(0,N,Char,R):- rule(1,N,Char,R1),N1 is R1+1, rule(2,N1,Char,R2),R is R2.
rule(1,N,Char,R):- sub_string(Char, N, _, _, "a"),R is N.  
rule(2,N,Char,R):- rule(1,N,Char,R1),N1 is R1+1, rule(3,N1,Char,R2),R is R2.
rule(2,N,Char,R):- rule(3,N,Char,R1),N1 is R1+1, rule(1,N1,Char,R2),R is R2.
rule(3,N,Char,R):-  sub_string(Char, N, _, _, "b"), R is N.