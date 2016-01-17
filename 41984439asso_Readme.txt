								CIS 6930- INTRODUCTION TO DATA MINING
								     README FILE FOR PROJECT 2


In this project we use the 41984439asso.R script in R Studio to get the association rules obtained using Apriori method for the Titanic, Retail and GameofThrones data sets

The following are the R packages to be installed in order to get the correct output for the functions:
install.packages("caret")install.packages(“arules”)install.packages("RWeka")

After the running of each function use the following detach functions to remove the packages:

detach("package:caret",unload="TRUE")
detach("package:arules",unload="TRUE")detach("package:RWeka",unload="TRUE")

The files titanic.csv, retail.csv and game_of_thrones.arff being used here are stored in my system under the path specified in the script file. So when running the functions please change the directory for the myData variable at the start of the functions to the correct path in your system so as to get the correct output.



The following is the function used in the file “41984439asso.R” file for implementing the Apriori technique on the Titanic dataset:

myTitanic <- function()



The following is the function used in the file “41984439asso.R” file for implementing the Apriori technique on the Retail dataset:

myRetail <- function()



The following is the function used in the file “41984439asso.R” file for implementing the Apriori technique on the GameofThrones dataset:

myGOT <- function()

For this game of thrones dataset I have done the following pre-processing steps on the given dataset. Please do the same steps to obtain the rules from the script.
1) Remove spaces and apostrophes from the values for the “House” attribute. Example: Convert “NightsWatch” to “Night's Watch”
2) Make sure that all attributes are nominal
3) Convert the file from csv format to arff format

I have included the arff file in the zip file submitted.

Also some of the rules may not be displayed when the script is run. This is because there are too many rules to be displayed by R Studio for the given datasets. The full list of rules can be obtained in this case by writing the output to an external file using the sink() function in R.
