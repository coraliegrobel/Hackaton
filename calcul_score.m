function [score] = calcul_score(score,tab2,loi_normale,i,n)
%UNTITLED Summary of this function goes here
%   Calculer le score d'une personne
     for k=1:n %itération sur les questions
        rep=tab2(i,k);
        switch(rep)
            case 1
                score=score+loi_normale{1,k};
            case 2
                score=score+loi_normale{2,k};
            case 3
                score=score+loi_normale{3,k};
            case 4
                score=score+loi_normale{4,k};
            case 5
                score=score+loi_normale{5,k};
            case 6
                score=score+loi_normale{6,k};
            case 7
                score=score+loi_normale{7,k};
            case 8
                score=score+loi_normale{8,k};
        end
    end

end

