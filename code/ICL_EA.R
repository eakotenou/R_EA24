#########################################################
#            University of Oklahoma 
#           Emilien Akotenou, Ph.D student
#                  Jan 28, 2024
########################################################
##Clear memory
rm(list = ls())  # Clear all objects from the workspace
cat("\014")  # Clear the console

# Working directories 
workdir <- "/Users/emilienakotenou/Documents/R_EA24"

#Directory
# Specify the path for the new directory
setwd(workdir)

code <- file.path(workdir, "code") 
data <- file.path(workdir, "data") 
docs <- file.path(workdir, "docs")

# Create the directory
dir.create(code)
dir.create(data)
dir.create(docs)

##OR
# Create subdirectories in a loop
subdirectories <- c("code", "data", "docs")

for (subdir in subdirectories) {
  subdir <- file.path(workdir, subdir)
  # Check if the subdirectory exists
  if (!file.exists(subdir)) {
    # If not, create the subdirectory
    dir.create(subdir)
    cat(paste("Directory created:", subdir, "\n"))
  } else {
    cat(paste("Directory already exists:", subdir, "\n"))
  }
}
#Packages
install.packages("tidyverse", repos='http://cran.us.r-project.org') 
install.packages("wooldridge", repos='http://cran.us.r-project.org')

#Exploring data
#2.1 Loading data
#We’re going to load a data set from the wooldridge package. The data
#set is called wage1.
df <- as_tibble(wage1) # convert it to a tibble, which is a nice format for data sets
