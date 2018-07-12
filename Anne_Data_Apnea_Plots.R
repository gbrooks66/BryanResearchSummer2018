# Anne Data Apnea Plots

# Regression vs. Sleep Apnea
DSSurvey %>%
  filter(!is.na(regress)) %>%
  ggplot(aes(x=as.factor(regress), y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle('Regression vs. Sleep apnea')

# Plus dots
DSSurvey %>%
  filter(!is.na(regress)) %>%
  ggplot(aes(x=as.factor(regress), y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle('Regression vs. Sleep apnea')


# Clinic visits vs Apnea vs age
DSSurvey %>%
  filter(!is.na(regress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Regression vs. Clinic visits vs. Sleep apnea') 

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

DSSurvey %>%
  filter(!is.na(therapy_feeding)) %>%
  ggplot(aes(x=health_apnea, y=therapy_feeding)) +
  geom_jitter()

DSSurvey %>% 
  ggplot(aes(x=health_apnea, y=concern))


