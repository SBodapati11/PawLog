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
matchDog(X, Size, Place, Kids, Allergies, Pets, Dogs, Outdoor) :- size(X, Size), place(X, Place), kids(X, Kids), allergies(X, Allergies), pets(X, Pets), dogs(X, Dogs), outdoors(X, Outdoor).

append([], Y, Y).
append([H|X], Y, [H|Z]) :- append(X, Y, Z).

count([],X,0).
count([X|T],X,Y):- count(T,X,Z), Y is 1+Z.
count([X1|T],X,Z):- X1\=X,count(T,X,Z).
    
?- getSize(Size), findall(A, matchSize(A, Size), SizeList), 
    getPlace(Place), findall(B, matchPlace(B, Place), PlaceList), 
    getKids(Kids), findall(C, matchKids(C, Kids), KidsList), 
    getAllergies(Allergies), findall(D, matchAllergies(D, Allergies), AllergiesList), 
    getPets(Pets), findall(E, matchPets(E, Pets), PetsList),
    getDogs(Dogs), findall(F, matchDogs(F, Dogs), DogsList),
    getOutdoor(Outdoor), findall(G, matchOutdoor(G, Outdoor), OutdoorList),
    matchDog(X, Size, Place, Kids, Allergies, Pets, Dogs, Outdoor).
    %append(SizeList, PLaceList, ListA),
    %append(ListA, DogsList, ListB),
    %append(ListB, KidsList, ListC), 
    %append(ListC, AllergiesList,ListD),
    %append(ListD, PetsList, ListE),
    %append(ListE, OutdoorList, ListF),
    %count(ListF, chihuahua, Ccount),
    %count(ListF, golden_retriever, GRcount),
    %count(ListF, labrador, Lcount),
    %count(ListF, german_shepherd, GScount),
    %count(ListF, husky, Hcount),
    %count(ListF, beagle, Becount),
    %count(ListF, shiba_inu, Sicount),
    %count(ListF, bulldog, Bucount),
    %count(ListF, pug, Pcount),
    %count(ListF, doberman, Dcount),
    %count(ListF, terrier, Tcount),
    %count(ListF, shih_tzu, Shcount),
    %count(ListF, poodle, Pocount).

    


