#Create a new file
newFile = open('main.pl', 'w+')

newFile.write("#include 'PawLog.pl'.\n\n")

size = input ("What size dog would you prefer? (S/M/L/NA): ").lower()
while(size not in ['s', 'm', 'l', 'na']):
    size = input ("Please input a valid option.\nWhat size dog would you prefer? (S/M/L/NA): ").lower()

dwelling = input ("What kind of housing do you have? (Apartment, Small House, Large House): ").lower()
while(dwelling not in ['apartment', 'small house', 'large house']):
    dwelling = input ("Please input a valid option.\nWhat kind of housing do you have? (Apartment, Small House, Large House): ").lower()

kids = input ("Do you have kids? (Y/N): ").lower()
while(kids not in ['y', 'n']):
    kids = input ("Please input a valid option.\nDo you have kids? (Y/N): ").lower()

allergies = input ("Do you have allergies? (Y/N): ").lower()
while(allergies not in ['y', 'n']):
    allergies = input ("Please input a valid option.\nDo you have allergies? (Y/N): ").lower()

dog = input ("Have you owned a dog before? (Y/N): ").lower()
while(dog not in ['y', 'n']):
    dog = input ("Please input a valid option.\nHave you owned a dog before? (Y/N): ").lower()

pets = input ("Do you have any other pets? (Y/N): ").lower()
while(pets not in ['y', 'n']):
    pets = input ("Please input a valid option.\nDo you have any other pets? (Y/N): ").lower()

outdoors = input ("How do you feel about the outdoors? (1-5): ").lower()
while(outdoors not in ['1', '2', '3', '4', '5']):
    outdoors = input ("Please input a valid option.\nHow do you feel about the outdoors? (1-5): ").lower()

fileString = "?- _main([" + size + ", " + dwelling  + ", " + kids + ", " + allergies + ", " + dog + ", " + pets + ", " + outdoors + "])." + "\n"

newFile.write(fileString)

newFile.close()