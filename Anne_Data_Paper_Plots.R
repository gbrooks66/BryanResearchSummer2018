#table(DSSurvey$health_apnea2, DSSurvey$regress)

DSSurvey %>%
  filter(!is.na(regress)) %>%
  filter(regress == "Yes") %>% 
  mutate(regress = "") %>%
  ggplot(aes(x=as.factor(regress), y=DSage)) +
  geom_boxplot(fill="green", alpha=0.2) + 
  facet_wrap(~as.factor(health_apnea2)) +
  xlab("n = 17                                                                                        n = 18") +
  ylab("Age of Individual") + 
  ggtitle("How Sleep Apnea Affects the Regression Age")



#table(DSadult$health_apnea2,DSadult$DSeducation)

DSadult %>% 
  # filter(health_apnea == TRUE) %>% 
  filter(!is.na(DSeducation2)) %>% 
  ggplot(aes(health_apnea2, ..count..)) +
  geom_bar(aes(fill=DSeducation2)) +
  labs(x="n = 18                                      n = 17",
       y="Count",
       fill="Education of the Individual with Down Syndrome",
       title="How Sleep Apnea Affects the Education Level of Individuals with Down Syndrome")

DSadult %>% 
  select(health_apnea2, DSeducation2) %>% 
  table()

#table(DSSurvey$health_apnea2, DSSurvey$mentaldiag_OCD)
# Sleep apnea vs. OCD proportion bar plot
ggplot(DSSurvey, aes(x = health_apnea2, fill = mentaldiag_OCD)) + 
  geom_bar() +
  labs(x = 'n = 106                                                         n = 79',
       y = 'Count',
       fill = 'Diagnosis of Obsessive Compulsive Disorder',
       title = 'How Sleep Apnea Affects the Prevalence of Obsessive Compulsive Disorder')

# Sleep apnea vs. Anxiety bar plot
ggplot(DSSurvey, aes(x = health_apnea2, fill = mentaldiag_anxiety)) + 
  geom_bar() +
  labs(x = 'n = 106                                                         n = 79',
       y = 'Count',
       fill = 'Diagnosis of Anxiety',
       title = 'How Sleep Apnea Affects the Prevalence of Anxiety')


ggplot(DSSurvey, aes(x=as.factor(health_apnea2), fill=as.factor(visitstotal) )) +
  geom_bar() +
  labs(x = 'n = 106                                                         n = 79',
       y = 'Count',
       fill = 'Total Hospitalizations in the Last Year',
       title = 'How Sleep Apnea Affects the Number of Hospitalizations in the Last Year')


