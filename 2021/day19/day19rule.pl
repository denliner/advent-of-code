:- use_module(library(pio)).


rule(101,N,Char,R):-  N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(64,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(83,N,Char,R):- N0 is N,rule(132,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(83,N,Char,R):- N0 is N,rule(108,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(61,N,Char,R):-  N0 is N,rule(19,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(33,N,Char,R):- N0 is N,rule(126,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(33,N,Char,R):- N0 is N,rule(68,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(80,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(48,N1,Char,R2),N2 is R2+1,R is R2.
rule(80,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(91,N1,Char,R2),N2 is R2+1,R is R2.

rule(47,N,Char,R):- N0 is N,rule(38,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(47,N,Char,R):- N0 is N,rule(64,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(40,N,Char,R):- N0 is N,rule(25,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(40,N,Char,R):- N0 is N,rule(93,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(18,N,Char,R):- N0 is N,rule(38,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(18,N,Char,R):- N0 is N,rule(108,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(2,N,Char,R):- sub_string(Char, N, _, _, "a"), R is N.
rule(74,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(108,N1,Char,R2),N2 is R2+1,R is R2.
rule(74,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(12,N1,Char,R2),N2 is R2+1,R is R2.

rule(41,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(17,N1,Char,R2),N2 is R2+1,R is R2.
rule(41,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(58,N1,Char,R2),N2 is R2+1,R is R2.

rule(56,N,Char,R):- N0 is N,rule(125,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(56,N,Char,R):- N0 is N,rule(132,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(66,N,Char,R):- N0 is N,rule(12,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(66,N,Char,R):- N0 is N,rule(27,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(62,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(52,N1,Char,R2),N2 is R2+1,R is R2.
rule(62,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(125,N1,Char,R2),N2 is R2+1,R is R2.

rule(58,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(128,N1,Char,R2),N2 is R2+1,R is R2.
rule(58,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(99,N1,Char,R2),N2 is R2+1,R is R2.

rule(89,N,Char,R):- N0 is N,rule(110,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(89,N,Char,R):- N0 is N,rule(3,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(30,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(85,N1,Char,R2),N2 is R2+1,R is R2.
rule(30,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(21,N1,Char,R2),N2 is R2+1,R is R2.

rule(20,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(70,N1,Char,R2),N2 is R2+1,R is R2.
rule(20,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(111,N1,Char,R2),N2 is R2+1,R is R2.

rule(85,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(115,N1,Char,R2),N2 is R2+1,R is R2.
rule(85,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(52,N1,Char,R2),N2 is R2+1,R is R2.

rule(98,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(46,N1,Char,R2),N2 is R2+1,R is R2.
rule(98,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(10,N1,Char,R2),N2 is R2+1,R is R2.

rule(12,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(12,N,Char,R):- N0 is N,rule(43,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(99,N,Char,R):- N0 is N,rule(102,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(99,N,Char,R):- N0 is N,rule(56,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(127,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(119,N1,Char,R2),N2 is R2+1,R is R2.
rule(127,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(100,N1,Char,R2),N2 is R2+1,R is R2.

rule(53,N,Char,R):- N0 is N,rule(125,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(53,N,Char,R):- N0 is N,rule(108,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(15,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(27,N1,Char,R2),N2 is R2+1,R is R2.
rule(15,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(108,N1,Char,R2),N2 is R2+1,R is R2.

rule(22,N,Char,R):- N0 is N,rule(95,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(22,N,Char,R):- N0 is N,rule(61,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(109,N,Char,R):- N0 is N,rule(115,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(109,N,Char,R):- N0 is N,rule(46,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(90,N,Char,R):- N0 is N,rule(76,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(90,N,Char,R):- N0 is N,rule(121,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(37,N,Char,R):- N0 is N,rule(15,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(37,N,Char,R):- N0 is N,rule(23,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(27,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(27,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(104,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(46,N1,Char,R2),N2 is R2+1,R is R2.
rule(104,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(12,N1,Char,R2),N2 is R2+1,R is R2.

rule(32,N,Char,R):-  N0 is N,rule(64,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(26,N,Char,R):- N0 is N,rule(35,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(26,N,Char,R):- N0 is N,rule(32,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(123,N,Char,R):- N0 is N,rule(131,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(123,N,Char,R):- N0 is N,rule(89,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(21,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(132,N1,Char,R2),N2 is R2+1,R is R2.
rule(21,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(115,N1,Char,R2),N2 is R2+1,R is R2.

rule(95,N,Char,R):- N0 is N,rule(112,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(95,N,Char,R):- N0 is N,rule(125,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(79,N,Char,R):- N0 is N,rule(88,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(79,N,Char,R):- N0 is N,rule(60,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(34,N,Char,R):- N0 is N,rule(107,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(34,N,Char,R):- N0 is N,rule(133,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(6,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(101,N1,Char,R2),N2 is R2+1,R is R2.
rule(6,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(110,N1,Char,R2),N2 is R2+1,R is R2.

rule(55,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(112,N1,Char,R2),N2 is R2+1,R is R2.
rule(55,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(64,N1,Char,R2),N2 is R2+1,R is R2.

rule(10,N,Char,R):-  N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(115,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(115,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(39,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(61,N1,Char,R2),N2 is R2+1,R is R2.
rule(39,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(81,N1,Char,R2),N2 is R2+1,R is R2.

rule(42,N,Char,R):- N0 is N,rule(92,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(42,N,Char,R):- N0 is N,rule(124,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(105,N,Char,R):- N0 is N,rule(38,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(105,N,Char,R):- N0 is N,rule(10,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(7,N,Char,R):- N0 is N,rule(10,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(7,N,Char,R):- N0 is N,rule(27,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(106,N,Char,R):- N0 is N,rule(87,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(106,N,Char,R):- N0 is N,rule(1,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(75,N,Char,R):-  N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(46,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(28,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(71,N1,Char,R2),N2 is R2+1,R is R2.
rule(28,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(16,N1,Char,R2),N2 is R2+1,R is R2.

rule(120,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(27,N1,Char,R2),N2 is R2+1,R is R2.
rule(120,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(112,N1,Char,R2),N2 is R2+1,R is R2.

rule(100,N,Char,R):- N0 is N,rule(69,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(100,N,Char,R):- N0 is N,rule(109,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(102,N,Char,R):- N0 is N,rule(46,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(102,N,Char,R):- N0 is N,rule(132,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(5,N,Char,R):- N0 is N,rule(39,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(5,N,Char,R):- N0 is N,rule(51,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(14,N,Char,R):- N0 is N,rule(57,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(14,N,Char,R):- N0 is N,rule(96,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(8,N,Char,R):-  N0 is N,rule(42,N0,Char,R1),N1 is R1+1,R is R1,L is R+1,string_length(Char,L).

rule(25,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(59,N1,Char,R2),N2 is R2+1,R is R2.
rule(25,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(67,N1,Char,R2),N2 is R2+1,R is R2.

rule(3,N,Char,R):- N0 is N,rule(19,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(3,N,Char,R):- N0 is N,rule(52,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(59,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(74,N1,Char,R2),N2 is R2+1,R is R2.
rule(59,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(83,N1,Char,R2),N2 is R2+1,R is R2.

rule(87,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(72,N1,Char,R2),N2 is R2+1,R is R2.
rule(87,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(78,N1,Char,R2),N2 is R2+1,R is R2.

rule(130,N,Char,R):- N0 is N,rule(111,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(130,N,Char,R):- N0 is N,rule(117,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(112,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(43,N1,Char,R2),N2 is R2+1,R is R2.
rule(112,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(116,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(38,N1,Char,R2),N2 is R2+1,R is R2.
rule(116,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(108,N1,Char,R2),N2 is R2+1,R is R2.

rule(17,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(122,N1,Char,R2),N2 is R2+1,R is R2.
rule(17,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(29,N1,Char,R2),N2 is R2+1,R is R2.

rule(124,N,Char,R):- N0 is N,rule(41,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(124,N,Char,R):- N0 is N,rule(40,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(11,N,Char,R):-  N0 is N,rule(42,N0,Char,R1),N1 is R1+1,rule(31,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(38,N,Char,R):-  N0 is N,rule(43,N0,Char,R1),N1 is R1+1,rule(43,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(44,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(123,N1,Char,R2),N2 is R2+1,R is R2.
rule(44,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(114,N1,Char,R2),N2 is R2+1,R is R2.

rule(23,N,Char,R):-  N0 is N,rule(12,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(29,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(113,N1,Char,R2),N2 is R2+1,R is R2.
rule(29,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(129,N1,Char,R2),N2 is R2+1,R is R2.

rule(121,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(10,N1,Char,R2),N2 is R2+1,R is R2.
rule(121,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(19,N1,Char,R2),N2 is R2+1,R is R2.

rule(93,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(26,N1,Char,R2),N2 is R2+1,R is R2.
rule(93,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(36,N1,Char,R2),N2 is R2+1,R is R2.

rule(13,N,Char,R):- N0 is N,rule(19,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(13,N,Char,R):- N0 is N,rule(46,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(107,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(132,N1,Char,R2),N2 is R2+1,R is R2.
rule(107,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(10,N1,Char,R2),N2 is R2+1,R is R2.

rule(54,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(27,N1,Char,R2),N2 is R2+1,R is R2.
rule(54,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(12,N1,Char,R2),N2 is R2+1,R is R2.

rule(63,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(105,N1,Char,R2),N2 is R2+1,R is R2.
rule(63,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(82,N1,Char,R2),N2 is R2+1,R is R2.

rule(84,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(37,N1,Char,R2),N2 is R2+1,R is R2.
rule(84,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(73,N1,Char,R2),N2 is R2+1,R is R2.

rule(52,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(52,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(50,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(111,N1,Char,R2),N2 is R2+1,R is R2.
rule(50,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(9,N1,Char,R2),N2 is R2+1,R is R2.

rule(111,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(112,N1,Char,R2),N2 is R2+1,R is R2.
rule(111,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(27,N1,Char,R2),N2 is R2+1,R is R2.

rule(82,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(46,N1,Char,R2),N2 is R2+1,R is R2.
rule(82,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(108,N1,Char,R2),N2 is R2+1,R is R2.

rule(118,N,Char,R):- sub_string(Char, N, _, _, "b"), R is N.
rule(133,N,Char,R):-  N0 is N,rule(115,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(103,N,Char,R):- N0 is N,rule(34,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(103,N,Char,R):- N0 is N,rule(22,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(36,N,Char,R):- N0 is N,rule(66,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(36,N,Char,R):- N0 is N,rule(65,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(31,N,Char,R):- N0 is N,rule(33,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(31,N,Char,R):- N0 is N,rule(79,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(69,N,Char,R):- N0 is N,rule(12,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(69,N,Char,R):- N0 is N,rule(115,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(122,N,Char,R):- N0 is N,rule(54,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(122,N,Char,R):- N0 is N,rule(66,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(114,N,Char,R):- N0 is N,rule(6,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(114,N,Char,R):- N0 is N,rule(80,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(92,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(14,N1,Char,R2),N2 is R2+1,R is R2.
rule(92,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(44,N1,Char,R2),N2 is R2+1,R is R2.

rule(0,N,Char,R):-  N0 is N,rule(8,N0,Char,R1),N1 is R1+1,rule(11,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(117,N,Char,R):- N0 is N,rule(132,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(117,N,Char,R):- N0 is N,rule(108,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(76,N,Char,R):- N0 is N,rule(64,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(76,N,Char,R):- N0 is N,rule(27,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(126,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(28,N1,Char,R2),N2 is R2+1,R is R2.
rule(126,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(127,N1,Char,R2),N2 is R2+1,R is R2.

rule(113,N,Char,R):- N0 is N,rule(125,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(113,N,Char,R):- N0 is N,rule(19,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(43,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,R is R1.
rule(43,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,R is R1.

rule(46,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(46,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(132,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(132,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(49,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(130,N1,Char,R2),N2 is R2+1,R is R2.
rule(49,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(50,N1,Char,R2),N2 is R2+1,R is R2.

rule(129,N,Char,R):- N0 is N,rule(19,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(129,N,Char,R):- N0 is N,rule(27,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(24,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(27,N1,Char,R2),N2 is R2+1,R is R2.
rule(24,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(52,N1,Char,R2),N2 is R2+1,R is R2.

rule(119,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(47,N1,Char,R2),N2 is R2+1,R is R2.
rule(119,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(98,N1,Char,R2),N2 is R2+1,R is R2.

rule(91,N,Char,R):- N0 is N,rule(19,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(91,N,Char,R):- N0 is N,rule(10,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(35,N,Char,R):- N0 is N,rule(115,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(35,N,Char,R):- N0 is N,rule(46,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(57,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(63,N1,Char,R2),N2 is R2+1,R is R2.
rule(57,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(90,N1,Char,R2),N2 is R2+1,R is R2.

rule(125,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(125,N,Char,R):- N0 is N,rule(43,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(108,N,Char,R):-  N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(4,N,Char,R):- N0 is N,rule(115,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(4,N,Char,R):- N0 is N,rule(19,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(94,N,Char,R):- N0 is N,rule(112,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(94,N,Char,R):- N0 is N,rule(115,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(1,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(55,N1,Char,R2),N2 is R2+1,R is R2.
rule(1,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(75,N1,Char,R2),N2 is R2+1,R is R2.

rule(9,N,Char,R):- N0 is N,rule(38,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(9,N,Char,R):- N0 is N,rule(112,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(71,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(18,N1,Char,R2),N2 is R2+1,R is R2.
rule(71,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(53,N1,Char,R2),N2 is R2+1,R is R2.

rule(60,N,Char,R):- N0 is N,rule(103,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(60,N,Char,R):- N0 is N,rule(86,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(51,N,Char,R):- N0 is N,rule(116,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(51,N,Char,R):- N0 is N,rule(24,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(128,N,Char,R):- N0 is N,rule(24,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(128,N,Char,R):- N0 is N,rule(117,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(45,N,Char,R):-  N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(16,N,Char,R):- N0 is N,rule(104,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(16,N,Char,R):- N0 is N,rule(62,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(70,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(115,N1,Char,R2),N2 is R2+1,R is R2.
rule(70,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(45,N1,Char,R2),N2 is R2+1,R is R2.

rule(77,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(13,N1,Char,R2),N2 is R2+1,R is R2.
rule(77,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(94,N1,Char,R2),N2 is R2+1,R is R2.

rule(131,N,Char,R):- N0 is N,rule(61,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(131,N,Char,R):- N0 is N,rule(107,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(68,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(49,N1,Char,R2),N2 is R2+1,R is R2.
rule(68,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(84,N1,Char,R2),N2 is R2+1,R is R2.

rule(86,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(97,N1,Char,R2),N2 is R2+1,R is R2.
rule(86,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(30,N1,Char,R2),N2 is R2+1,R is R2.

rule(78,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(38,N1,Char,R2),N2 is R2+1,R is R2.
rule(78,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(12,N1,Char,R2),N2 is R2+1,R is R2.

rule(88,N,Char,R):- N0 is N,rule(5,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(88,N,Char,R):- N0 is N,rule(106,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(81,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(45,N1,Char,R2),N2 is R2+1,R is R2.
rule(81,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(52,N1,Char,R2),N2 is R2+1,R is R2.

rule(64,N,Char,R):-  N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2,L is R+1,string_length(Char,L).

rule(19,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(43,N1,Char,R2),N2 is R2+1,R is R2.
rule(19,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(110,N,Char,R):- N0 is N,rule(132,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(110,N,Char,R):- N0 is N,rule(64,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(96,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(77,N1,Char,R2),N2 is R2+1,R is R2.
rule(96,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(20,N1,Char,R2),N2 is R2+1,R is R2.

rule(67,N,Char,R):- N0 is N,rule(104,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(67,N,Char,R):- N0 is N,rule(4,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(65,N,Char,R):- N0 is N,rule(115,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(65,N,Char,R):- N0 is N,rule(38,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

rule(73,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(110,N1,Char,R2),N2 is R2+1,R is R2.
rule(73,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(120,N1,Char,R2),N2 is R2+1,R is R2.

rule(72,N,Char,R):- N0 is N,rule(64,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.
rule(72,N,Char,R):- N0 is N,rule(115,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.

rule(48,N,Char,R):- N0 is N,rule(2,N0,Char,R1),N1 is R1+1,rule(46,N1,Char,R2),N2 is R2+1,R is R2.
rule(48,N,Char,R):- N0 is N,rule(118,N0,Char,R1),N1 is R1+1,rule(10,N1,Char,R2),N2 is R2+1,R is R2.

rule(97,N,Char,R):- N0 is N,rule(7,N0,Char,R1),N1 is R1+1,rule(118,N1,Char,R2),N2 is R2+1,R is R2.
rule(97,N,Char,R):- N0 is N,rule(133,N0,Char,R1),N1 is R1+1,rule(2,N1,Char,R2),N2 is R2+1,R is R2.

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

lines([])           --> call(eos), !.
lines([Line|Lines]) --> line(Line), lines(Lines).

eos([], []).

line([])     --> ( "\n" ; call(eos) ), !.
line([L|Ls]) --> [L], line(Ls).