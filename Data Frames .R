# Data Frames 
z_mat <- matrix(data = 1:30, ncol = 3, byrow = T) 

z_dframe <- as.data.frame(z_mat)
# turn into df 

str(z_mat)
str(z_dframe)

head(z_dframe)

head(z_mat)

z_mat[1,1]
z_mat[2,2]
z_dframe$V2[2] # correct for a DF 

#column ref 
z_dframe[,3]
z_mat[,3]


# one dimension referencing 
z_mat[2]
z_dframe[2]

#missing data in DFs and Mats

zd <- runif(10)
zd[c(5,7)] <- NA 
print(zd)

#complete cases 
complete.cases(zd)

#filter for only true 
zd[complete.cases(zd)]

# which positions are missing? 
which(complete.cases(zd)) 
which(!complete.cases(zd)) #adding exclimation point makes it (not) complete cases 

# missing data in a matrix 
m <- matrix(1:20, nrow = 5)
print(m)

# add missing data 
m[1,1] <- NA 
m[5,4] <- NA
m

m[complete.cases(m),]

#getting complete cases for only certain columns! 
m[complete.cases(m[,c(1,2)])]

m[,c(1,2)]
complete.cases(m[,c(1,2)]) #drops first row 
complete.cases(m[,c(2,3)]) # no drops 
m[,c(2,3)]
m[complete.cases(m[,c(3,4)])] #drops row 4 
m[,c(3,4)]


# Subsetting mats and data frames 
m <- matrix(data=1:12,nrow=3)
print(m)
dimnames (m) <- list(paste("Species", LETTERS[1:nrow(m)], sep=""), paste("Site",1:ncol(m),sep=""))
print(m)

# element - wise subsetting 
m[1:2, 3:4]
m[c("SpeciesA", "SpeciesB"), c("Site3", "Site4")]

m[1;2,]

#using logical for subsetting 
m[colSums(m) > 15 ]
sums <- colSums (m) # create sums 

sums [sums > 15]

rowSums(m)
m[!rowSums(m)==22, ]
m[, "Site1"]
m[,"Site1"]<3

# data curation 

read.table(file="data/test.csv")
#my computer stopped working at this point but you would link this to your data file and then name both the heders and the sep. with the column names as well 
# you would then "head(my_data)"

saveRDS(z_dframe, file="Path/To/FileName.RDS") #.RDS is not needed but good to have 
z_dframe

#using the RDS reader 
unfrozen_Z <- readRDS("data/zData.RDS")
