## R Session 2 Practice Sheet
## June 4th, 2024
## CDN team

# These are some exercises to refresh what we talked about and practice a bit

library(tidyverse)
library(palmerpenguins)

########################
#### Data wrangling ####
########################
Cheatsheet: https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-transformation.pdf

## 1- Add 1000 to the year in the penguin dataset using mutate


## 2- multiply bill_length_mm times bill_depth_mm


## 3- Change the name of the variable island to "Isla"


## 4- If you haven't redo the previous operations using pipes


## 5- Find the sum, mean, and median of flipper_length_mm in cm


## 6- Find the sum, mean, and median of flipper_length_mm in cm by species


## 7- Find the sum, mean, and median of flipper_length_mm in cm by species and year


############################
#### Data visualization ####
############################
Cheatsheet: https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-visualization.pdf

## 1- Make a plot showing the relation between bill_length_mm and bill_depth_mm using ggplot

## 2- Make a plot showing the relation between bill_length_mm and bill_depth_mm adding information for the species and weight in Kg using ggplot

## 3- Make a plot showing a density plot of the body mass using geom_density()

## 4- Make a violin plot showing the distribution of body mass by species and by year

## 5- Make a violin plot showing the distribution of body mass by species and by year but adding the points as well using gemo_jitter()!
