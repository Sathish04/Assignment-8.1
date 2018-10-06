#Ques.1. Use the package RcmdrPlugin.IPSUR.
#data(RcmdrTestDrive)

#Ques.1.a. Calculate the average salary by gender and smoking status.

RcmdrTestDrive_meansalary<-sapply(RcmdrTestDrive$salary, mean, na.rm = T)
RcmdrTestDrive_meansalary
z<-data.frame(RcmdrTestDrive$gender,RcmdrTestDrive$smoking,RcmdrTestDrive_meansalary)
z


#Ques.1.b. Which gender has the highest mean salary?

range(RcmdrTestDrive_meansalary)
high_salary<-z[which(z$RcmdrTestDrive_meansalary == 1156.16),]
high_salary

#Ques.1.c. Report the highest mean salary.

a<-RcmdrTestDrive$salary
View(a)
which.max(a)
 


#Ques.1.d. Compare the spreads for the genders by calculating the standard deviation of salary by gender. 

tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, sd)



