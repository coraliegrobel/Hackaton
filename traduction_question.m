function [tabb] = traduction_question(i,excel)
  %UNTITLED6 Summary of this function goes here
  %   Detailed explanation goes here
    
  tabb=[];
  [ligne,colonne]=size(excel);
  switch i
    case 1 %Sex
    for j=1:ligne %on passe de ligne en ligne
      tabb(j,1)=4;
        if strcmp(excel{j,i},'Male')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Female')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Prefer not to tell')
        tabb(j,1)=3;
      end
      
    end
    case 2 %Age
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=8;
      if strcmp(excel{j,i},'0 - 9')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'10 - 39')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'40 - 49')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'50 - 59')
        tabb(j,1)=4;
      end
      if strcmp(excel{j,i},'60 - 69')
        tabb(j,1)=5;
      end
      if strcmp(excel{j,i},'70 - 79')
        tabb(j,1)=6;
      end
      if strcmp(excel{j,i},'80+')
        tabb(j,1)=7;
      end
      
    end
    case 3 %Canton
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=5;
      if strcmp(excel{j,i},'VD or GE')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'ZH or TI')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'BE or VS')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'Other canton')
        tabb(j,1)=4;
      end
      if strcmp(excel{j,i},'Out of Switzerland or prefer not to tell')
        tabb(j,1)=5;
      end
      
    end
    case 4 %Pre-existing medical conditions
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=7;
      if strcmp(excel{j,i},'None')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Cardiovascular disease')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Diabetes')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'Chronic respiratory disease')
        tabb(j,1)=4;
      end
      if strcmp(excel{j,i},'Hypertension')
        tabb(j,1)=5;
      end
      if strcmp(excel{j,i},'Cancer')
        tabb(j,1)=6;
      end
      
    end
    case 5 %Are you able to work from home
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=4;
      if strcmp(excel{j,i},'100%')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'50%')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'0%')
        tabb(j,1)=3;
      end
      
    end
    case 7 %Is there at least someone else in the household not working from home ?
    for j=1:ligne %on passe de ligne en ligne
      tabb(j,1)=3;
        if strcmp(excel{j,i},'Yes')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No')
        tabb(j,1)=2;
      end

    end
    case 8 %Are you working in a medical facility ?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=3;
      if strcmp(excel{j,i},'Yes')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No')
        tabb(j,1)=2;
      end
      
    end
    case 9 %Is anyone from your household working in a medical facility?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=3;
      if strcmp(excel{j,i},'Yes')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No')
        tabb(j,1)=2;
      end
      
    end
    case 10 %Have you been tested positive
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=3;
      if strcmp(excel{j,i},'Yes')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Tested negative')
        tabb(j,1)=2;
      end
      
    end
    case 11 %Are you
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=4;
      if strcmp(excel{j,i},'No symptoms left')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Still sick')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Not sure')
        tabb(j,1)=3;
      end
     
    end
    case 12 %Have you been sick :
    for j=1:ligne %on passe de ligne en ligne
         tabb(j,1)=4;
      if strcmp(excel{j,i},'More than 10 days')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Less than 10 days')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Not sure')
        tabb(j,1)=3;
      end
      
    end
    case 13 %Has it been
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=4;
      if strcmp(excel{j,i},'At least 21 days since the first symptoms')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Less than 21 days since the first symptoms')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Not sure')
        tabb(j,1)=3;
      end
      
    end
    case 14 %Have you had :
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=4;
      if strcmp(excel{j,i},'No symptoms for at least 48h')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No symptoms for less than 48h')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Not sure')
        tabb(j,1)=3;
      end
      
    end
    case 15 %Have you been diagnosed?"
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=3;
      if strcmp(excel{j,i},'Yes')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No')
        tabb(j,1)=2;
      end
      
    end
    case 16 %Do you wash your outdoor clothes at 60 degrees
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=5;
      if strcmp(excel{j,i},'Always')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Nearly always')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Sometimes')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'Never')
        tabb(j,1)=4;
      end
      
    end
    case 17 %Do the people around you sneeze and cough in their elbow or in a single-use tissue?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=5;
      if strcmp(excel{j,i},'Always')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Nearly always')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Sometimes')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'Never')
        tabb(j,1)=4;
      end
      
    end
    case 18 %Do you and the people around you avoid hugging and shaking hands?
    for j=1:ligne %on passe de ligne en ligne
         tabb(j,1)=5;
      if strcmp(excel{j,i},'Yes')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Some of them')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'Most of them')
        tabb(j,1)=4;
      end
      
    end
    case 19 %How often do you wash your hands with soap or with hydroalcoholic gel?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=5;
      if strcmp(excel{j,i},'I try to do it after going out, touching grocery foods, touching hands or any possible infected surfaces')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'I always do it after going out, touching grocery foods, touching hands or any possible infected surfaces')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'I always do it after going out, touching grocery foods, touching hands or any possible infected surfaces and never touch my face in those situations.')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'None of the above')
        tabb(j,1)=4;
      end
      
    end
    case 20 %Are you contained alone ?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=3;
      if strcmp(excel{j,i},'Yes')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'')
        
      end
    end
    case 21 %How many are you in your household ?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=5;
      if strcmp(excel{j,i},'2')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'3')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'4')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'5+')
        tabb(j,1)=4;
      end
      
    end
    case 22 %Are you
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=5;
      if strcmp(excel{j,i},'Contained with at least one Covid-19 positively tested person in an official medical institution')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Contained with at least one Covid-19-like symptoms person')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Not Contained with any possibly infected person')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'Not sure')
        tabb(j,1)=4;
      end
      if strcmp(excel{j,i},'PREVIOUSLY contained with at least one Covid-19 positively tested person in an official medical institution or via a Doctor.')
        tabb(j,1)=5;
      end
      
      
    end
    case 25 %Do you have the following symptoms :
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=3;
      if strcmp(excel{j,i},'Loss of olfaction and taste, Fever, Shortness of breath')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No symptoms')
        tabb(j,1)=2;
      end
      
    end
    case 26 %Do you have the following symptoms :
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=3;
      if strcmp(excel{j,i},'Aching muscles or joints, Sore throat, Headache, Couch')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No symptoms')
        tabb(j,1)=2;
      end
      
    end
    case 27 %How many times do you go grocery shopping during one week?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=5;
      if strcmp(excel{j,i},'0')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'1')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'2')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'3+')
        tabb(j,1)=4;
      end
      
    end
    case 28 %Apart for grocery shopping, how many times do you go out of your household per week?
    for j=1:ligne %on passe de ligne en ligne
         tabb(j,1)=6;
      if strcmp(excel{j,i},'0')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'2')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'4')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'6')
        tabb(j,1)=4;
      end
      if strcmp(excel{j,i},'8+')
        tabb(j,1)=5;
      end
      
    end
    case 29 %Do you take public transports ?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=3;
      if strcmp(excel{j,i},'Yes')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'No')
        tabb(j,1)=2;
      end
      
    end
    case 30 %How many one-way travel(s) do you make in a week?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=6;
      if strcmp(excel{j,i},'1')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'2')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'3')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'4')
        tabb(j,1)=4;
      end
      if strcmp(excel{j,i},'5+')
        tabb(j,1)=5;
      end
      
    end
    case 31 %Have you been in contact(s) with one or several risky individual(s) in the last 2 weeks outside your household?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=5;
      if strcmp(excel{j,i},'None')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'Closer than two meters to at least one person who has contracted the illness')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'Close to a person sneezing or coughing')
        tabb(j,1)=3;
      end
      if strcmp(excel{j,i},'Not sure')
        tabb(j,1)=4;
      end
      
    end
    case 32 %How many times have you been in contact with that person ?
    for j=1:ligne %on passe de ligne en ligne
        tabb(j,1)=4;
      if strcmp(excel{j,i},'1')
        tabb(j,1)=1;
      end
      if strcmp(excel{j,i},'2')
        tabb(j,1)=2;
      end
      if strcmp(excel{j,i},'3+')
        tabb(j,1)=3;
      end
     
    end
  case 33 %How many times have you been in contact with that person ?
      for j=1:ligne %on passe de ligne en ligne
          tabb(j,1)=4;
          if strcmp(excel{j,i},'1')
            tabb(j,1)=1;
          end
          if strcmp(excel{j,i},'2')
            tabb(j,1)=2;
          end
          if strcmp(excel{j,i},'3+')
            tabb(j,1)=3;
          end
          
      end
      case 6 %Are you currently working from home
          for j=1:ligne %on passe de ligne en ligne
              tabb(j,1)=3;
              if strcmp(excel{j,i},'Yes')
                tabb(j,1)=1;
              end
              if strcmp(excel{j,i},'No')
                tabb(j,1)=2;
              end          
          end
      case 23 %Did you experience loss of olfaction and taste and/or shortness of breath? (At least 10 days of sickness before 48h with no symptoms OR at least 21 days since the first symptoms after less than 10 days of sickness)
          for j=1:ligne %on passe de ligne en ligne
              tabb(j,1)=3;
              if strcmp(excel{j,i},'Yes')
                tabb(j,1)=1;
              end
              if strcmp(excel{j,i},'No')
                tabb(j,1)=2;
              end          
          end
      case 24 %Did you experience Aching muscles or joints, Sore throat, Headache, Couch, Nasal congestion/runny nose, Diarrhea? (At least 10 days of sickness before 48h with no symptoms OR at least 21 days since the first symptoms after less than 10 days of sickness)
          for j=1:ligne %on passe de ligne en ligne
              tabb(j,1)=7;
              if strcmp(excel{j,i},'0')
                tabb(j,1)=1;
              end
              if strcmp(excel{j,i},'1')
                tabb(j,1)=2;
              end    
              if strcmp(excel{j,i},'2')
                tabb(j,1)=3;
              end     
              if strcmp(excel{j,i},'3')
                tabb(j,1)=4;
              end     
              if strcmp(excel{j,i},'4+')
                tabb(j,1)=5;
              end
              if strcmp(excel{j,i},'Still having them')
                tabb(j,1)=6;
              end
          end
          
  end
end
