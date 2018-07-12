#STAR
DSSurvey %>% 
  ggplot(aes(x = sexED_no, fill =  gender_DS)) +
  geom_bar()

#STAR
DSSurvey %>% 
  ggplot(aes(x = sexED_bound, fill =  gender_DS)) +
  geom_bar()

#STAR
DSSurvey %>% 
  ggplot(aes(x = sexED_danger, fill =  gender_DS)) +
  geom_bar()

#STAR
DSSurvey %>% 
  ggplot(aes(x = sexED_health, fill =  gender_DS)) +
  geom_bar()

#STAR
DSSurvey %>% 
  ggplot(aes(x = sexED_prevent, fill =  gender_DS)) +
  geom_bar()

#STAR
DSSurvey %>% 
  ggplot(aes(x = sexED_WS, fill =  gender_DS)) +
  geom_bar()

#STAR
DSSurvey %>% 
  group_by(income, DSvisit) %>% 
  summarize(n = n()) %>% 
  filter(!is.na(income)) %>% 
  ggplot(aes(x = DSvisit, y = income, color =  n)) +
  geom_point(na.rm = TRUE, size = 8) +
  ggtitle('Income vs Clinic Visits')

# Clinic Distance vs Frequency of Clinic Visits with Curve

#STAR
DSSurvey %>% 
  group_by(clinicdistance, DSvisit) %>%
  summarize(n = n()) %>%
  filter(!is.na(clinicdistance)) %>%
  ggplot(aes(x = clinicdistance, y = DSvisit, size = n, color = n)) +
  geom_point() +
  ggtitle('Distance from Clinic vs Frequency of Visits') 

#DS Education vs Frequency of Clinic Visits

#STAR
DSSurvey %>% 
  #filter(!is.na(DSeducation)) %>% 
  ggplot(aes(x = DSage, y = DSeducation, color =  DSvisit)) +
  geom_point(na.rm = TRUE) +
  geom_jitter() +
  ggtitle('DSeducation vs DSvisit')

# Clinic attendance vs State vs. Distance travelled

#STAR
DSSurvey %>%
  filter(!is.na(clinicdistance)) %>% 
  ggplot(aes(x = clinicdistance, y = state, color = DSvisit)) +
  geom_jitter() +
  ggtitle('Clinic attendance vs State vs. Distance travelled') 

#STAR
DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  geom_jitter() +
  facet_wrap(~gender_DS) +
  ggtitle('Dress Regression vs. Clinic visits') 

