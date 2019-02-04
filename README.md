Place scripts into ...
# 1. Check_data
A script that checks if the data was saved correctly by checking the length of the csv. faulty_files vector will appear in the workspace. This indicates the csv. files that are incorrect. cd into the folder that contains all your csv. files before you run this script. 

# 2. Summary data
Extracts variables of interest from each csv file and saves them in the workspace:
- 'Participant_ID'
- 'Egocentric' Accuracy (0-14)
- 'Heading' Accuracy (0-14)
- Allocentric 'drop_error' for 14 trials (aka the shortest distance between response locations and the actually correct locations on the supermarket map)
- 'Border_effect' (aka number of response in the map central/peripheral region of the supermarket map).  
A vector called 'combined_data' concatenates the above variables into one datafile that can be used in statistical programs such as R and SPSS.
# 3. Visualizating data: Allocentric map response by individual
- Relies on script in 2 being executed before.
- Please indicate the participant you would like to visualise the allocentric map response for. 
- Blue circles are for the correct location. Red circles indicate participant responses. Line between the circles is the drop error. 

