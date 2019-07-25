## Set workspace directory
setwd("/home/cflsena/Documentos/Github/R/Java Interface")

## List of packages used packages
  ## rJava: R-to-Java interface via JNI
  ## NLP:   Natural Language Processing Infrastructure
listOfPackages <- c("rJava", "NLP", "stringr")

## Returns a list of packages that are not installed
listOfPackages <- listOfPackages[!(listOfPackages %in% installed.packages()[,"Package"])]

## Install the new packages
if(length(listOfPackages)) 
  install.packages(listOfPackages)

## Load packages
library(rJava)
library(NLP)
library(stringr)

## Load the r java interface R file
source(file = "r_java_interface.r")

## returns a some string
result <- getSomeString()
result

## returns a some string array
result <- getSomeStringArray()
result

## returns a some int
result <- getSomeInt()
result

## returns a some int array
result <- getSomeIntArray()
result

## returns a some int matrix
result <- getSomeIntMatrix()
result

## returns a some double
result <- getSomeDouble()
result

## returns a some double array
result <- getSomeDoubleArray()
result

## returns a some double matrix
result <- getSomeDoubleMatrix()
result

## returns a some boolean
result <- getSomeBoolean()
result

## returns a some boolean array
result <- getSomeBooleanArray()
result

## returns a some boolean matrix
result <- getSomeBooleanMatrix()
result

## returns a some string list
result <- getSomeStringList()
result

## returns a multiplication between multiple integers
result <- multiplyInts(c(2:2,3:3,4:4))
result