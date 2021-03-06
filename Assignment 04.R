
install.packages("tidyverse")

install.packages ("readxl")
library(readxl)
library(tidyverse)

df <- read_excel("dataset1.xls")
View(df)
count(df, df$Title)

df$Title <- replace(df$Title, df$Title=="Aldermen","Alderman")

df$Title <- replace(df$Title, df$Title== "Clerk", "Clerk of Count")

df$Title <- replace(df$Title, df$Title== "Constable(s)", "Constable")

df$Title <- replace(df$Title, df$Title== "Council Memeber at Large","Council Member")
df$Title <- replace(df$Title, df$Title== "Council Member III" "Council Member")

df$Title <- replace(df$Title, df$Title== "Council Memeber(s)" "Council Member")
df$Title <- replace(df$Title, df$Title=="Councilman" "Council Member")
df$Title <- replace(df$Title, df$Title== "Council Member I" "Council Member")

df$Title <- replace (df$Title, df$Title == "Council Member II""Council Member")

df$Title <- replace(df$Title, df$Title="Councilman at Large", "Council Member")

df$Title <- replace(df$Title, df$Title== "Councilmember" "Council Member")


df$Title <- replace(df$Title, df$Title== "Judge, Family Court" "Judge")

df$Title <- replace(df$Title, df$Title==-"Associate Judge", "Judge")

df$Title <-replace(df$Title, df$Title=="City Judge""Judge")

df$Title <-replace(df$Title, df$Title== "City Judge, City Court","Judge")
df$Title <- replace(df$Title, df$Title=="Councilmember at Large", "Council Member")

df$Title <- replace(df$Title, df$Title=="Councilmen" "Council Member")

df$Title <- replace (df$Title, df$Title== "Judge, Court of Appeal","Judge")

df$Title <- replace(df$Title, df$Title== "District Judge""Judge")
df$Title <- replace(df$Title, df$Title=="Justice of the Peace(s)", "Justice of the Peace")
df$Title <- replace(df$Title, df$Title=="Justice of the Peace, Parishwide","Justice of the Peace")
df$Title <- replace(df$Title, df$Title == "Mayor-President" "Mayor")
filteredData <- count(df, df$Title)
View(filteredData)
