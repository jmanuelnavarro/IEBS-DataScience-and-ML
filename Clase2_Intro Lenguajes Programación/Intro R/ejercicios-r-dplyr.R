# IEBS

## Ejercicios con dplyr

# -------------------------
# Carga el dataset Salaries.csv

df <- read.csv("Julio/IEBS-DataScience-and-ML/Clase2_Intro Lenguajes Programaci�n/Intro Python/ejercicios/Salaries.csv")

# -------------------------
# Importa dplyr y magrittr

library(dplyr)
library(magrittr)

# -------------------------
# Muestra las primeras filas del dataframe

head(df)

# -------------------------
#  ¿Cual es la media del salario base, BasePay?

df %>% summarise(mean(BasePay, na.rm = TRUE))

# -------------------------
# ¿Cuál es el mayor número de horas extra pagadas (OvertimePay)?

max(df$OvertimePay, na.rm = TRUE)
  
# -------------------------
# ¿Cual es el titulo del trabajo (JobTitle) del empleado JOSEPH DRISCOLL?

df %>% filter(EmployeeName == "JOSEPH DRISCOLL") %>% select(JobTitle)

# -------------------------
# ¿Cuanto gana este empleado en total (TotalPayBenefits)?

df %>% 
  filter(EmployeeName == "JOSEPH DRISCOLL") %>%
  select(TotalPayBenefits)

# -------------------------
# ¿Cómo se llama la persona que más gana?

df %>%
  filter(TotalPayBenefits ==  max(df$TotalPayBenefits, na.r = TRUE)) %>%
  select(EmployeeName)


# -------------------------
# ¿Cual es la paga media por años?

head(df)
distinct(df, Year)

mean_pay = mean(df$TotalPayBenefits, na.rm = TRUE)

df %>%
  group_by(Year) %>%
  summarise(avg_pay = mean(TotalPayBenefits, na.rm = TRUE))

# -------------------------
# ¿Cuántos trabajos únicos hay?

df %>% 
  distinct(JobTitle) %>%
  nrow()

