#Sample Plot

DSSurvey %>% 
  ggplot(aes(x = ADHD, fill =  gender_DS)) +
  geom_bar()

DSSurvey %>% 
  ggplot(aes(x = autism, fill =  gender_DS)) +
  geom_bar()

DSSurvey %>% 
  ggplot(aes(x = substance_abuse, fill =  gender_DS)) +
  geom_bar()

DSSurvey %>% 
  ggplot(aes(x = sexED_no, fill =  gender_DS)) +
  geom_bar()

DSSurvey %>% 
  ggplot(aes(x = sexED_bound, fill =  gender_DS)) +
  geom_bar()

DSSurvey %>% 
  ggplot(aes(x = sexED_danger, fill =  gender_DS)) +
  geom_bar()

DSSurvey %>% 
  ggplot(aes(x = sexED_health, fill =  gender_DS)) +
  geom_bar()

DSSurvey %>% 
  ggplot(aes(x = sexED_prevent, fill =  gender_DS)) +
  geom_bar()

DSSurvey %>% 
  ggplot(aes(x = sexED_WS, fill =  gender_DS)) +
  geom_bar()

DSSurvey %>% 
  ggplot(aes(x = sexED_other, fill =  gender_DS)) +
  coord_flip()
  geom_bar()


summary(DSSurvey$gender_DS)

# Income vs Clinic Visits

DSSurvey %>% 
  group_by(income, DSvisit) %>% 
  summarize(n = n()) %>% 
  filter(!is.na(income)) %>% 
  ggplot(aes(x = DSvisit, y = income, color =  n)) +
  geom_point(na.rm = TRUE, size = 8) +
  ggtitle('Income vs Clinic Visits')




# income and DS education against therapies 

DSSurvey %>% 
  filter(income == "Less than $10,000"
  ) %>% 
  select(income, DSeducation, therapy_equine, DSage, ed_respond)

DSSurvey %>% 
  filter(!is.na(income)) %>%
  #melt()
  ggplot(aes(x = DSeducation, y = income, color = therapy_equine)) +
  geom_point() +   
  geom_jitter() +
  ggtitle('DS Education vs income for Equine Therapy') 

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_PT)) +
  geom_point() +   
  geom_jitter() +
  ggtitle('DS Education vs income for Physical Therapy')

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_OT)) +
  geom_point() +   
  geom_jitter() +
  ggtitle('DS Education vs income for Occupational Therapy')

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_feeding)) +
  geom_point() +   
  geom_jitter() +
  ggtitle('DS Education vs income for Feeding Therapy')

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_speech)) +
  geom_point() +   
  geom_jitter() +
  ggtitle('DS Education vs income for Speech Therapy')

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_music)) +
  geom_point() +   
  geom_jitter() +
  ggtitle('DS Education vs income for Music Therapy')


# Clinic Distance vs Frequency of Clinic Visits against income

DSSurvey %>% 
  filter(!is.na(clinicdistance)) %>%
  ggplot(aes(x = DSvisit, y = clinicdistance, color = DSage)) +
  geom_point() +   
  geom_jitter() +
  ggtitle('Distance from Clinic vs Frequency of Visits') +
  facet_wrap(~income)


# Clinic Distance vs Frequency of Clinic Visits with Curve

DSSurvey %>% 
  group_by(clinicdistance, DSvisit) %>%
  summarize(n = n()) %>%
  filter(!is.na(clinicdistance)) %>%
  ggplot(aes(x = clinicdistance, y = DSvisit, color = n)) +
  geom_point() +   
  geom_jitter() +
  geom_smooth(aes(x = as.numeric(clinicdistance), y = as.numeric(DSvisit), weight = n)) +
  ggtitle('Distance from Clinic vs Frequency of Visits') 

#DS Education vs Frequency of Clinic Visits

DSSurvey %>% 
  #filter(!is.na(DSeducation)) %>% 
  ggplot(aes(x = DSage, y = DSeducation, color =  DSvisit)) +
  geom_point(na.rm = TRUE) +
  geom_jitter() +
  ggtitle('DSeducation vs DSvisit')

# Clinic attendance vs State vs. Distance travelled

