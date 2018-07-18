DSSurvey %>% 
  filter(DSSurvey$regress == "Yes") ->
  DSregress

DSapneay <- subset(DSregress, DSregress$health_apnea2 == "Individuals with Sleep Apnea")
DSapnean <- subset(DSregress, DSregress$health_apnea2 == "Individuals without Sleep Apnea")


t.test(DSapneay$DSage, DSapnean$DSage, mu = mean(DSapnean$DSage) - mean(DSapneay$DSage))


# X-squared = 2.8836, df = 1, p-value = .08948
table(DSSurvey$mentaldiag_OCD, DSSurvey$health_apnea)             
chisq.test(DSSurvey$mentaldiag_OCD, DSSurvey$health_apnea, correct=FALSE)

# X-squared = 3.5918, df = 1, p-value = .05807
table(DSSurvey$mentaldiag_anxiety, DSSurvey$health_apnea)             
chisq.test(DSSurvey$mentaldiag_anxiety, DSSurvey$health_apnea, correct=FALSE)

# X-squared = 10.532, df = 4, p-value = .03236
table(DSSurvey$visitstotal, DSSurvey$health_apnea)             
chisq.test(DSSurvey$visitstotal, DSSurvey$health_apnea, correct=FALSE)

# X-squared = 7.8223, df = 6, p-value = .2514
table(DSadult$DSeducation2, DSadult$health_apnea2)             
chisq.test(DSadult$DSeducation2, DSadult$health_apnea2, correct=FALSE)