#Data Play Time  


#Sample Plot

DSSurvey %>% 
  ggplot(aes(x = visitstotal, y = clinicdistance, color =  gender_DS)) +
  geom_jitter() +
  facet_wrap(~ income)

# Income vs Clinic Visits

DSSurvey %>% 
  group_by(income, DSvisit) %>% 
  summarize(n = n()) %>% 
  filter(!is.na(income)) %>% 
  ggplot(aes(x = DSvisit, y = income, color =  n)) +
  geom_point(na.rm = TRUE, size = 10) +
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
  geom_jitter() +
  ggtitle('DS Education vs income for Equine Therapy') 

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_PT)) +
  geom_jitter() +
  ggtitle('DS Education vs income for Physical Therapy')

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_OT)) +
  geom_jitter() +
  ggtitle('DS Education vs income for Occupational Therapy')

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_feeding)) +
  geom_jitter() +
  ggtitle('DS Education vs income for Feeding Therapy')

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_speech)) +
  geom_jitter() +
  ggtitle('DS Education vs income for Speech Therapy')

DSSurvey %>% 
  filter(!is.na(income)) %>%
  filter(!is.na(DSeducation)) %>%
  ggplot(aes(x = DSeducation, y = income, color = therapy_music)) +
  geom_jitter() +
  ggtitle('DS Education vs income for Music Therapy')


# Clinic Distance vs Frequency of Clinic Visits against income

DSSurvey %>% 
  filter(!is.na(clinicdistance)) %>%
  ggplot(aes(x = DSvisit, y = clinicdistance, color = DSage)) +
  geom_jitter() +
  ggtitle('Distance from Clinic vs Frequency of Visits') +
  facet_wrap(~income)


# Clinic Distance vs Frequency of Clinic Visits with Curve

DSSurvey %>% 
  group_by(clinicdistance, DSvisit) %>%
  summarize(n = n()) %>%
  filter(!is.na(clinicdistance)) %>%
  ggplot(aes(x = clinicdistance, y = DSvisit, color = n)) +
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
  geom_jitter() +
  ggtitle('gender vs age vs. did they regress (SELFCARE)')

# Boxplot age vs did they regress vs Sleep

DSSurvey %>% 
  filter(!is.na(regress)) %>% 
  ggplot(aes(x=as.factor(regress), y=DSage)) +
  geom_boxplot(fill="yellow", alpha=0.2) + 
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle('Regression vs. Sleep apnea')

# Age vs Income vs ed respond vs firstnotified
# Important relationship 1

DSSurvey %>% 
  mutate(firstnotified = factor(firstnotified, levels = c("Ultrasound","Non-invasive prenatal testing such as Materniti21", "Amniocentesis", "Chorionic villus sampling (CVS)",
                                  "Post-natal; immediately after birth", "Post-natal; a day or more after birth", "NA"))) %>% 
  filter(!is.na(firstnotified)) %>% 
  ggplot(aes(x=firstnotified, y=DSage, color = firstnotified)) +
  geom_boxplot() +
  coord_flip() +
  ggtitle("Age of Individual vs How the Parents were First Notified ")

# other tests

# switch to bar
DSSurvey %>% 
  filter(!is.na(income)) %>% 
  mutate(firstnotified = factor(firstnotified, levels = c("Ultrasound","Non-invasive prenatal testing such as Materniti21", "Amniocentesis", "Chorionic villus sampling (CVS)",
                                                          "Post-natal; immediately after birth", "Post-natal; a day or more after birth", "NA"))) %>% 
  # combine incomes into classes?
  # mutate(income = if_else(income = "Less than"))
  ggplot(aes(x = firstnotified, fill = income)) +
  geom_bar() +
  coord_flip() 


DSSurvey %>% 
  mutate(firstnotified = factor(firstnotified, levels = c("Ultrasound","Non-invasive prenatal testing such as Materniti21", "Amniocentesis", "Chorionic villus sampling (CVS)",
                                                          "Post-natal; immediately after birth", "Post-natal; a day or more after birth", "NA"))) %>% 
  mutate(insurance = factor(insurance, levels = c("None","Public", "Both", "Private",
                                                          "NA"))) %>% 
  filter(!is.na(insurance)) %>% 
  ggplot(aes(x = firstnotified, fill = insurance)) +
  coord_flip()+
  geom_bar() 

View(DSSurvey)

# Shows us that most who dont attend clinic put
# NA for travel time or clinic distance

DSSurvey %>% 
  ggplot(aes(x = traveltime, y = clinicdistance, color = DSvisit)) +
  geom_jitter()

# get trend line to work
DSSurvey %>% 
  filter(!is.na(traveltime)) %>% 
  filter(!is.na(clinicdistance)) %>% 
  ggplot(aes(x = traveltime, y = clinicdistance, color = DSvisit)) +
  geom_jitter() +
  geom_smooth(aes(x = as.numeric(traveltime), y = as.numeric(clinicdistance))) +
  ggtitle('Distance from Clinic vs Frequency of Visits') 
# maybe something
DSSurvey %>% 
  #filter(!is.na(DSeducation)) %>% 
  ggplot(aes(x = DSeducation, y = DSage, color = regress)) +
  geom_point() +
  coord_flip()

DSSurvey$clinic_none

summary(as.factor(DSSurvey$independent))

DSSurvey %>% 
  ggplot(aes(x = mentaldiag, y = DSage)) +
  geom_boxplot()
DSSurvey %>% 
  ggplot(aes(x = mentaldiag_OCD, y = DSage)) +
  geom_boxplot()

DSSurvey %>% 
  ggplot(aes(x = mentaldiag_dep, y = DSage)) +
  geom_boxplot()

DSSurvey %>% 
  ggplot(aes(x = mentaldiag_anxiety, y = DSage)) +
  geom_boxplot()
DSSurvey %>% 
  ggplot(aes(x = mentaldiag_bipolar, y = DSage)) +
  geom_boxplot()

DSSurvey %>% 
  ggplot(aes(x = mentaldiag_schiz, y = DSage)) +
  geom_boxplot()

DSSurvey %>% 
  ggplot(aes(x = mentaldiag_other, y = DSage)) +
  geom_boxplot()

DSSurvey %>% 
  ggplot(aes(x = ADHD, y = DSage)) +
  geom_boxplot()

DSSurvey %>% 
  ggplot(aes(x = autism, y = DSage)) +
  geom_boxplot()

summary(DSSurvey$gender_respond)

summary(DSSurvey$mentaldiag_other)
summary(DSSurvey$health2)