#STAR
DSSurvey %>%
  filter(!is.na(regress_dress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_dress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Dress Regression vs. Clinic visits vs. Sleep apnea') 
#STAR
DSSurvey %>%
  filter(!is.na(regress_RW)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_RW)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Reading and Writing Regression vs. Clinic visits vs. Sleep apnea') 
#STAR
DSSurvey %>%
  filter(!is.na(regress_social)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_social)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Social Regression vs. Clinic visits vs. Sleep apnea') 
#STAR
DSSurvey %>%
  filter(!is.na(regress_attend)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress_attend)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Attend a day program Regression vs. Clinic visits vs. Sleep apnea')
#STAR
DSSurvey %>%
  filter(!is.na(regress_selfcare)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_selfcare)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Self care Regression vs. Clinic visits vs. Sleep apnea')
#STAR
DSSurvey %>%
  filter(!is.na(regress_cat)) %>% 
  
  ggplot(aes(x = DSvisit, y = DSage, color = regress_cat)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Catatonia Regression vs. Clinic visits vs. Sleep apnea')
#STAR
DSSurvey %>%
  filter(!is.na(regress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Regression vs. Clinic visits vs. Sleep apnea')
#STAR
DSSurvey %>%
  filter(!is.na(regress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress)) +
  geom_point(na.rm = TRUE, size = 1) 
ggtitle('Regression vs. Clinic visits vs. Sleep apnea')

# Boxplot Regression vs. Sleep apnea
#STAR
DSSurvey %>%
  filter(!is.na(regress)) %>%
  ggplot(aes(x=as.factor(regress), y=DSage)) +
  geom_boxplot(fill="yellow", alpha=0.2) + 
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle('Regression vs. Sleep apnea')

# Barplot Dealing with income and DSvisits
#STAHR
ggplot(DSSurvey, aes(x=as.factor(DSvisit), fill=as.factor(income) )) +
  geom_bar( )

# Barplot Clinic distance without NAs vs. Clinic visits
#STAHR
DSSurvey %>%
  filter(!is.na(as.factor(traveltime))) %>%
  ggplot(aes(x=as.factor(DSvisit), fill=as.factor(traveltime))) + 
  geom_bar( )

# Clinic visits vs. Barriers to clinic vs. Insurance vs. Income 
# Jitter plot (sorry, I hate it too) it hates you too
#STAHR
DSSurvey %>% 
  gather(key = "clinic", value = "DSAge", matches("^clinic_") ) %>% 
  ggplot(aes(x = insurance, y = income)) + 
  geom_jitter() +
  facet_wrap(~clinic)

#STAHR (take out nas)
DSSurvey %>% 
  ggplot(aes(x = regress, y = DSage)) +
  geom_point() +
  facet_wrap(~ diagnoses_total) +
  ggtitle('Number of diagnoses v. Regression')








# Clinic Distance vs Frequency of Clinic Visits against income
#STAHR
DSSurvey %>% 
  filter(!is.na(clinicdistance)) %>%
  filter(!is.na(income)) %>%
  ggplot(aes(x = DSvisit, y = clinicdistance, color = DSage)) +
  geom_jitter() +
  ggtitle('Distance from Clinic vs Frequency of Visits') +
  facet_wrap(~income)

#DS Education vs Frequency of Clinic Visits

#STAHR
DSSurvey %>% 
  filter(!is.na(DSeducation)) %>% 
  ggplot(aes(x = DSage, y = DSeducation, color =  DSvisit)) +
  geom_jitter() +
  ggtitle('DSeducation vs DSvisit')

# Age vs Income vs ed respond vs firstnotified
# Important relationship 1
#STAHR add income facet wrap

# g <- ggplot(mpg, aes(manufacturer, cty))
# g + geom_boxplot() + 
#   geom_dotplot(binaxis='y', 
#                stackdir='center', 
#                dotsize = .5, 
#                fill="red") +
#   theme(axis.text.x = element_text(angle=65, vjust=0.6)) + 
#   labs(title="Box plot + Dot plot", 
#        subtitle="City Mileage vs Class: Each dot represents 1 row in source data",
#        caption="Source: mpg",
#        x="Class of Vehicle",
#        y="City Mileage")

DSSurvey %>% 
  mutate(firstnotified = factor(firstnotified, levels = c("Ultrasound","Non-invasive prenatal testing such as Materniti21", "Amniocentesis", "Chorionic villus sampling (CVS)",
                                                          "Post-natal; immediately after birth", "Post-natal; a day or more after birth", "NA"))) %>% 
  filter(!is.na(firstnotified)) %>% 
  ggplot(aes(x=firstnotified, y=DSage, color = firstnotified)) +
  geom_boxplot() +
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  coord_flip() +
  ggtitle("Age of Individual vs How the Parents were First Notified ")

#STAHR - Take out insurance
DSSurvey %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = health_CHD)) +
  geom_point() 

#STAHR - clean up
DSSurvey %>% 
  gather(key = "health", value = "DSage", matches("^health_") ) %>% 
  ggplot(aes(x = DSage, y = DSvisit, color = DSvisit)) + 
  geom_jitter() +
  facet_wrap(~health)

#STAHR - take out income, simplify
DSSurvey %>% 
  gather(key = "clinicr", value = "income", matches("^clinic_") ) %>% 
  ggplot(aes(x = income, y = DSage, color = DSvisit)) + 
  geom_jitter() +
  facet_wrap(~clinicr)
