function[final_score_max,final_score_min,index_max,index_min] = Max_score(score)
%UNTITLED2 Summary of this function goes here
%   Il permet de calculer la catégorie où se situe le score maximale de la
%   personne aisin que son score dans cette catégorie
    final_score_max=score(1);
    final_score_min=score(2);
    index_max=1;
    index_min=2;
    for i=2:length(score)
        if final_score_max<score(i)
            final_score_min=final_score_max;
            final_score_max=score(i);
            index_min=index_max;
            index_max=i;
        end
    end
        
end

