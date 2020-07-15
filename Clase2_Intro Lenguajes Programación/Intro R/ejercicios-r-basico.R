# IEBS

## Ejercicios b√°sicos de R

# -------------------------
# Cuanto es 7 a la cuarta?

7 ^ 4
  
  # -------------------------
# Es este resultado divisible por 3?

if (7^4 %% 3 == 0){
  print("7 a la cuarta es divisible entre 3")
} else {
  print("7 a la cuarta no es divisible entre 3")
}
  
# -------------------------
# Sabiendo que el radio de la Tierra es 6.371Km, imprime el mensaje: 
# "El per√≠metro de la Tierra es aproximadamente XXXX Km" 
# almacenando el resultado en la variable perimetro, calculando el valor de perimetro usando radio y pi.

pi
planeta <- 'Tierra'
radio <- 6371

print(paste("El per√≠metro de la tierra es aproximadamente ", 2*pi*radio, "Km"))
  
  # -------------------------
# Calcula el factorial de un numero, sabiendo que el factorial es la multiplicaciÛn 
# de ese n˙mero por todos los que le preceden

n <- 5

factorial <- function(n) {
  res_fact <- 1
  i <- 1
  while (i <= n) {
    print(i)
    res_fact <- i * res_fact
    i <- i + 1
  }
  res_fact
}
  
  
  # -------------------------
# Introduce la implementacion anterior de la funcion factorial dentro de una funci√≥n 
# de modo que podamos llamar a `factorial(5)`

factorial(5)
  
  # -------------------------
# Escribir una funci√≥n que calcule si un numero n es primo, `es_primo(5)` 
# deberia devolver `TRUE` y `es_primo(4)` devolver√≠a `FALSE`

es_primo <- function(n) {
  # Un n˙mero es primo si es divisible sÛlo por 1 o pos sÌ mismo
  divisor <- 2
  primo <- TRUE
  while (divisor < n) {
    if (n %% divisor == 0) {
      primo <- FALSE
    }
    print(divisor)
    divisor <- divisor + 1
  }
  primo
}
  
  es_primo(5)

  es_primo(4)
