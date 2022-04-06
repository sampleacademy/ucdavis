# sta 141a spring 2022
# instructor: Emanuela Furfaro

# we are going to call the .R files "R scripts"
# a script is a sequence of instructions that is interpreted or carried out 
# by another program rather than by the computer processor

# Other important parts of the IDE: bottom left is the command line of R
# bottom right is files/plots/list of packages/help
# top right is the global environment that contains all the objects (variables) that you create

# to run R code: 
# hit the Run botton at the top of the script OR
# copy and paste the code in the console, then hit enter OR
# position the cursor on the line of code you want to run and hit command+enter (CTRL+enter)

# working directory
# the working directory of a process is a directory of a hierarchical file system, 
# if any, associated with each process
getwd()

setwd("/Users/furfaro/OneDrive - University of California, Davis/STA 141A") 
# or use IDE to set working directory 
# it may be useful to set the working directory in the script's location
# Session > set working directory > To source file location

# The working directory will be very important when we refer to external
# files (like external datasets) 

# WARNING: when working in R markdown, working directories can be a little tricky.

# elementary commands
# arithmetic operations
2+2
3/16
3*2
# +, -, *, /, ^
2^3
# %% remainder, %/% integer division
7%%2
7%/%2
7/2

# some R built-in functions that can be applied on scalars
log(x=2)
log(x=2, base = 10)
factorial(x=6)
exp(x=6)
exp(x=log(x=6))

# log, factorial, exp, are built-in functions

# how to ask for help regarding a function
?log

# asking help for special characters
?"^"

# exp, sin, cos, tan, sqrt
# assign value to a variable
# assignment operator is <- or =
x <- 1
y <- 2
z = 1
# I suggest you make a decision and use always the same assignment 
# symbol all throughout your script
# shortcut for <- operator: 
# Mac: Option + -
# Windows: Alt + -

# print the variable (the object created and assigned in the global environment)
x
print(x)

# print and assign
(z<-3)

# r is case sensitive
X # has not been defined, but
x # has been defined

# objects in the workspace
ls() # or objects()
# function for removing objects from the workspace
rm(y,z)
rm(list=ls()) # removes everything

# save objects in an RData file
x <- 1
save(x,file="example.RData") # saving in the current working directory

# remove all the objects in the workspace
rm(list=ls())

# load RData file
load("example.RData") # it looks for the file called example.RData in the current working directory
