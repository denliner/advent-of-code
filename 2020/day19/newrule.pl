rule(0,N,Char,R):-  N0 is N,rule(4,N0,Char,R1),N1 is R1+1,rule(1,N1,Char,R2),N2 is R2+1,rule(5,N2,Char,R3),N3 is R3+1,R is R3,L is R+1,string_length(Char,L).

rule(1,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(3,N1,Char,R2),N2 is R2+1,R is R2.
rule(1,N,Char,R):- N0 is N,rule(3,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(2,N,Char,R):- N0 is N,rule(4,N0,Char,R1),N1 is R1+1,rule(4,N1,Char,R2),N2 is R2+1,R is R2.
rule(2,N,Char,R):- N0 is N,rule(5,N0,Char,R1),N1 is R1+1,rule(5,N1,Char,R2),N2 is R2+1,R is R2.

rule(3,N,Char,R):- N0 is N,rule(4,N0,Char,R1),N1 is R1+1,rule(5,N1,Char,R2),N2 is R2+1,R is R2.
rule(3,N,Char,R):- N0 is N,rule(5,N0,Char,R1),N1 is R1+1,rule(4,N1,Char,R2),N2 is R2+1,R is R2.

rule(4,N,Char,R):- sub_string(Char, N, _, _, "a"), R is N.
rule(5,N,Char,R):- sub_string(Char, N, _, _, "b"), R is N.

mylist(["ababbb","bababa","abbbab","aaabbb","aaaabbb"]).

countRule([],_,Count):- Count is 0.

countRule([T],_,Count):-  
                        countRule([],_,R),
                        rule(0,0,T,_),
                        Count is R+1.

countRule([T],_,Count):-  
                        countRule([],_,R),
                        Count is R.


countRule([H|T],_,Count):- countRule(T,_,R),
                           rule(0,0,H,_),
                           Count is R+1.

countRule([H|T],_,Count):- countRule(T,_,R),
                           Count is R.