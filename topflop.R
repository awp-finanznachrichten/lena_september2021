#import
#library(tidyverse)

##VOILE

#PESTICIDES
pest_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_juni2021/master/Output/Pestizide_all_data.csv")

pest_top <- pest_raw %>%
  arrange(desc(Ja_Stimmen_In_Prozent)) %>%
  slice(1:50)%>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de oui" = Ja_Stimmen_In_Prozent,
         "Ja in %" = Ja_Stimmen_In_Prozent,
         "Percentuale di sì" = Ja_Stimmen_In_Prozent)

write.csv(pest_top,"Tableaux/pest_top.csv", fileEncoding = "UTF-8")


pest_flop <- pest_raw %>%
  arrange(Ja_Stimmen_In_Prozent) %>%
  slice(1:50) %>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de non" = 100-Ja_Stimmen_In_Prozent,
         "Nein in %" = 100-Ja_Stimmen_In_Prozent,
         "Percentuale di no" = 100-Ja_Stimmen_In_Prozent)

write.csv(pest_flop,"Tableaux/pest_flop.csv", fileEncoding = "UTF-8")

##EAU
eau_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_juni2021/master/Output/Trinkwasser_all_data.csv")

eau_top <- eau_raw %>%
  arrange(desc(Ja_Stimmen_In_Prozent)) %>%
  slice(1:50)%>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de oui" = Ja_Stimmen_In_Prozent,
         "Ja in %" = Ja_Stimmen_In_Prozent,
         "Percentuale di sì" = Ja_Stimmen_In_Prozent)

write.csv(eau_top,"Tableaux/eau_top.csv", fileEncoding = "UTF-8")


eau_flop <- eau_raw %>%
  arrange(Ja_Stimmen_In_Prozent) %>%
  slice(1:50) %>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de non" = 100-Ja_Stimmen_In_Prozent,
         "Nein in %" = 100-Ja_Stimmen_In_Prozent,
         "Percentuale di no" = 100-Ja_Stimmen_In_Prozent)

write.csv(eau_flop,"Tableaux/eau_flop.csv", fileEncoding = "UTF-8")

##MPT
mpt_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_juni2021/master/Output/Terrorismus_all_data.csv")

mpt_top <- mpt_raw %>%
  arrange(desc(Ja_Stimmen_In_Prozent)) %>%
  slice(1:50)%>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de oui" = Ja_Stimmen_In_Prozent,
         "Ja in %" = Ja_Stimmen_In_Prozent,
         "Percentuale di sì" = Ja_Stimmen_In_Prozent)

write.csv(mpt_top,"Tableaux/mpt_top.csv", fileEncoding = "UTF-8")


mpt_flop <- mpt_raw %>%
  arrange(Ja_Stimmen_In_Prozent) %>%
  slice(1:50) %>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de non" = 100-Ja_Stimmen_In_Prozent,
         "Nein in %" = 100-Ja_Stimmen_In_Prozent,
         "Percentuale di no" = 100-Ja_Stimmen_In_Prozent)

write.csv(mpt_flop,"Tableaux/mpt_flop.csv", fileEncoding = "UTF-8")


##COVID
covid_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_juni2021/master/Output/Covid-19_all_data.csv")

covid_top <- covid_raw %>%
  arrange(desc(Ja_Stimmen_In_Prozent)) %>%
  slice(1:50)%>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de oui" = Ja_Stimmen_In_Prozent,
         "Ja in %" = Ja_Stimmen_In_Prozent,
         "Percentuale di sì" = Ja_Stimmen_In_Prozent)

write.csv(covid_top,"Tableaux/covid_top.csv", fileEncoding = "UTF-8")


covid_flop <- covid_raw %>%
  arrange(Ja_Stimmen_In_Prozent) %>%
  slice(1:50) %>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de non" = 100-Ja_Stimmen_In_Prozent,
         "Nein in %" = 100-Ja_Stimmen_In_Prozent,
         "Percentuale di no" = 100-Ja_Stimmen_In_Prozent)

write.csv(covid_flop,"Tableaux/covid_flop.csv", fileEncoding = "UTF-8")

##CO2
co2_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_juni2021/master/Output/CO2_all_data.csv")

co2_top <- co2_raw %>%
  arrange(desc(Ja_Stimmen_In_Prozent)) %>%
  slice(1:50)%>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de oui" = Ja_Stimmen_In_Prozent,
         "Ja in %" = Ja_Stimmen_In_Prozent,
         "Percentuale di sì" = Ja_Stimmen_In_Prozent)

write.csv(co2_top,"Tableaux/co2_top.csv", fileEncoding = "UTF-8")


co2_flop <- co2_raw %>%
  arrange(Ja_Stimmen_In_Prozent) %>%
  slice(1:50) %>%
  select(Gemeinde_f,Gemeinde_d, Gemeinde_i, Kanton_Short,Ja_Stimmen_In_Prozent) %>%
  mutate(Commune = Gemeinde_f,
         Gemeinde = Gemeinde_d,
         Comune = Gemeinde_i,
         Canton = Kanton_Short,
         Kanton = Kanton_Short,
         Cantone = Kanton_Short,
         "Pourcentage de non" = 100-Ja_Stimmen_In_Prozent,
         "Nein in %" = 100-Ja_Stimmen_In_Prozent,
         "Percentuale di no" = 100-Ja_Stimmen_In_Prozent)

write.csv(co2_flop,"Tableaux/co2_flop.csv", fileEncoding = "UTF-8")
