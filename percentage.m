function [p] = percentage(score)
%Permet de trouver le pourcentage de chaque catégorie
    total=0
    p=zeros(1,10);
    for i=1:10
        total=total+score(i);
    end
    for j=1:10
        p(j)=(score(j)/total)*100;
    end
    
end

