function [loi_normale] = Gauss()
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    loi_normale={};

    %% Part 0: personal informations
    
    %Question 1 "Sexe"
        %Réponse 1 Male
        loi_normale{1,1}=zeros(1,10);
        %Réponse 2 Female
        loi_normale{2,1}=zeros(1,10);
        %Réponse 3 not tell
        loi_normale{3,1}=zeros(1,10);
        %Réponse 4 ''
        loi_normale{4,1}=zeros(1,10);
        
    %Question 2  "Age"
        %Réponse 1 0-9
        loi_normale{1,2}=zeros(1,10);
        %Réponse 2 10-39
        loi_normale{2,2}=zeros(1,10);
        %Réponse 3 40-49
        loi_normale{3,2}=zeros(1,10);
        %Réponse 4 50-59
        loi_normale{4,2}=zeros(1,10);
        %Réponse 5 60-69
        loi_normale{5,2}=zeros(1,10);
        %Réponse 6 70-79
        loi_normale{6,2}=zeros(1,10);
        %Réponse 7 80+
        loi_normale{7,2}=zeros(1,10);
        %Réponse 8
        loi_normale{8,2}=zeros(1,10);
        
    %Question 3 "Canton"
        %Réponse 1 'VD et GE'
        x = [0:1:100];
        y = normpdf(x,75,8);
        loi_normale{1,3}=median_categorie(y);
        clearvars y x
        %Réponse 2 'ZH and TI'
        x = [0:1:100];
        y = normpdf(x,50,8);
        loi_normale{2,3}=median_categorie(y);
        clearvars y x
        %Réponse 3 ' BE or VS'
        x = [0:1:100];
        y = normpdf(x,25,8);
        loi_normale{3,3}=median_categorie(y);
        clearvars y x
        %Réponse 4 'other canton'
        x = [0:1:100];
        y = normpdf(x,0,8);
        loi_normale{4,3}=median_categorie(y);
        clearvars y x
        %Réponse 5 'Out of switzerland
        loi_normale{5,3}=zeros(1,10);
        %Réponse 6 ''
        loi_normale{6,3}=zeros(1,10);

    %Question 4 "Pre-existing medical conditions"
        %Réponse 1 'None'
        loi_normale{1,4}=zeros(1,10);
        %Réponse2'Cardiovascular disease'
        loi_normale{2,4}=zeros(1,10);
        %Réponse3 'Diabetes'
        loi_normale{3,4}=zeros(1,10);
        %Réponse4 'Chronic respiratory disease'
        loi_normale{4,4}=zeros(1,10);
        %Réponse5 'Hypertension'
        loi_normale{5,4}=zeros(1,10);
        %Réponse6 'Cancer'
        loi_normale{6,4}=zeros(1,10);
        %Réponse7 ''
        loi_normale{7,4}=zeros(1,10);

    %Question 5 'Working from home'
        %Réponse 1 '100%'
        x = [0:1:100];
        y = normpdf(x,60,25);
        loi_normale{1,5}=median_categorie(y);
        clearvars y x      
        %Réponse 2 '50%'
        x = [0:1:100];
        y = normpdf(x,50,25);
        loi_normale{2,5}=median_categorie(y);
        clearvars y x 
        %Réponse 3 '0%'
        x = [0:1:100];
        y = normpdf(x,40,25);
        loi_normale{3,5}=median_categorie(y);
        clearvars y x 
        %Réponse 4 ''
        loi_normale{4,5}=zeros(1,10);
        
    %Question 7 'Is there at least someone else in the household not working from home ?
        %Réponse 1 'Yes'
        loi_normale{1,7}=zeros(1,10);
        %Réponse 2 'No'
        x = [0:1:100];
        y = normpdf(x,15,15);
        loi_normale{2,7}=median_categorie(y);
        clearvars y x
        %Réponse 3 ''
        loi_normale{3,7}=zeros(1,10);
        
    %Question 8 'Are you working in a medical facility'
        %Réponse 1 'Yes'
        x = [0:1:100];
        y = normpdf(x,80,8);
        loi_normale{1,8}=median_categorie(y);
        clearvars y x
        %Réponse 2 'No'
        x = [0:1:100];
        y = normpdf(x,40,8);
        loi_normale{2,8}=median_categorie(y);
        clearvars y x
        %Réponse 3 ''
        loi_normale{3,8}=zeros(1,10);
        
    %Question 9 'Is anyone from your household working in a medical facility?
        %Réponse 1 'Yes'
        x = [0:1:100];
        y = normpdf(x,65,8);
        loi_normale{1,9}=median_categorie(y);
        clearvars y x
        %Réponse 2 'No'
        x = [0:1:100];
        y = normpdf(x,40,8);
        loi_normale{2,9}=median_categorie(y);
        clearvars y x
        %Réponse 3 ''
        loi_normale{3,9}=zeros(1,10);
        
    %Question 10 'Have you been tested positive
        %Réponse 1 'Yes'
        x = [0:1:100];
        y = normpdf(x,100,4);
        loi_normale{1,10}=median_categorie(y);
        clearvars y x
        %Réponse 2 'tested negative'
        loi_normale{2,10}=zeros(1,10);
        %Réponse 3 'Not tested'
        loi_normale{3,10}=zeros(1,10);
        %Réponse 4 ''
        loi_normale{4,10}=zeros(1,10);
        
    %Question 11 'Are you
        %Réponse 1 'No symptoms left'
        loi_normale{1,11}=zeros(1,10);
        %Réponse 2 'still sick'
        x = [0:1:100];
        y = normpdf(x,100,3);
        y= y*100;
        loi_normale{2,11}=median_categorie(y);
        clearvars y x
        %Réponse 3 'Not sure'
        x = [0:1:100];
        y = normpdf(x,90,4);
        loi_normale{3,11}=median_categorie(y);
        clearvars y x
        %Réponse 4 ''
        loi_normale{4,11}=zeros(1,10);
        
    %Question 12 'Have you been sick :
        %Réponse 1 'less than 10 days
        loi_normale{1,12}=zeros(1,10);
        %Réponse 2 'More than 10 days
        loi_normale{2,12}=zeros(1,10);
        %Réponse 3 'Not sure'
        x = [0:1:100];
        y = normpdf(x,90,4);
        loi_normale{3,12}=median_categorie(y);
        clearvars y x
        %Réponse 4 ''
        loi_normale{4,12}=zeros(1,10);
        
    %Question 13 'Has it been
        %Réponse 1 'At least 21 days since the first symptoms'
        x = [0:1:100];
        y = normpdf(x,0,3);
        y=y*100;
        loi_normale{1,13}=median_categorie(y);
        clearvars y x
        %Réponse 2 'Less than 21 days since the first symptoms'
        x = [0:1:100];
        y = normpdf(x,100,3);
        y=y*100;
        loi_normale{2,13}=median_categorie(y);
        clearvars y x
        %Réponse 3 'Not sure'
        x = [0:1:100];
        y = normpdf(x,100,3);
        y=y*100;
        loi_normale{3,13}=median_categorie(y);
        clearvars y x
        %Réponse 4 ''
        loi_normale{4,13}=zeros(1,10);
        
    %Question 14 'Have you had 
        %Réponse 1 'No symptoms for at least 48h
        x = [0:1:100];
        y = normpdf(x,0,3);
        y=y*100;
        loi_normale{1,14}=median_categorie(y);
        clearvars y x
        %Réponse 2 'No symptoms for less than 48h
        x = [0:1:100];
        y = normpdf(x,100,3);
        y=y*100;
        loi_normale{2,14}=median_categorie(y);
        clearvars y x
        %Réponse 3 'Not sure
        x = [0:1:100];
        y = normpdf(x,100,3);
        y=y*100;
        loi_normale{3,14}=median_categorie(y);
        clearvars y x
        %Réponse 4 ''
        loi_normale{4,14}=zeros(1,10);
        
    %Question 15 'Have you been diagnosed?"
        %Réponse 1 'Yes
        x = [0:1:100];
        y = normpdf(x,80,4);
        loi_normale{1,15}=median_categorie(y);
        clearvars y x
        %Réponse 2 'No
        loi_normale{2,15}=zeros(1,10);
        %Réponse 3 ''
        loi_normale{3,15}=zeros(1,10);
        
    %Question 16 'Do you wash your outdoor clothes at 60 degrees
        %Réponse 1 'always
        x = [0:1:100];
        y = normpdf(x,30,15);
        loi_normale{1,16}=median_categorie(y);
        clearvars y x
        %Réponse 2 'nearly sometimes
        x = [0:1:100];
        y = normpdf(x,40,15);
        loi_normale{2,16}=median_categorie(y);
        clearvars y x
        %Réponse 3 'Sometimes
        x = [0:1:100];
        y = normpdf(x,60,15);
        loi_normale{3,16}=median_categorie(y);
        clearvars y x
        %Réponse 4 'Never
        x = [0:1:100];
        y = normpdf(x,75,15);
        loi_normale{4,16}=median_categorie(y);
        clearvars y x
        %Réponse 5 ''
        loi_normale{5,16}=zeros(1,10);
        
    %Question 17 Do the people around you sneeze and cough in their elbow or in a single-use tissue?
        %Réponse 1 'always
        x = [0:1:100];
        y = normpdf(x,25,15);
        loi_normale{1,17}=median_categorie(y);
        clearvars y x
        %Réponse 2 'nearly sometimes
        x = [0:1:100];
        y = normpdf(x,40,15);
        loi_normale{2,17}=median_categorie(y);
        clearvars y x
        %Réponse 3 'Sometimes
        x = [0:1:100];
        y = normpdf(x,55,15);
        loi_normale{3,17}=median_categorie(y);
        clearvars y x
        %Réponse 4 'Never
        x = [0:1:100];
        y = normpdf(x,70,15);
        loi_normale{4,17}=median_categorie(y);
        clearvars y x
        %Réponse 5 ''
        loi_normale{5,17}=zeros(1,10);
        
    %Question 18 Do you and the people around you avoid hugging and shaking hands?
        %Réponse 1 Yes
        x = [0:1:100];
        y = normpdf(x,25,8);
        loi_normale{1,18}=median_categorie(y);
        clearvars y x
        %Réponse 2 No
        x = [0:1:100];
        y = normpdf(x,90,8);
        loi_normale{2,18}=median_categorie(y);
        clearvars y x
        %Réponse 3 Some of them 
        x = [0:1:100];
        y = normpdf(x,60,8);
        loi_normale{3,18}=median_categorie(y);
        clearvars y x
        %Réponse 4 Most of them
        x = [0:1:100];
        y = normpdf(x,35,8);
        loi_normale{4,18}=median_categorie(y);
        clearvars y x
        %Réponse 5 ''
        loi_normale{5,18}=zeros(1,10);
        
    %Question 19 How often do you wash your hands with soap or with hydroalcoholic gel?
        %Réponse 1 'I try to do it after going out
        x = [0:1:100];
        y = normpdf(x,65,8);
        loi_normale{1,19}=median_categorie(y);
        clearvars y x
        %Réponse 2 'I always do it after going out
        x = [0:1:100];
        y = normpdf(x,50,8);
        loi_normale{2,19}=median_categorie(y);
        clearvars y x
        %Réponse 3 'I always do it after going out, touching grocery foods,
        %and nerver touch my face
        x = [0:1:100];
        y = normpdf(x,30,8);
        loi_normale{3,19}=median_categorie(y);
        clearvars y x
        %Réponse 4 'None of the above
        x = [0:1:100];
        y = normpdf(x,90,8);
        loi_normale{4,19}=median_categorie(y);
        clearvars y x
        %Réponse 5 ''
        loi_normale{5,19}=zeros(1,10);
        
    %Question 20 Are you contained alone ?
        %Réponse 1 'Yes'
        loi_normale{1,20}=zeros(1,10);
        %Réponse 2 'No'
        loi_normale{2,20}=zeros(1,10);
        %Réponse 3 ''
        loi_normale{3,20}=zeros(1,10);
        
    %Question 21 How many are you in your household ?
        %Réponse 1 '2'
        x = [0:1:100];
        y = normpdf(x,20,15);
        loi_normale{1,21}=median_categorie(y);
        clearvars y x
        %Réponse 2 '3'
        x = [0:1:100];
        y = normpdf(x,30,15);
        loi_normale{2,21}=median_categorie(y);
        clearvars y x
        %Réponse 3 '4'
        x = [0:1:100];
        y = normpdf(x,40,15);
        loi_normale{3,21}=median_categorie(y);
        clearvars y x
        %Réponse 4 '5+'
        x = [0:1:100];
        y = normpdf(x,50,15);
        loi_normale{4,21}=median_categorie(y);
        clearvars y x
        %Réponse 5 ''
        loi_normale{5,21}=zeros(1,10);
        
    %Question 22 Are you
        %Réponse 1 'Contained with at least one Covid-19 positively tested person in an official medical institution
        x = [0:1:100];
        y = normpdf(x,100,3);
        y=y*100;
        loi_normale{1,22}=median_categorie(y);
        clearvars y x
        %Réponse 2 'Confined with at least one Covid-19-like symptoms person
        loi_normale{2,22}=zeros(1,10);
        %Réponse 3 'Not confined with any possibly infected person
        loi_normale{3,22}=zeros(1,10);
        %Réponse 4 'Not sure
        loi_normale{4,22}=zeros(1,10);
        %Réponse 5 PREVIOUSLY contained with at least one Covid-19 positively tested person in an official medical institution or via a Doctor.
        loi_normale{5,22}=zeros(1,10);
        %Réponse 6 ''
        loi_normale{6,22}=zeros(1,10);
        
    %Question 25 Do you have the following symptoms
        %Réponse 1 'Loss of olfaction and taste, Fever, Shortness of breath
        x = [0:1:100];
        y = normpdf(x,100,3);
        y=y*100;
        loi_normale{1,25}=median_categorie(y);
        clearvars y x
        %Réponse 2 'No symptomes
        loi_normale{2,25}=zeros(1,10);
        %Réponse 3 ''
        loi_normale{3,25}=zeros(1,10);
        
    %Question 26 Do you have the following symptoms :
        %Réponse 1 'Aching muscles or joints, Sore throat, Headache, Couch
        loi_normale{1,26}=zeros(1,10);
        %Réponse 2 ' No symptomes
        loi_normale{2,26}=zeros(1,10);
        %Réponse 3 ''
        loi_normale{3,26}=zeros(1,10);
        
    %Question 27 How many times do you go grocery shopping during one week?
        %Réponse 1 '0
        x = [0:1:100];
        y = normpdf(x,20,8);
        loi_normale{1,27}=median_categorie(y);
        clearvars y x
        %Réponse 2 '1
        x = [0:1:100];
        y = normpdf(x,30,8);
        loi_normale{2,27}=median_categorie(y);
        clearvars y x
        %Réponse 3 '2
        x = [0:1:100];
        y = normpdf(x,50,8);
        loi_normale{3,27}=median_categorie(y);
        clearvars y x
        %Réponse 4 '3+
        x = [0:1:100];
        y = normpdf(x,70,8);
        loi_normale{4,27}=median_categorie(y);
        clearvars y x
        %Réponse 5 ''
        loi_normale{5,27}=zeros(1,10);
        
    %Question 28 Apart for grocery shopping, how many times do you go out of your household per week?
        %Réponse 1 '0
        x = [0:1:100];
        y = normpdf(x,25,15);
        loi_normale{1,28}=median_categorie(y);
        clearvars y x
        %Réponse 2 '2
        x = [0:1:100];
        y = normpdf(x,35,15);
        loi_normale{2,28}=median_categorie(y);
        clearvars y x
        %Réponse 3 '4
        x = [0:1:100];
        y = normpdf(x,50,15);
        loi_normale{3,28}=median_categorie(y);
        clearvars y x
        %Réponse 4 '6
        x = [0:1:100];
        y = normpdf(x,60,15);
        loi_normale{4,28}=median_categorie(y);
        clearvars y x
        %Réponse 5 '8+
        x = [0:1:100];
        y = normpdf(x,80,15);
        loi_normale{5,28}=median_categorie(y);
        clearvars y x
        %Réponse 6 ''
        loi_normale{6,28}=zeros(1,10);
        
    %Question 29 Do you take public transports ?
        %Réponse 1 'Yes
        loi_normale{1,29}=zeros(1,10);
        %Réponse 2 'No
        x = [0:1:100];
        y = normpdf(x,10,8);
        loi_normale{2,29}=median_categorie(y);
        clearvars y x
        %Réponse 3 ''
        loi_normale{3,29}=zeros(1,10);
        
    %Question 30 How many one-way travel(s) do you make in a week?
        %Réponse 1 '1
        x = [0:1:100];
        y = normpdf(x,20,8);
        loi_normale{1,30}=median_categorie(y);
        clearvars y x
        %Réponse 2 '2
        x = [0:1:100];
        y = normpdf(x,30,8);
        loi_normale{2,30}=median_categorie(y);
        clearvars y x
        %Réponse 3 '3
        x = [0:1:100];
        y = normpdf(x,40,8);
        loi_normale{3,30}=median_categorie(y);
        clearvars y x
        %Réponse 4 '4
        x = [0:1:100];
        y = normpdf(x,50,8);
        loi_normale{4,30}=median_categorie(y);
        clearvars y x
        %Réponse 5 '5+
        x = [0:1:100];
        y = normpdf(x,80,8);
        loi_normale{5,30}=median_categorie(y);
        clearvars y x
        %Réponse 6 ''
        loi_normale{6,30}=zeros(1,10);
        
    %Question 31 Have you been in contact(s) with one or several risky individual(s) in the last 2 weeks outside your household?
        %Réponse 1 'None
        x = [0:1:100];
        y = normpdf(x,10,15);
        loi_normale{1,31}=median_categorie(y);
        clearvars y x
        %Réponse 2 'Closer than two meters to at least one person who has contracted the illness
        loi_normale{2,31}=zeros(1,10);
        %Réponse 3 'Close to a person sneezing or coughing
        loi_normale{3,31}=zeros(1,10);
        %Réponse 4 'Not sure'
        x = [0:1:100];
        y = normpdf(x,30,15);
        loi_normale{4,31}=median_categorie(y);
        clearvars y x
        %Réponse 5 ''
        loi_normale{5,31}=zeros(1,10);
        
    %Question 32  How many times have you been in contact with that person
    %? (pour ceux qui ont vu un malade)
        %Réponse 1 '1
        x = [0:1:100];
        y = normpdf(x,40,15);
        loi_normale{1,32}=median_categorie(y);
        clearvars y x
        %Réponse 2 '2
        x = [0:1:100];
        y = normpdf(x,60,15);
        loi_normale{2,32}=median_categorie(y);
        clearvars y x
        %Réponse 3 '3+
        x = [0:1:100];
        y = normpdf(x,90,15);
        loi_normale{3,32}=median_categorie(y);
       
        clearvars y x
        %Réponse 4 ''
        loi_normale{4,32}=zeros(1,10);
        
    %Question 33  How many times have you been in contact with that person
    %? (Pour ceux qui ont vu un gars qui tousse)
        %Réponse 1 '1
        x = [0:1:100];
        y = normpdf(x,50,15);
        loi_normale{1,33}=median_categorie(y);
        clearvars y x
        %Réponse 2 '2
        x = [0:1:100];
        y = normpdf(x,70,15);
        loi_normale{2,33}=median_categorie(y);
        clearvars y x
        %Réponse 3 '3+
        x = [0:1:100];
        y = normpdf(x,100,15);
        loi_normale{3,33}=median_categorie(y);
        clearvars y x
        %Réponse 4 ''
        loi_normale{4,33}=zeros(1,10);
        
    %Question 6 Are you currently working from home
        %Réponse 1 Yes
        loi_normale{1,6}=zeros(1,10);
        %Réponse 2 'No
        loi_normale{2,6}=zeros(1,10);
        %Réponse 3 '' 
        loi_normale{3,6}=zeros(1,10);
        
    %Question 23 Did you experience loss of olfaction and taste and/or shortness of breath? (At least 10 days of sickness before 48h with no symptoms OR at least 21 days since the first symptoms after less than 10 days of sickness)
        %Réponse 1 Yes
        x = [0:1:100];
        y = normpdf(x,0,3);
        y=y*100
        loi_normale{1,23}=median_categorie(y);
        clearvars y x
        %Réponse 2 No
        loi_normale{2,23}=zeros(1,10);
        %Réponse 3 ''
        loi_normale{3,23}=zeros(1,10);
        
    %Question 24 Did you experience Aching muscles or joints, Sore throat, Headache, Couch, Nasal congestion/runny nose, Diarrhea? (At least 10 days of sickness before 48h with no symptoms OR at least 21 days since the first symptoms after less than 10 days of sickness)
        %Réponse 1 '0'
        x = [0:1:100];
        y = normpdf(x,30,8);
        loi_normale{1,24}=median_categorie(y);
        clearvars y x
        %Réponse 2 '1'
        x = [0:1:100];
        y = normpdf(x,25,8);
        loi_normale{2,24}=median_categorie(y);
        clearvars y x
        %Réponse 3 '2'
        x = [0:1:100];
        y = normpdf(x,12,8);
        loi_normale{3,24}=median_categorie(y);
        clearvars y x
        %Réponse 4 '3'
        x = [0:1:100];
        y = normpdf(x,8,8);
        loi_normale{4,24}=median_categorie(y);
        clearvars y x
        %Réponse 5 '4+'
        x = [0:1:100];
        y = normpdf(x,0,8);
        loi_normale{5,24}=median_categorie(y);
        clearvars y x
        %Réponse 6 'Still having them'
        x = [0:1:100];
        y = normpdf(x,100,3);
        y=y*100;
        loi_normale{6,24}=median_categorie(y);
        clearvars y x
        %Réponse 7 ''
        loi_normale{7,24}=zeros(1,10);
        
end

