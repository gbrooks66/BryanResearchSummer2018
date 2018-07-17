# Catatonia vs alzheimers vs age
DSSurvey %>% 
  
  
  ggplot(aes(x = regress_cat, y = DSage, color = health_ALZ)) +
  geom_point(na.rm = TRUE, size = 1) +
  ggtitle('Catatonia vs alzheimers vs age')

#redo


DSSurvey %>% 
  ggplot(aes(x=regress_cat, y=DSage)) +
  geom_boxplot() + 
  geom_dotplot(binaxis='y', stackdir='center', dotsize=.5, fill = "red")
  

DSSurvey %>% 
  geom_boxplot(x = regress_cat, y = DSage) +
  geom_dotplot(x = regress_cat, y = DSage, color = health_ALZ)

# Catatonia vs alzheimers vs age
DSSurvey %>% 
  
  ggplot(aes(x = regress_cat, y = DSage)) +
  geom_jitter()
  
  ggtitle('Catatonia vs age')
  
  
# diagnoses vs clinic visits

DSSurvey %>% 
  ggplot(aes(x = DSvisit, y = diagnoses_total)) +
  geom_boxplot(fill = "blue", alpha = 0.2)

DSSurvey %>% 
  ggplot(aes(x = DSvisit, y = total_total)) +
  geom_jitter()

summary(DSSurvey$total_total)



# boxplot Age vs DSvisit vs total diagnoses

DSSurvey %>% 
  ggplot(aes(x = visitstotal, y = DSage)) +
  geom_point() +
  facet_wrap(~ diagnoses_total)

# boxplot mental health vs age vs hospital visits

DSSurvey %>% 
  ggplot(aes(x = visitstotal, y = DSage)) +
  geom_boxplot(fill = "blue", alpha = 0.2) +
  facet_wrap(~ mental_total)


# total regression vs therapies

# PT
DSSurvey %>% 
  filter(!is.na(as.factor(therapy_PT))) %>%
  ggplot(aes(x = therapy_PT, y = DSage)) +
  geom_point() +
  facet_wrap(~ regression_total)

# OT
DSSurvey %>% 
  filter(!is.na(as.factor(therapy_OT))) %>%
  ggplot(aes(x = therapy_OT, y = DSage)) +
  geom_point() +
  facet_wrap(~ regression_total)

# feeding
DSSurvey %>% 
  filter(!is.na(as.factor(therapy_feeding))) %>%
  ggplot(aes(x = therapy_feeding, y = DSage)) +
  geom_point() +
  facet_wrap(~ regression_total)

# speech
DSSurvey %>% 
  filter(!is.na(as.factor(therapy_speech))) %>%
  ggplot(aes(x = therapy_speech, y = DSage)) +
  geom_point() +
  facet_wrap(~ regression_total)

# music
DSSurvey %>% 
  filter(!is.na(as.factor(therapy_music))) %>%
  ggplot(aes(x = therapy_music, y = DSage)) +
  geom_point() +
  facet_wrap(~ regression_total)

# equine
DSSurvey %>% 
  filter(!is.na(as.factor(therapy_equine))) %>%
  ggplot(aes(x = therapy_equine, y = DSage)) +
  geom_point() +
  facet_wrap(~ regression_total)

# clinic vs total diagnoses
DSSurvey %>% 
  filter(!is.na(as.factor(clinic))) %>%
  ggplot(aes(x = diagnoses_total, y = clinic)) +
  geom_jitter()

# clinic vs clinicdistance
DSSurvey %>% 
  filter(!is.na(as.factor(clinic))) %>%
  ggplot(aes(x = clinicdistance, y = clinic)) +
  geom_jitter()


# apnea vs. therapies
# PT
DSSurvey %>%
  filter(!is.na(therapy_PT)) %>%
  ggplot(aes(x=health_apnea, y=therapy_PT)) +
  geom_point() +
  geom_count()

# OT
DSSurvey %>%
  filter(!is.na(therapy_OT)) %>%
  ggplot(aes(x=health_apnea, y=therapy_OT)) +
  geom_point() +
  geom_count()

# dig
# speech
DSSurvey %>%
  filter(!is.na(therapy_speech)) %>%
  ggplot(aes(x=health_apnea, y=therapy_speech)) +
  geom_point() +
  geom_count()

DSSurvey %>% 
  ggplot(aes(health_apnea, ..count../sum(..count..))) +
  geom_bar(aes(fill=therapy_speech), position="dodge") +
  labs(x = "sleep apnea",
       y = "percent of sleep therapy")

# feeding
DSSurvey %>%
  filter(!is.na(therapy_feeding)) %>%
  ggplot(aes(x=health_apnea, y=therapy_feeding)) +
  geom_jitter()

DSSurvey %>% 
  filter(!is.na(therapy_feeding)) %>%
  ggplot(aes(health_apnea, ..count../sum(..count..))) +
  geom_bar(aes(fill=therapy_feeding), position="dodge") +
  labs(x = "Sleep Apnea",
       y= "Count",
       title= "Feeding Therapy vs. Sleep Apnea")

# music
DSSurvey %>%
  filter(!is.na(therapy_music)) %>%
  ggplot(aes(x=health_apnea, y=therapy_music)) +
  geom_point() +
  geom_count()

# equine
DSSurvey %>%
  filter(!is.na(therapy_equine)) %>%
  ggplot(aes(x=health_apnea, y=therapy_equine)) +
  geom_point() +
  geom_count()

#like - more dig
# dseducation vs. apnea
DSSurvey %>% 
  filter(!is.na(DSeducation)) %>% 
  ggplot(aes(x=health_apnea, y=DSeducation)) +
  geom_point() +
  geom_count()

DSadult %>% 
  # filter(health_apnea == TRUE) %>% 
  filter(!is.na(DSeducation)) %>% 
  ggplot(aes(health_apnea, ..count..)) +
  geom_bar(aes(fill=DSeducation), position="fill") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  labs(x="Sleep Apnea",
       y="Percent",
       title="Sleep Apnea vs. Education level")

DSadult %>% 
  # filter(health_apnea == TRUE) %>% 
  filter(!is.na(DSeducation)) %>% 
  ggplot(aes(DSeducation, ..count..)) +
  geom_bar(aes(fill=health_apnea), position="dodge") +
  theme(axis.text.x = element_text(angle=65, vjust=0.6)) +
  labs(x="Sleep Apnea",
       y="Count",
       title="Sleep Apnea vs. Education level of Adults")

DSSurvey %>% 
  

# different representation
# mental vs. apnea

# good
DSSurvey %>% 
  ggplot(aes(x=health_apnea, y=mentaldiag_anxiety)) +
  geom_point() +
  geom_count()

# good
DSSurvey %>% 
  ggplot(aes(x=health_apnea, y=mentaldiag_OCD)) +
  geom_point() +
  geom_count()

DSSurvey %>% 
  ggplot(aes(x=health_apnea, y=mentaldiag_dep)) +
  geom_point() +
  geom_count()

DSSurvey %>% 
  ggplot(aes(x=health_apnea, y=mentaldiag_bipolar)) +
  geom_point() +
  geom_count()

DSSurvey %>% 
  ggplot(aes(x=health_apnea, y=mentaldiag_schiz)) +
  geom_point() +
  geom_count()

DSSurvey %>% 
  ggplot(aes(x=health_apnea, y=mentaldiag)) +
  geom_point() +
  geom_count()


