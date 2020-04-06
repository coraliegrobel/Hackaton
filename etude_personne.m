clear all
clc
close all

directory_initialize=cd;
load ('C:\Users\coralie\Desktop\Hackaton\score_total.mat')
cd(directory_initialize);
[ligne,colonne]=size(score_total);
sortie_finale={};
toute_figure=[];
txt='Distribution of your score';
for sub=1:colonne
    %Permet de mettre une ou deux catégories si elles sont très écartées
    if abs(score_total{6,sub}-score_total{4,sub})> 2
        sortie_finale{1,sub}=[score_total{6,sub}, score_total{4,sub}];
   
    else
        sortie_finale{1,sub}=[score_total{6,sub}];   
    end
    
    %Permet d'afficher le graphique du score de chaque participant
    toute_figure=[toute_figure figure];
    histogram('Categories',{'1','2','3','4','5','6','7','8','9','10'},'BinCounts',score_total{2,sub})
    xlabel('Risk for the society (1 is the smallest and 10 the biggest)')
    ylabel('Percentage of your score')
    title(txt)
        
end
