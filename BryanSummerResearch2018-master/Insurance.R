DSSurvey %>% 
  gather(key = "therapy", value = "DSAge", matches("^therapy") ) %>% 
  ggplot(aes(x = visitstotal, y = income)) + 
  geom_jitter() +
  facet_wrap(~ therapy)

```

## Cleaning insurance

We were hit by the `NA` bug on this one.  We have to make sure that you account for `NA` in each of the `if_else()` statements.  This was complicated by the fact that the `NA` rules are difference for character and factor data.  To resolve that issue, all is converted to character before processing and then converted back to factor at the end.

```{r}
DSSurvey %>% 
  mutate(insurance = as.character(insurance)) %>% 
  mutate(insurance = if_else((str_detect(insurance2, "Medicare") | str_detect(insurance2, "Medicaid")) &
                               is.na(insurance),
                             "Public",
                             insurance
  )
  ) %>% 
  mutate(insurance = if_else(!is.na(insurance2) &
                               (str_detect(insurance2, "Medicare") | str_detect(insurance2, "Medicaid")) &
                               str_detect(insurance, "Private"),
                             "Both",
                             insurance)
  ) %>% 
  mutate(insurance = if_else(!is.na(insurance2) &
                               str_detect(insurance2, "but my DS child is only co"),
                             "Public",
                             insurance)
  ) %>% 
  mutate(insurance = as.factor(insurance)) %>% 
  select(-insurance2) -> DSSurvey


DSSurvey %>% 
  select(contains("insurance")) %>% 
  summary()
