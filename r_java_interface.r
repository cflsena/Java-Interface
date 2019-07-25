## Initializes The Java Viritual Machine with RJavaInterfaceExample.jar
.jinit("/home/cflsena/Documentos/Github/R/Java Interface/RJavaInterface/RJavaInterfaceExample.jar")

## Get the class object in the package path
rJavaInterface<-.jnew("br/com/r/java/main/RJavaInterfaceExample")

# Function to return a some string
getSomeString <- function() 
{
  ## getSomeString method results
  resultJ<-.jcall(rJavaInterface, "S", "getSomeString")
  
  ## Sets the encoding to the result (if necessary)
  #Encoding(resultJ)<-"UTF-8"
  
  ## Pass the result to the String type (if necessary)
  #resultJ<-as.String(resultJ)
  
  resultJ
}

# Function to return a some string array
getSomeStringArray <- function() 
{
  ## getSomeStringArray method results
  resultJ<-.jcall(rJavaInterface, "[S", "getSomeStringArray")
  
  ## Sets the encoding to the result (if necessary)
  #Encoding(resultJ)<-"UTF-8"
  
  ## Pass the result to the String type (if necessary)
  #resultJ<-as.String(resultJ)
  
  resultJ
}

# Function to return a some int
getSomeInt <- function() 
{
  ## getSomeInt method results
  resultJ<-.jcall(rJavaInterface, "I", "getSomeInt")
  resultJ
}

# Function to return a some int array
getSomeIntArray <- function() 
{
  ## getSomeIntArray method results
  resultJ<-.jcall(rJavaInterface, "[I", "getSomeIntArray")
  resultJ
}

# Function to return a some int matrix
getSomeIntMatrix <- function() 
{
  ## getSomeIntMatrix method results
  resultJ<-.jcall(rJavaInterface, "[[I", "getSomeIntMatrix", simplify = T)
  resultJ
}

# Function to return a some double
getSomeDouble <- function() 
{
  ## getSomeDouble method results
  resultJ<-.jcall(rJavaInterface, "D", "getSomeDouble")
  resultJ
}

# Function to return a some double array
getSomeDoubleArray <- function() 
{
  ## getSomeDoubleArray method results
  resultJ<-.jcall(rJavaInterface, "[D", "getSomeDoubleArray")
  resultJ
}

# Function to return a some double matrix
getSomeDoubleMatrix <- function() 
{
  ## getSomeDoubleMatrix method results
  resultJ<-.jcall(rJavaInterface, "[[D", "getSomeDoubleMatrix", simplify = T)
  resultJ
}

# Function to return a some boolean
getSomeBoolean <- function() 
{
  ## getSomeBoolean method results
  resultJ<-.jcall(rJavaInterface, "Z", "getSomeBoolean")
  resultJ
}

# Function to return a some boolean array
getSomeBooleanArray <- function() 
{
  ## getSomeBooleanArray method results
  resultJ<-.jcall(rJavaInterface, "[Z", "getSomeBooleanArray")
  resultJ
}

# Function to return a some boolean matrix
getSomeBooleanMatrix <- function() 
{
  ## getSomeBooleanMatrix method results
  resultJ<-.jcall(rJavaInterface, "[[Z", "getSomeBooleanMatrix", simplify = T)
  resultJ
}

## Function to return a some string list
getSomeStringList <- function() 
{
  ## getSomeStringList method results
  resultJ<-.jcall(rJavaInterface, "S", "getSomeStringList")
  
  ## Sets the encoding to the result (if necessary)
  #Encoding(resultJ)<-"UTF-8"
  
  ## Pass the result to the String type (if necessary)
  resultJ<-as.String(resultJ)
  
  ## Remove the character "[" of the sentence information
  resultJ<-gsub("[[]", "", resultJ, fixed=F)
  
  ## Remove the character "]"
  resultJ<-gsub("[]]", "", resultJ, fixed=F)
  
  ## split the string by the character "," into a list
  resultJ<-str_split(resultJ, ",")
  
  resultJ
}

## Function to send multiple values and return their multiplication
multiplyInts <- function(intVector){
  
  ## multiplyInts method results
  resultJ<-.jcall(rJavaInterface, "I", "multiplyInts", intVector)
  resultJ
}