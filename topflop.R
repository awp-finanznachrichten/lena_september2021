#import
library(tidyverse)


#MARIAGE POUR TOUS
mar_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_september2021/master/Output/Ehe_all_data.csv")

mar_top <- mar_raw %>%
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

write.csv(mar_top,"Tableaux/mar_top.csv", fileEncoding = "UTF-8")


mar_flop <- mar_raw %>%
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

write.csv(mar_flop,"Tableaux/mar_flop.csv", fileEncoding = "UTF-8")

##99%
cap_raw <- read_csv("https://raw.githubusercontent.com/awp-finanznachrichten/lena_september2021/master/Output/Kapital_all_data.csv")

cap_top <- cap_raw %>%
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

write.csv(cap_top,"Tableaux/cap_top.csv", fileEncoding = "UTF-8")


cap_flop <- cap_raw %>%
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

write.csv(cap_flop,"Tableaux/cap_flop.csv", fileEncoding = "UTF-8")