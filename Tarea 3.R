if(!require('arules')) {
  install.packages('arules')
  library('arules')
}

data = read.csv('C:/Users/jerdu/Downloads/db_csv_/db_csv_/MIGRACION_BDP.csv', sep=',');

data2 = data[, !names(data) %in% c ('ZONA', 'NUM_VIVIENDA', 'NUM_HOGAR')]

reglas <- fim4r(data2, method = "fpgrowth", target="rules", supp = .2, conf = .5)

reglasframe <- as(reglas, "data.frame")

#REGLA 1
reglasframe[65,]

#REGLA 2
reglasframe[64,]

#REGLA 3
reglasframe[232,]
