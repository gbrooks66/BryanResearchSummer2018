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
  geom_boxplot(fill="green", alpha=0.2) + 
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

#HIST would be better
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
#HIST would be better
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
  ggplot(aes(x=health_apnea, y=income)) +
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  xlab("Sleep Apnea") +
  ggtitle("income vs. Sleep apnea")

  
DSSurvey %>%
  filter(health_apnea != FALSE) %>% 
  ggplot(aes(x=concern_apneasc)) +
  geom_bar() +
  facet_wrap(~health_apnea)+
  ggtitle("Sleep apnea vs concern level: n = 77") 



DSSurvey %>%
  filter(health_apnea != FALSE) %>% 
  ggplot(aes(x=concern_apneasc)) +
  geom_freqpoly() +
  facet_wrap(~health_apnea)

DSSurvey %>%
  filter(health_celiac != FALSE) %>% 
  ggplot(aes(x=concern_celiacsc)) +
  geom_freqpoly() +
  facet_wrap(~health_celiac)

DSSurvey %>%
  filter(health_diabetes != FALSE) %>% 
  ggplot(aes(x=concern_diabetessc)) +
  geom_freqpoly() +
  facet_wrap(~health_diabetes)

DSSurvey %>%
  filter(health_leuk != FALSE) %>% 
  ggplot(aes(x=concern_leuksc)) +
  geom_freqpoly() +
  facet_wrap(~health_leuk)

DSSurvey %>%
  filter(health_lowiron != FALSE) %>% 
  ggplot(aes(x=concern_lowironsc)) +
  geom_freqpoly() +
  facet_wrap(~health_lowiron)

DSSurvey %>%
  filter(health_thyroid != FALSE) %>% 
  ggplot(aes(x=concern_thyroidsc)) +
  geom_freqpoly() +
  facet_wrap(~health_thyroid)

DSSurvey %>%
  filter(health_swallow != FALSE) %>% 
  ggplot(aes(x=concern_swallowsc)) +
  geom_freqpoly() +
  facet_wrap(~health_swallow)

DSSurvey %>%
  filter(health_ALZ != FALSE) %>% 
  ggplot(aes(x=concern_ALZsc)) +
  geom_freqpoly() +
  facet_wrap(~health_ALZ)

DSSurvey %>%
  filter(health_hiBP != FALSE) %>% 
  ggplot(aes(x=concern_hiBPsc)) +
  geom_freqpoly() +
  facet_wrap(~health_hiBP)

DSSurvey %>%
  filter(health_CHD != FALSE) %>% 
  ggplot(aes(x=concern_CHDsc)) +
  geom_freqpoly() +
  facet_wrap(~health_CHD)




DSSurvey %>%
  filter(health_apnea != FALSE) %>% 
  gather(key = "concernssc", value = "DSAge", ends_with("sc")) %>% 
  ggplot(aes(x = diagnoses_total, color = concernssc)) +
  geom_freqpoly(stat = "count") +
  facet_wrap(~health_apnea)

