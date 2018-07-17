DSSurvey %>%
  filter(!is.na(regress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  filter(!is.na(regress)) %>%
  ggplot(aes(x=as.factor(regress), y=DSage)) +
  geom_boxplot(fill="yellow", alpha=0.2) + 
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle('Regression vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(income)) %>%
  ggplot(aes(x = insurance, y = income)) +
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  ggtitle('Income vs. Insurance vs. Sleep apnea') 

#Interesting
ggplot(DSSurvey, aes(x=as.factor(health_apnea), fill=as.factor(visitstotal) )) +
  geom_bar( ) +
  ggtitle('Hospitalizations vs. Sleep apnea')

ggplot(DSSurvey, aes(x=as.factor(health_apnea), fill=as.factor(visitstotal) )) +
  geom_bar(position = "fill") +
  ggtitle('Hospitalizations vs. Sleep apnea')

tab_apneavhospitalizations = with(DSSurvey, table(health_apnea, visitstotal))
round(tab_apneavhospitalizations/sum(tab_apneavhospitalizations), 3)

ggplot(DSSurvey, aes(x=as.factor(health_apnea), fill=as.factor(concern_apneasc) )) +
  geom_bar( ) +
  ggtitle('Concern of Sleep apnea vs. Sleep apnea')


DSSurvey %>%
  filter(!is.na(income)) %>%
  ggplot(aes(x=as.factor(income), fill=as.factor(health_apnea) )) +
  geom_bar( ) +
  ggtitle('Income vs. Sleep apnea')

DSSurvey %>%
  ggplot(aes(x=DSvisit, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle('Clinic Attendance vs. Sleep apnea')


# Sleep Apnea vs other Health Diagnoses
DSSurvey %>%
  ggplot(aes(x=health_ALZ, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("Alzheimer's Disease vs. Sleep apnea")

DSSurvey %>%
  ggplot(aes(x=health_celiac, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("Celiac's Disease vs. Sleep apnea")

DSSurvey %>%
  ggplot(aes(x=health_diabetes, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("Diabetes vs. Sleep apnea")

DSSurvey %>%
  ggplot(aes(x=health_leuk, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("Leukemia vs. Sleep apnea")

DSSurvey %>%
  ggplot(aes(x=health_apnea, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("Sleep apnea vs. Sleep apnea")

DSSurvey %>%
  ggplot(aes(x=health_CHD, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("Cogenital Heart Defect vs. Sleep apnea")

DSSurvey %>%
  ggplot(aes(x=health_lowiron, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("Iron deficiency vs. Sleep apnea")

DSSurvey %>%
  ggplot(aes(x=health_thyroid, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("Hypothyroidism vs. Sleep apnea")

DSSurvey %>%
  ggplot(aes(x=health_swallow, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("Swallowing difficulty vs. Sleep apnea")

DSSurvey %>%
  ggplot(aes(x=health_hiBP, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle("High Blood Pressure vs. Sleep apnea")


# different representation
# mental vs. apnea

# good
DSSurvey %>% 
  ggplot(aes(x=health_apnea, y=mentaldiag_anxiety)) +
  geom_point() +
  geom_count()

# Sleep apnea vs. Anxiety table
with(DSSurvey, table(health_apnea, mentaldiag_anxiety))

# Sleep apnea vs. Anxiety proportions
tab_apneavanxiety = with(DSSurvey, table(health_apnea, mentaldiag_anxiety))
round(tab_apneavanxiety/sum(tab_apneavanxiety), 3)

# Sleep apnea vs. Anxiety Bar plot 
ggplot(DSSurvey, aes(x = health_apnea, fill = mentaldiag_anxiety)) + 
  geom_bar()

# Sleep apnea vs. Anxiety proportion bar plot
ggplot(DSSurvey, aes(x = health_apnea, fill = mentaldiag_anxiety)) + 
  geom_bar(position = "fill") +
  ggtitle("Proportional Sleep apnea vs. Anxiety")

# good
DSSurvey %>% 
  ggplot(aes(x=health_apnea, y=mentaldiag_OCD)) +
  geom_point() +
  geom_count()

# Sleep apnea vs. OCD table
with(DSSurvey, table(health_apnea, mentaldiag_OCD))

# Sleep apnea vs. OCD proportions
tab_apneavocd = with(DSSurvey, table(health_apnea, mentaldiag_OCD))
round(tab_apneavocd/sum(tab_apneavocd), 3)

# Sleep apnea vs. OCD Bar plot 
ggplot(DSSurvey, aes(x = health_apnea, fill = mentaldiag_OCD)) + 
  geom_bar()

# Sleep apnea vs. OCD proportion bar plot
ggplot(DSSurvey, aes(x = health_apnea, fill = mentaldiag_OCD)) + 
  geom_bar(position = "fill")

#Sleep apnea appears to have no negative affect from here on down
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


  




