library(tidyverse)

#cancer screening
cancer_screening <- read.csv("Data_Uncleaned/cancer_screening.csv")
cancer_screening <- cancer_screening %>%
  filter(Variable=="Cervical cancer screening, programme data") %>%
  subset(select=c(Country, Year, Value)) %>%
  rename(breast_cancer_screening=Value)
write.csv(cancer_screening, "Data_cleaned/cancer_screening.csv")

#doctors
doctors <- read.csv("Data_Uncleaned/doctors.csv")
doctors <- doctors %>%
  filter(Variable=="Practising physicians") %>%
  filter(Measure=="Density per 1 000 population (head counts)") %>%
  subset(select=c(Country, Year, Value)) %>%
  rename(practicing_physicians=Value)
write.csv(doctors, "Data_cleaned/doctors.csv")

#hospital beds
hospital_beds <- read.csv("Data_Uncleaned/hospital_beds.csv")
hospital_beds <- hospital_beds %>%
  filter(Variable =="Total hospital beds") %>%
  filter(Measure == "Per 1 000 population") %>%
  subset(select=c(Country, Year, Value)) %>%
  rename(beds=Value)
write.csv(hospital_beds, "Data_cleaned/hospital_beds.csv")

#hospital stay
hospital_stay <- read.csv("Data_Uncleaned/hospital_stay.csv")
hospital_stay <- hospital_stay %>%
  filter(Variable=="All causes") %>%
  subset(select=c(Country, Year, Value)) %>%
  rename(length_of_stay=Value)
write.csv(hospital_stay, "Data_cleaned/hospital_stay.csv")

#immunization
immunization <- read.csv("Data_Uncleaned/immunization.csv")
immunization <- immunization %>%
  filter(Variable=="Immunisation: Measles") %>%
  subset(select=c(Country, Year, Value)) %>%
  rename(measles_vaccination=Value)
write.csv(immunization, "Data_cleaned/immunization.csv")

