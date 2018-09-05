/*****************/
/*Michael Wessels*/
/*CS 3410        */
/*Fall 2017      */
/*Lab # 2        */
/*****************/


/*What pets are in the database?*/
Select name, species, breed
From PET;
/*What are the names of the pets in the database?*/
Select name
From PET;
/*What are the ID numbers and breeds of the pets in the database?*/
Select ID, breed
From PET;
/*What are the names, species, and breeds of the pets in the database?*/
Select name, species, breed
From PET;
/*What are the names, genders, and altered status of the pets in the database?*/
Select name, gender,altered
From PET;

/*What dogs are in the database?*/
Select *
From PET
Where species = 'Dog';
/*What cats are in the database?*/
Select *
From PET
Where species = 'Cat';
/*What rabbits are in the database?*/
Select *
From PET
Where species = 'Rabbit';
/*What pets are female?*/
Select *
From PET
Where gender = 'Female';
/*What pets are male?*/
Select *
From PET
Where gender = 'Male';

/*What is the total number of scores received for the tests taken?*/
Select count(score)
From TEST_SCORES;
/*What is the sum of the scores of the tests taken?*/
Select sum(score)
From TEST_SCORES;
/*What is the average of the scores of the tests taken?*/
Select average(score)
From TEST_SCORES;
/*What is the lowestscore of the tests taken?*/
Select min(score)
From TEST_SCORES;
/*What is the highestscore of the tests taken?*/
mac(score)
From TEST_SCORES;

/*What is the total number of scores received by each student?*/
Select student ID, count(score)
From TEST_SCORES
Group By StudentID;
/*What is the total number of scores received for each test?*/
Select TestID, count(score)
From TEST_SCORES
Group By TestID;
/*What is the sum of the scores for each student?*/
Select student ID, sum(score)
From TEST_SCORES
Group By StudentID;
/*What is the average score for each test?*/
Select TestID, average(score)
From TEST_SCORES
Group By TestID;
/*What is the averagescore for each student?*/
Select StudentID, average(score)
From TEST_SCORES
Group By StudentID;
/*What is the lowestscore received for each test? */
Select TestID, min(score)
From TEST_SCORES
Group By TestID;
/*What is the lowestscore received by each student?*/
Select StudentID, min(score)
From TEST_SCORES
Group By StudentID;
/*What is the highestscore received for each test?*/
Select TestID, max(score)
From TEST_SCORES
Group By TestID;
/*What is the highestscore received by each student?*/
Select StudentID, max(score)
From TEST_SCORES
Group By StudentID;

/*What is the total number of scores for each test with a total score of at least 200?*/
Select TestID, count(score)
From TEST_SCORES
Group By TestID
Having sum(score)>=200;
/*What is the total number of scores for each student with a total score of at least 200?*/
Select StudentID, count(score)
From TEST_SCORES
Group By StudentID
Having sum(score)>=200;
/*What is the total number of scores for each student who has taken exactly three*/
/*tests(ie has 3 scores)?*/
Select StudentID, count(score)
From TEST_SCORES
Group By StudentID
Having count(score)=3;
/*What is the totalnumber of scores for each test that has been taken by exactly 3*/
/*students(ie has 3 scores)?*/
Select TestID, count(score)
From TEST_SCORES
Group By TestID
Having count(score)=3;
/*What is the average score for each test which has received exactly three scores(ie*/
/*taken by 3 students)?*/
Select TestID, average(score)
From TEST_SCORES
Group By TestID
Having count(score)=3;
/*What is the average score for each student with exactly three scores(ie taken 3*/
/*tests)?*/
Select StudentID, average(score)
From TEST_SCORES
Group By StudentID
Having count(score)=3;
/*What is the lowestscorefor each test with exactly three scores(ie taken by 3*/
/*Students)?*/
Select TestID, min(score)
From TEST_SCORES
Group By TestID
Having count(score)=3;
/*What is the lowestscore for each student with exactly three scores(ie taken 3 tests)?*/
Select StudentID, min(score)
From TEST_SCORES
Group By StudentID
Having count(score)=3;
/*What is the highestscore for each test with exactly three scores(ie taken by 3*/
/*students)?*/
Select TestID, max(score)
From TEST_SCORES
Group By TestID
Having count(score)=3;
/*What is the highestscorefor each student with exactly three scores(ie taken 3*/
/*tests)?*/
Select StudentID, max(score)
From TEST_SCORES
Group By StudentID
Having count(score)=3;

/*What are the names of all of the different pets in the database?*/
Select name
From PET;
/*What are the distinct names of the pets in the database?*/
Select Distinct name
From PET;
/*What are the species of all of the different pets in the database?*/
Select species 
From PET;
/*What are the distinct species of the pets in the database?*/
Select Distinct species
From PET;
/*What are the genders of all of the different pets in the database?*/
Select gender 
From PET;
/*What are the distinct genders of the pets in the database?*/
Select Distinct gender 
From PET;
/*What are the genders and altered status of all of the different pets in the database?*/
Select gender, altered
From PET;
/*What are the distinct genders and altered status of the pets in the database?*/
Select Distinct gender, altered
From PET;

/*Who are the pets in the database,sorted by ID number?*/
Select *
From PET
Order By ID;
/*Who are the pets in the database,sorted by name?*/
Select *
From PET
Order By name;
/*Who are the pets in the database,sorted by name,in reverse order?*/
Select *
From PET
Order By name desc;
/*What are the names,species, and breeds of the pets in the database,sorted by ID*/
/*number?*/
Select name, species, breed
From PET
Order By ID;
/*What are the names,species, and breeds ofthe pets in the database,sorted by*/
/*name?*/
Select name, species, breed
From PET
Order By name;
/*What are the names,species, and breeds of the pets in the database, sorted by*/
/*name, in reverse order?*/
Select name, species, breed
From PET
Order By name desc;
/*What are the names of the pets in the database,sorted by ID number?*/
Select name
From PET
Order By ID;
/*What are the names ofthe pets in the database,sorted by name?*/
Select name
From PET
Order By name;