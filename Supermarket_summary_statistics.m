%% create summary statistics
clear all
list=ls('data_*.csv'); 
files=cellstr(list);

xlocation_all=[]; ylocation_all=[];
for subject=1:length(files) %import a datafile
    super = readtable(files{subject},'Delimiter',',','ReadVariableNames',true);
    participantID(subject,:)=super.ParticipantID(1);
    ntrials=length(super.mapLocationX);
    a=super.mapLocationX- super.mapLocationCorrectX;
    b=super.mapLocationY- super.mapLocationCorrectY;
    xlocation_all=vertcat(xlocation_all, super.mapLocationX(3:ntrials));ylocation_all=vertcat(ylocation_all, super.mapLocationY(3:ntrials));
    for row=1:ntrials; 
        c(:,row)=sqrt(a(row)*a(row)+b(row)*b(row));
    end % calculating c aka the shortest distance between indicated locations and the actually correct locations
    
    drop_error(subject,:)=c(3:ntrials);
    %sum calulated as => sum(vector)
    %comparing different variables with letters (such as N or W) with
    %string comparison aka strcmp:
    heading(subject,:)=sum(strcmp(super.headingDirection, super.headingDirectionCorrectDirection));
    %comparing different variables with numbers (such as 3s and 4s)
    egocentric(subject,:)=sum(super.egocentricCorrectQuadrant==super.egocentricQuadrantReponse);
    border=sum(super.mapLocationX(3:ntrials)<=426 & super.mapLocationX(3:ntrials)>=-426 & super.mapLocationY(3:ntrials)<=297 & super.mapLocationY(3:ntrials)>=-297);
    border_effect(subject,:)=(border)/(ntrials-2);
    
end
combined_data=horzcat(participantID, egocentric, heading, border_effect,drop_error);
table=array2table(combined_data, 'VariableNames',{'participantID','egocentric','heading', 'border_effect', 'derror1','derror2','derror3','derror4','derror5','derror6','derror7','derror8','derror9','derror10','derror11','derror12','derror13','derror14'});
writetable(table, 'summary_scores_supermarket.csv');
