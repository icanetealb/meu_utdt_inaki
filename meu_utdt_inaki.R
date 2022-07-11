install.packages("tidyverse")
library(tidyverse)

install.packages(read)

install.packages("janitor")
library(janitor)

install.packages("dplyr")
library(dplyr)

library(readr)
  presu_2021_finfun <- read.csv(file = "data/pc_proy21_finfun.csv" ,
                                encoding = "UTF-8")
presu_2021_finfun_filtrado <- filter(presu_2021_finfun , 
                                     Descripción.Jurisdicción == "Ministerio de Educación")
  
presu_2021_finfun_select <- select(presu_2021_finfun, -Descripción.Entidad, -Código.Entidad)

presu_2021_finfun_mutado <- mutate(presu_2021_finfun_filtrado, 
                                   Jurisdicción.FinFun=paste
                                   (Descripción.Jurisdicción,Descripción.Finalidad.Función,sep="_"))
