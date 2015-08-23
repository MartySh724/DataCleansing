## run_analysis.r

An R script file for calculating the average of the mean for the Human Activity Recognition trains.

The script uses the following variables:


| Variable     | Description     |
| headerNames  | Names of the features used.  This is used for defining the headers of the train results |
| activity     | Dataset listing the ID and Activity |
| testXRaw     | The raw test results |
| testYRaw     | The raw activity for the test |
| testGrp      | The combinination of the X and Y Raw test data |
| trainXRaw    | The raw training data |
| trainYRaw    | The raw training activities  |
| trainGrp     | The combinination of the raw X and Y training data |
| analysis     | The combined test and training groups |
| measureMean  | List of columns that are the mean calucations |
| extract      | Subset of analysis that has only the mean and std deviation values
| avgMeasure   | The average of the measurements broken down by Activity |