%% visualizations and stats
%import the whole dataset from before with group info added to it like in
%step 1 and step 2
%DOTS AND LINES For ONE person only!!! %import the one datafile by naming
%the csv file as done in the first line below
subject='data_24.csv'
super = readtable(subject,'Delimiter',',','ReadVariableNames',true);
scatter(super.mapLocationX, super.mapLocationY, 'b');
hold on; 
scatter(super.mapLocationCorrectX, super.mapLocationCorrectY, 'r'); hold on;
xlim([ -1704/2 1704/2]); ylim([-1188/2 1188/2]); hold on
for row=1:16
    x1(row)=super.mapLocationX(row)
    x2(row)=super.mapLocationCorrectX(row)
    y1(row)=super.mapLocationY(row)
    y2(row)=super.mapLocationCorrectY(row)
    plot([x1(row) x2(row)], [y1(row) y2(row)]); hold on
end



