#1. Create a data frame using the table below.
#a. Write the codes
dframe <- data.frame(
  Respondents = 1:20,
  Sex = c(2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,1,2),
  Fathers_Occupation = c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1),
  Persons_Home = c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6),
  Siblings_school = c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2),
  Types_houses = c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2))
dframe

#b.Describe the data. Get the structure or the summary of the data
summary(dframe)

#c. Is the mean number of siblings attending is 5?
mean(dframe$Siblings_school)

#d. Extract the 1st two rows and then all the columns using the subsetting functions.
extract1 <- subset(dframe[c(1:2), ])
extract1

#e. Extract 3rd and 5th row with 2nd and 4th column. Write the codes and its
extract2 <- subset(dframe[c(3,5), c(2,4)])
extract2

#f. Select the variable types of houses then store the vector that results as types_houses.
extract3 <- subset(dframe, select = Types_houses)
extract3

#g. Select only all Males respondent that their father occupation was farmer.
extract4 <- subset(dframe, 
                   Sex == 1 & Fathers_Occupation < 1, 
                   select = c(Sex, Fathers_Occupation), 
                   drop = FALSE)
extract4

#h. Select only all females respondent that have greater than or equal to 5 number of siblings attending school
extract5 <- subset(dframe, 
                   Sex == 2 & Siblings_school >= 5, 
                   select = c(Sex, Siblings_school), 
                   drop = FALSE)
extract5

#2
df = data.frame(Ints=integer(),
                
                Doubles=double(), Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)

print("Structure of the empty dataframe:")
print(str(df))