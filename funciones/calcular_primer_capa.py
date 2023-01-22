# función primer capa
def calcular(variables, ws):
  sumas_finales = []
  for v in range(len(variables)):
    suma = 0
    for w in range(len(ws)):
      suma = suma + variables[v] * ws[w]
    sumas_finales.append(suma)
  return (sumas_finales, sum(sumas_finales))
