$ problem---a
$ creating database columns
name<-c("souvik maity","satyajit maity","koushik patra","suman biswas","sudip rana","soumya bhunia","ketaki kar","tanusree roy","kingshuk jana","priyanka jain")
age<-c(21,22,23,24,23,22,22,21,23,22)
roll<-1:10
sex<-c("male","male","male","male","male","male","female","female","male","female")
mobile<-c(8145369354,9147352348,7005214789,7001487956,NA,9749481037,9749482587,8145978562,9933923250,9932506067)

$ creating a data frame
assign1<-data.frame(name,age,roll,sex,mobile)
assign1

I.
$ complete part of the database
assign1[complete.cases(assign1),]
II.
$ incomplete part of the database
assign1[!complete.cases(assign1),]
III.
$ omiting th incomplete part from the database
assignnew1<-na.omit(assign1)

$ problem---b
$ create another database by adding a new column of district
district<-c("kolkata","howrah","nodia","kolkata","paschim medinipur","purba medinipur","purba medinipur","howrah","kolkata","paschim medinipur")
assign2<-data.frame(assign1,district)

I.
$ database for the student coming from a particular district
kolkatastu<-assign2[district=="kolkata",]
howrahstu<-assign2[district=="howrah",]
purbamedinipurstu<-assign2[district=="purba medinipur",]
paschimmedinipurstu<-assign2[district=="paschim medinipur",]
nodiastu<-assign2[district=="nodia",]

II.
$ database for the male or female student coming from same district
kolkatamale<-assign2[sex=="male"&district=="kolkata",]
kolkatafemale<-assign2[sex=="female"&district=="kolkata",]

howrahmale<-assign2[sex=="male"&district=="howrah",]
howrahfemale<-assign2[sex=="female"&district=="howrah",]

paschimmedinipurmale<-assign2[sex=="male"&district=="paschim medinipur",]
paschimmedinipurfemale<-assign2[sex=="female"&district=="paschim medinipur",]

purbamedinipurmale<-assign2[sex=="male"&district=="purba medinipur",]
purbamedinipurfemale<-assign2[sex=="female"&district=="purba medinipur",]

nodiamale<-assign2[sex=="male"&district=="nodia",]
nodiafemale<-assign2[sex=="female"&district=="nodia",]


