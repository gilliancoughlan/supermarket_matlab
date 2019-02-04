%CIRCLES for all people: look at margin of error for a group on allocentric
%response
scatter(super.mapLocationCorrectX, super.mapLocationCorrectY, 'b'); hold on;
centers=[super.mapLocationCorrectX, super.mapLocationCorrectY]
radii=mean(drop_error)'; sem_radii=std(drop_error)/sqrt(length(files))
viscircles(centers,radii,'Color','r');

for col=1:16;
    x=super.mapLocationCorrectX(row); y=super.mapLocationCorrectY(row);
    mean(drop_error(:,col))
    centers=[x,y]
    viscircles(centers,radii,'Color',colors{k});
end
