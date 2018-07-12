# Anne Data Apnea Plots

DSSurvey %>%
  filter(!is.na(regress)) %>%
  ggplot(aes(x=as.factor(regress), y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  facet_wrap(~health_apnea) +
  xlab("Signs of Regression") +
  ggtitle('Regression vs. Sleep apnea')

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

DSSurvey %>%
  filter(!is.na(regress)) %>%
  ggplot(aes(x=health_apnea, y=as.factor(regress))) +
  geom_jitter() +
  ylab("Signs of Regression") +
  ggtitle('Regression vs. Sleep apnea')

DSSurvey %>%
  filter(!is.na(regress)) %>% 
  ggplot(aes(x = DSvisit, y = DSage, color = regress)) +
  geom_point(na.rm = TRUE, size = 1) +
  facet_wrap(~health_apnea) +
  ggtitle('Regression vs. Clinic visits vs. Sleep apnea') 

DSSurvey %>%
  ggplot(aes(x=health_apnea, y=DSage)) +
  geom_boxplot(fill="blue", alpha=0.2) + 
  geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5) +
  facet_wrap(~DSvisit) +
  xlab("Signs of Regression") +
  ggtitle('Clinic Attendance vs. Sleep apnea')
