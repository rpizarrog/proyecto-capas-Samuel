f_calcular <- function(variables, ws) {
  res_final <- NULL
  pos_final <- 0
  pos_parcial <- 0
  res_parcial <- NULL
  for (v in 1:length(variables)) {
    suma_parcial <- 0
    for (w in 1:length(ws)) {
      pos_parcial <- pos_parcial + 1
      suma_parcial <- suma_parcial + variables[v] *  ws[w]
      res_parcial[pos_parcial] <- variables[v] *  ws[w]
    }
    pos_final <- pos_final + 1
    res_final[pos_final] <- suma_parcial            

  }
  
  return (list(pos_parcial = pos_parcial, res_parcial = res_parcial,
               pos_final = pos_final, res_final = res_final, 
               suma_parcial = sum(res_parcial), suma_final = sum(res_final)))
}


f_calcular_v2 <- function(variables, ws) {
  sumas_parciales <- 0
  sumas_finales <- 0
  for (v in 1:length(variables)) {
    sumas_finales[v] <- sum(variables[v] * ws)
  }
  
  return(list(sumas_finales = sumas_finales, suma = sum(sumas_finales)))
}
