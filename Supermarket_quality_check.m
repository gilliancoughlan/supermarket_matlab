%% check for faulty files

list=ls('*.csv'); 
files=cellstr(list);

for subject=1:length(files) 
    super = readtable(files{subject},'Delimiter',',','ReadVariableNames',true);
    if length(super.ParticipantID)>16
        faulty_files(subject)=files(subject);
    end
end
faulty_files=faulty_files'
%fix the faulty files