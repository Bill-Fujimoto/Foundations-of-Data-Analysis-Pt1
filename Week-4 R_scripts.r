library(SDSFoundations)
acl <-AustinCityLimits

table(acl$Grammy)

# Calc proportion of table wrt total samples
gtab = table(acl$Grammy)
prop.table(gtab)

gtab2 = table(acl$Grammy, acl$Gender)
prop.table(gtab2)

# Calc proportion of table by row or column, option: 1=row, 2 = col
prop.table(gtab2, 1)
prop.table(gtab2, 2)

# Group Bar Charts

barplot(gtab, main = "ACL Grammy Winners", xlab="Grammy winner", ylab ="Counts")

barplot(gtab2, legend = T, main = "Grammy Winner by Gender", ylab ='Counts', xlab ='Gender', beside = TRUE)

barplot(prop.table(gtab2, 2), legend = TRUE, main = "Grammy Winner by Gender", ylab ='Proportion', xlab ='Gender', beside = TRUE)
