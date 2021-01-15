getSize(Size) :- input(Size, _, _, _, _, _, _).
getPlace(Place) :- input(_, Place, _, _, _, _, _).
getKids(Kids) :- input(_, _, Kids, _, _, _, _).
getAllergies(Allergies) :- input(_, _, _, Allergies, _, _, _).
getPets(Pets) :- input(_, _, _, _, Pets, _, _).
getDogs(Dogs) :- input(_, _, _, _, _, Dogs, _).
getOutdoor(Outdoor) :- input(_, _, _, _, _, _, Outdoor).

member(X,[X|_]).
member(X,[Y|T]) :- member(X,T).


matchSize(A, Size) :- size(A, Size).
matchPlace(B, Place) :- place(B, Place).
matchKids(C, Kids) :- kids(C, Kids).
matchAllergies(D, Allergies) :- allergies(D, Allergies).
matchPets(E, Pets) :- pets(E, Pets).
matchDogs(F, Dogs) :- dogs(F, Dogs).
matchOutdoor(G, Outdoor) :- outdoors(G, Outdoor).

append([], Y, Y).
append([H|X], Y, [H|Z]) :- append(X, Y, Z).

count_elt([],_,0):-true.
count_elt([H|T],H,C):-count_elt(T,H,C1),C is C1+1,true.
count_elt([_|T],E,C):-count_elt(T,E,C).

listMode([],0) :- true.
listMode([_],1) :- true.
listMode([H1|[H2|T]], M) :-count_elt([H1|[H2|T]],H1,C),listMode([H2|T],C1),C > C1,M is C,true.
listMode([_|[H2|T]],M) :- listMode([H2|T],M).

get_mode([H|T],M):-listMode([H|T],K),count_elt([H|T],M,K).


 

?- getSize(Size), findall(A, matchSize(A, Size), SizeList), 
    getPlace(Place), findall(B, matchPlace(B, Place), PlaceList), 
    getKids(Kids), findall(C, matchKids(C, Kids), KidsList), 
    getAllergies(Allergies), findall(D, matchAllergies(D, Allergies), AllergiesList), 
    getPets(Pets), findall(E, matchPets(E, Pets), PetsList),
    getDogs(Dogs), findall(F, matchDogs(F, Dogs), DogsList),
    getOutdoor(Outdoor), findall(G, matchOutdoor(G, Outdoor), OutdoorList),
    append(SizeList, PLaceList, ListA),
    append(ListA, DogsListList, ListB),
    append(ListB, KidsList, ListC), 
    append(ListC, AllergiesList, ListD),
    append(ListD, PetsList, ListE),
    append(ListE, OutdoorList, ListF),
    findall(ModeA, get_mode(ListF, Max), Names).

    