DSSurvey %>%
  filter(!is.na(clinicdistance)) %>% 
  ggplot(aes(x = clinicdistance, y = state, color = DSvisit)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  ggtitle('Clinic attendance vs State vs. Distance travelled') 

DSSurvey %>% 
  select(contains('concern')) %>% 
  summary()

# Age and Gender vs Regression types
DSSurvey %>%
  filter(!is.na(regress)) %>% 
  filter(!is.na(gender_DS)) %>%
  ggplot(aes(x = gender_DS, y = DSage, color = regress)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  ggtitle('gender vs age vs. did they regress') 

DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  filter(!is.na(gender_DS)) %>%
  ggplot(aes(x = gender_DS, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  ggtitle('gender vs age vs. did they regress (CAT)') 

DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  filter(!is.na(gender_DS)) %>%
  ggplot(aes(x = gender_DS, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  ggtitle('gender vs age vs. did they regress (DRESS)') 

DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  filter(!is.na(gender_DS)) %>%
  ggplot(aes(x = gender_DS, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  ggtitle('gender vs age vs. did they regress (ATTEND)') 

DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  filter(!is.na(gender_DS)) %>%
  ggplot(aes(x = gender_DS, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  ggtitle('gender vs age vs. did they regress (RW)') 

DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  filter(!is.na(gender_DS)) %>%
  ggplot(aes(x = gender_DS, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  ggtitle('gender vs age vs. did they regress (SOCIAL)') 

DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  filter(!is.na(gender_DS)) %>%
  ggplot(aes(x = gender_DS, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  ggtitle('gender vs age vs. did they regress (DRESS)') 

DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>%
  filter(!is.na(gender_DS)) %>%
  ggplot(aes(x = gender_DS, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  ggtitle('gender vs age vs. regression')

DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Dress Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Reading and Writing Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Social Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Attend a day program Regression vs. Clinic visits')

DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Self care Regression vs. Clinic visits')

DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Catatonia Regression vs. Clinic visits')


DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Dress Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Reading and Writing Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Social Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Attend a day program Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Self care Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Catatonia Regression vs. Clinic visits vs. Sleep apnea')


DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Dress Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Reading and Writing Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Social Regression vs. Clinic visits') 

DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Attend a day program Regression vs. Clinic visits')

DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Self care Regression vs. Clinic visits')

DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Catatonia Regression vs. Clinic visits')


DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Dress Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Reading and Writing Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Social Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Attend a day program Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Self care Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Catatonia Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Regression vs. Clinic visits vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress)) +
  geom_point(na.rm = TRUE, size = 1) 
  ggtitle('Regression vs. Clinic visits vs. Sleep apnea')

# Boxplot Regression vs. Sleep apnea
DSSurvey %>%
  filter(!is.na(regress)) %>%
  ggplot(aes(x=as.factor(regress), y=DSage)) +
  geom_boxplot(fill="yellow", alpha=0.2) + 
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle('Regression vs. Sleep apnea')

DSSurvey %>%
  ggplot(aes(x=as.factor(mentaldiag), y=DSage)) +
  geom_boxplot(fill="yellow", alpha=0.2) + 
  facet_wrap(~health_apnea) +
  xlab("Diagnoses of Mental Health") +
  ggtitle('Sleep Apnea vs. Diagnoses of Mental Health')

# How often one visits vs. age.
ggplot(DSSurvey, aes(x=as.factor(DSvisit), y=DSage)) + 
  geom_boxplot(fill="red", alpha=0.2) + 
  xlab("DSvisit")

# Barplot Dealing with income and DSvisits
ggplot(DSSurvey, aes(x=as.factor(DSvisit), fill=as.factor(income) )) +
  geom_bar( )


# Example 2:
ggplot(DSSurvey, aes(x=as.factor(DSvisit), fill=as.factor(income) )) +
  geom_bar( ) +
  scale_fill_brewer(palette = "Set1")

# Barplot Clinic distance without NAs vs. Clinic visits
DSSurvey %>%
  filter(!is.na(as.factor(traveltime))) %>%
  ggplot(aes(x=as.factor(DSvisit), fill=as.factor(traveltime))) + 
  geom_bar( )

# Barplot Clinic distance vs. Clinic visits
ggplot(DSSurvey, aes(x=as.factor(DSvisit), fill=as.factor(traveltime) )) +
  geom_bar( )

# Clinic visits vs. Barriers to clinic vs. Insurance vs. Income 
# Jitter plot (sorry, I hate it too)
DSSurvey %>% 
  gather(key = "clinic", value = "DSAge", matches("^clinic_") ) %>% 
  ggplot(aes(x = insurance, y = income)) + 
  geom_jitter() +
  facet_wrap(~clinic)

DSSurvey %>% 
  gather(key = "clinic", value = "DSAge", matches("^clinic_") ) %>% 
  ggplot(aes(x = insurance, y = DSvisit)) + 
  geom_jitter() +
  facet_wrap(~clinic)

DSSurvey %>% 
  gather(key = "clinic", value = "DSAge", matches("^clinic_") ) %>% 
  ggplot(aes(x = DSvisit, y = income)) + 
  geom_jitter() +
  facet_wrap(~clinic)

summary(DSSurvey$firstnotified)


# Failed attempt at Density Plot
library(ggplot2)
ggplot(aes(as.numeric(DSage), colour=regress_selfcare, fill=regress_selfcare)) +
  subset(DSSurvey, regress_selfcare & ! is.na(as.numeric(DSage))) +
  geom_density(alpha=0.55)


DSSurvey %>% 
  ggplot(aes(x = regress, y = DSage)) +
  geom_point() +
  facet_wrap(~ diagnoses_total) +
  ggtitle('Number of diagnoses v. Regression')

ggplot(DSSurvey, aes(x=as.factor(income), fill=as.factor(future_housing) )) +
  geom_bar( ) +
  coord_flip() +
  ggtitle('Income v. Concern level for future housing')

ggplot(DSSurvey, aes(x=as.factor(income), fill=as.factor(futsummary(DSSurvey$mentaldiag)
ure_opps) )) +
  geom_bar( )

ggplot(DSSurvey, aes(x=as.factor(income), fill=as.factor(future_access) )) +
  geom_bar( )

ggplot(DSSurvey, aes(x=as.factor(income), fill=as.factor(future_employ) )) +
  geom_bar( )

ggplot(DSSurvey, aes(x=as.factor(income), fill=as.factor(future_ALZ) )) +
  geom_bar( )

ggplot(DSSurvey, aes(x=as.factor(income), fill=as.factor(future_woGuardian) )) +
  geom_bar( )











