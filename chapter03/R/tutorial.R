# Import the tree data CSV
w1 <- read.csv(file="w1.dat",sep=",",head=TRUE)
tree <- read.csv(file="trees91.csv",sep=",",head=TRUE)
# Historgram of data, plus titles and labels - always annotate your plots!
hist(w1$vals,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves')
# Specify the number of breaks to use
hist(w1$vals,breaks=2,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves')
hist(w1$vals,breaks=4,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves')
hist(w1$vals,breaks=6,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves')
hist(w1$vals,breaks=8,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves')
hist(w1$vals,breaks=12,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves')
# Historgram and a Box plot - A boxplot provides a graphical view of the median, quartiles, maximum, and minimum of a data set. 
hist(w1$vals,main='Leaf BioMass in High CO2 Environment',xlab='BioMass of Leaves',ylim=c(0,16))
boxplot(w1$vals,horizontal=TRUE,at=16,add=TRUE,axes=FALSE)
# The command to generate a normal quantile plot is qqnorm
qqnorm(w1$vals,main="Normal Q-Q Plot of the Leaf Biomass",xlab="Theoretical Quantiles of the Leaf Biomass",ylab="Sample Quantiles of the Leaf Biomass")
# Scatter plot of the relationship between the stem biomass ("tree$STBM") and the leaf biomass ("tree$LFBM"). 
plot(tree$STBM,tree$LFBM,main="Relationship Between Stem and Leaf Biomass",xlab="Stem Biomass",ylab="Leaf Biomass")
# Find the correlation of the scatter diagram - this will be in the output file.
cor(tree$STBM,tree$LFBM)
