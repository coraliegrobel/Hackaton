%clear all 
clc
close all
directory_initialize=cd;
cd(directory_initialize);
[num, txt, tab] = xlsread('final.xlsx');
%question_id={'sex','age','canton','Pre-existing medical conditions','Working from home','Is there at least someone else in the household not working from home','Are you or someone from you household working in a medical facility','Have you been tested positive'};
%nombre_questions=length(question_id);
nombre_questions=33;
%% On prend un string dans l'excel brut qu'on va convertir en chiffre dans un autre tableau récapitulatif masi à faire différemment pour chaque question
[ligne1,colonne1]=size(tab);
tab2=zeros(ligne1,colonne1);
for i=1:nombre_questions %on passe de colonne en colonne
    [colonne]=traduction_question(i,tab);
    tab2(:,i)=colonne;    
end

%% Pour analyser une personne, il faut parcourir par la ligne pour rester sur le même sujet pour son score
score_total={};
score=[0,0,0,0,0,0,0,0,0,0];
[loi_normale] = Gauss();
for i=1:ligne1%itérations sur les personnes
    [score]= calcul_score(score,tab2,loi_normale,i,nombre_questions);
    score_total{1,i}=score;
    [final_score_max,final_score_min,index_max,index_min]=Max_score(score);
    [p]=percentage(score);
    score_total{2,i}=p;
    score_total{3,i}=[final_score_min];
    score_total{4,i}=[index_min];
    score_total{5,i}=[final_score_max];
    score_total{6,i}=[index_max];
    score=[0,0,0,0,0,0,0,0,0,0];
end

 
clear colonne colonne1 final_score i index ligne1 loi_normale nombre_questions num question_id score tab tab2 txt x y
cd(directory_initialize);
save('score_total.mat','-v7.3');



            