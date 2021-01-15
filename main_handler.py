#Ask the user questions for their preferences

size = input ("What size dog would you prefer? (Small, Medium, Large): ").lower()
while(size not in ['small', 'medium', 'large']):
    size = input ("Please input a valid option.\nWhat size dog would you prefer? (Small, Medium, Large): ").lower()

place = input ("What kind of housing do you have? (Apartment, Small House, Large House): ").lower()
while(place not in ['apartment', 'small house', 'large house']):
    place = input ("Please input a valid option.\nWhat kind of housing do you have? (Apartment, Small House, Large House): ").lower()

if(place != 'apartment'):
    place = place[:5] 

kids = input ("Do you have kids? (Yes/No): ").lower()
while(kids not in ['yes', 'no']):
    kids = input ("Please input a valid option.\nDo you have kids? (Yes/No): ").lower()

allergies = input ("Do you have allergies? (Yes/No): ").lower()
while(allergies not in ['yes', 'no']):
    allergies = input ("Please input a valid option.\nDo you have allergies? (Yes/No): ").lower()

pets = input ("Do you have any other pets? (Yes/No): ").lower()
while(pets not in ['yes', 'no']):
    pets = input ("Please input a valid option.\nDo you have any other pets? (Yes/No): ").lower()

dog = input ("Have you owned a dog before? (Yes/No): ").lower()
while(dog not in ['yes', 'no']):
    dog = input ("Please input a valid option.\nHave you owned a dog before? (Yes/No): ").lower()

outdoors = input ("How do you feel about the outdoors? (1-5): ").lower()
while(outdoors not in ['1', '2', '3', '4', '5']):
    outdoors = input ("Please input a valid option.\nHow do you feel about the outdoors? (1-5): ").lower()

fileString = "input(" + size + ", " + place  + ", " + kids + ", " + allergies + ", " + dog + ", " + pets + ", " + outdoors + ")." + "\n"

#Append to "facts.pl" file
with open("facts.pl", "a") as myfile:
    myfile.write("\n")
    myfile.write(fileString)

myfile.close()
