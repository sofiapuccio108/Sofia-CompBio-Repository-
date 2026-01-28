########

# this is a document describing vectors in R 
# 22 January 26
#----------------------------------------------
#Start
#assignment operator is <- 

x <- 5 #cmd retun makes it run 
print (x) #function: command that does a specific thing, has input and output, (arguments) specify parameters of command
y = 3 #this also created the Y object and assigned it 3 and printed it

plant_height_and_weight <- 3 #snake case
plantHeight <- 4 #camel case 
plant.height <- 2 #not preferred, r automatically does it some time but its not good
#whichever case you start with, use that for the whole script
# . reserve for temp variable 

# homogenous data type: homogeneous(everythings the same eg. all integers), heterogeneous (multiple types eg. integers, leters, etc. erogenous)
# DIMS, homo, hetero
# 1D, Vector, list
# 2D, matrix, data frame 
# ND, array, list of lists 

#character strings, 1d atomic vector
z <- c(3.2, 5, 5, 6) #c() makes the vector
print(z)
typeof(z) #what type variable 

z <- c(c(3.2,3),c(3,5)) 
print(z)
z
is.character(z) #confirms it is variable type by tru or false

#character strings 
t <- "perch"
print(t)

t <- c("perch", "bass", "trout") #looks like one but its two, use t[number], to show which one u want
print(t)
t[3] #other languages start at 0 as the first position, in r it starts at 1

# logical/boolean --- True v False 
z <- c(TRUE, FALSE, TRUE)
print(z)

is.logical(z) #proves its boolean is says TRUE
typeof(z) #will tell is its logical

c(T, F) #can work instead of full word, but can get tricky with variable names
mean(z)

#properties of a vector 
# type, length, naming 

# type 
z <- c(1.1, 1.2, 3, 4.4)
typeof(z) #gives type
is.numeric(z) #is. gives logical response
d <- as.character(z) #as. coerces variable, so now this is a character string not numeric
print(d)
typeof(d) 
#if there are any " " in your vector R will automatically coerce it to character eg. c(1,2,"3",4)


# length
length(d) #number of things in vector, important for looping

#naming 
#random number generator
w <- runif(5) #uniform, with number of outputs requesting 
names(w) #gave us a null, we havent created any names yet
print (w) #just values, no names

names(w) <- c("A", "B", "C", "D", "E") #gave names, doesnt afect numeric status of variable
print(w) 
mean(w)
print(w) <- NULL #resets the names

# special data types 
z <- c(3.2, 3, 3, NA) #NA is a special
print(z)
typeof(z) #double (numerics with integer and decimal)
length(z) #4
typeof(z[4])
sum(z) #cant sum because NA is a missing value
sum(z, na.rm=TRUE) #removes any NA that might be present, NA IS NOT 0, 0 IS A VALUE, NA IS LACK OF VALUE

z <- 0/0
z #NaN, missing 
z <- 1/0
z #infinity

# vectorization
z <- c(10, 20, 30)
z + 1 #everything gets 1 added to it

y <- c(1, 2, 3)

z + y

#recycling
x <- c(1, 2)
z + x #because there is uneven terms (z has 3 and x has 2) the terms recycle

# Atomic Vectors Part II 

z <- vector(mode = "numeric", length = 0)
print(z)
#dynamic creation (don't in R, do in Python)
z <- c(z, 5) 
print (z)


#Predefined Length 
z <- rep(0, 100)
length (z)

z <- rep(NA, 100)
z

typeof(z)
z[1] <- "Vermont"
head(z)
typeof(z)


my_vector <- runif(100)
my_names <- paste("Species", seq(1:length(my_vector)), spe="")
print(my_names)


names(my_vector) <- my_names
head(my_vector)
str(my_vector)


# using the rep function: 
rep(0.5, 6)
rep(x = 0.5, times = 6)

my_vec <- c(1,2,3)

#repeat a vector 
rep(x = my_vec, times = 2, each = 2) 

#sequencing vectors 
seq(from = 2, to = 4)
2:4 #ok shorthand 

x <- seq(from = 2, to = 4, length = 7) # evently space witha final length of seven 

my_vec <- 1:length(x) # common in other languages 
my_vec # slow!

# better in R 
seq_along(my_vec)

# generatihng random vectors 

runif(5) # gives us 5 values 0 to 1 

# the params 
runif(n=3, min=100, max=101)

set.seed(123) #takes any number

#gives you the same progression of random numbers 

runif(n=3, min=0, max=1)

#normal distribution 
out <- rnorm(n = 500, mean = 100, sd = 30) 
hist(out)

# random sampling 

long_vec <- seq_len(10)

sample(x=long_vec, size =10, replace = F)

#weighted sample from a vec
weights <- c(rep(10,5), rep(90, 5))

sample(x=long_vec, replace=TRUE, prob=weights)

#subsetting vectors 

z <- c(3.1, 9.2, 1.3, 0.4, 7.5)
print(z)

z[1]
z[-c(2,3)] #using vecs to slice 

# using logicals 
z[z<3]

# five basic relational operators 
# < less than 
# > greater than 
# <= less than or equal to 
# >= greater than or equal to 
# == equal to 

#logical operators 
# ! not 
# & and (vector) 
# | or (vector) 
# xor (x,y) 

x <- 1:5
y <- c(1:3, 7, 7)
x == 2 #equals 
! = 2 #not equal 

x == 5 & y ==7 #using and 

x == 1 | y == 7 # using or 

x == 3 | y == 3 

xor(x==3, y ==3) 

#missing values 
set.seed(90)
z <- runif(10)

z < 0.5
z[z < 0.5]

z[which(z < 0.5)]

zd <- c(z, NA, NA) 

zd[zd < 0.5]

#dropping NAs with which to index 
zd(which(zd < 0.5))

