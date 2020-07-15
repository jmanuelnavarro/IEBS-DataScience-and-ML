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

# Generación de distribuciones

gaussian_data <- rnorm(1000, mean = 0, sd = 1)
mean(gaussian_data)
sd(gaussian_data)

hist(gaussian_data)
boxplot(gaussian_data)
plot(gaussian_data)

uniform_data <- runif(1000, 0, 10)
plot(uniform_data)
hist(uniform_data)

plot(gaussian_data, gaussian_data *4)

noisy_data <- gaussian_data + uniform_data
plot(noisy_data)
hist(noisy_data)
hist(gaussian_data)
cor(gaussian_data, noisy_data)
plot(gaussian_data, noisy_data)
