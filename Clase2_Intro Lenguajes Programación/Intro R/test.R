df <- read.csv("Julio/IEBS-DataScience-and-ML/Clase2_Intro Lenguajes Programación/Intro Python/ejercicios/Titanic.csv")

getwd()

nrow(df)
length(df)

head(df)

library(dplyr)

df_projected <- sample_n(df, 10)
sample_frac(df, 0.1)

select(df_projected, Name, Age)

library(magrittr)

sample_n(df,10)

df %>%
  filter(Age < 30, Survived == 1) %>%
  arrange(Name) %>%
  head(10)

df %>% select(Sex, Survived) %>% distinct()

df %>% mutate(AgeRel = 100 - Age) %>% head()

df %>% summarise(avg_age = mean(Age, na.rm = TRUE)) %>% head()

distinct(df, Age)

df %>% group_by(Sex) %>% summarise(avg_age = mean(Age, na.rm = TRUE)) %>% head()
