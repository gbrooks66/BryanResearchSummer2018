# Catatonia vs alzheimers vs age
DSSurvey %>% 
  
  
  ggplot(aes(x = regress_cat, y = DSage, color = health_ALZ)) +
  geom_point(na.rm = TRUE, size = 1) +
  
  ggtitle('Catatonia vs alzheimers vs age')

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
