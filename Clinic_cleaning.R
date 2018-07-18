read_excel("ClinicData.xlsx",
           col_names=FALSE) ->
  ClinicDataRaw

# rename columns
ClinicDataRaw %>% 
  rename(name = X__1 ,
         phone = X__2 ,
         hours = X__3 ,
         score_hours = X__4 ,
         score_DSspecific = X__5 ,
         diagnoses = X__6 ,
         ages = X__7 ,
         score_ages = X__8 ,
         open = X__9 ,
         established = X__10 ,
         capacity = X__11 ,
         satellite = X__12 ,
         affliation = X__13 ,
         score_PT = X__14 ,
         score_OT = X__15 ,
         score_feed = X__16 ,
         score_speech = X__17 ,
         score_nurse_practitioner = X__18 ,
         score_behavioral = X__19 ,
         score_psycologist = X__20 ,
         score_dietician = X__21 ,
         score_developmental = X__22 ,
         score_apraxia = X__23 ,
         score_audiologist = X__24 ,
         score_social_worker = X__25 ,
         score_education = X__26 ,
         score_geneticist = X__27 ,
         score_genetic_counselor = X__28 ,
         state = X__29) ->
  ClinicData

# remove the first row
ClinicData %>% 
  slice(-1) ->
  ClinicData

# convert score columns to numeric

numeric_cols <- c("score_hours",
                  "score_DSspecific",
                  "score_ages",
                  "score_PT",
                  "score_OT",
                  "score_feed",
                  "score_speech",
                  "score_nurse_practitioner",
                  "score_behavioral",
                  "score_psycologist",
                  "score_dietician",
                  "score_developmental",
                  "score_apraxia",
                  "score_audiologist",
                  "score_social_worker",
                  "score_education",
                  "score_geneticist",
                  "score_genetic_counselor"
)

ClinicData %>% 
  mutate_at(numeric_cols, as.numeric) ->
  ClinicData

ClinicData %>% 
  select(-score_nurse_practitioner) ->
  ClinicData

score.df <- subset(ClinicData[,c(4,5,8,14:27)])

score.df %>% 
  mutate_all(funs(replace(., is.na(.), 0))) ->
  score.df

View(score.df)


ClinicData$score_total <- rowSums(score.df)
ClinicData %>% 
  select(name, score_total, state) %>% 
  View()

