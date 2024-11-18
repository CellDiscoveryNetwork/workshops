## Learning R: Session 2
## June 4th, 2024
## CDN team

###################
#### Tidyverse ####
###################

# The tidyverse is an opinionated collection of R packages designed for
# data science. All packages share an underlying design philosophy, grammar, 
# and data structures

# Resource - https://r4ds.had.co.nz/

# install all the packages
install.packages("tidyverse")
install.packages("palmerpenguins")

library(tidyverse)
library(palmerpenguins)
# https://allisonhorst.github.io/palmerpenguins/
data(package = 'palmerpenguins')

########################
#### Data Wrangling ####
########################
https://www.datanovia.com/en/courses/data-manipulation-in-r/
https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-transformation.pdf

### Data exploration ###
head(penguins)

# Summary of the variables
summary(penguins)

# Summary of just one variable
summary(penguins$bill_length_mm)

### mutate(): Add/create new variables ###
penguins <- mutate(penguins, 
    body_mass_kg = body_mass_g / 100,
    flipper_length_mm_log10 = log10(flipper_length_mm),
    bill_length_cm = bill_length_mm / 100,
    year = as.character(year))

### rename(): Rename columns. ###
# Lets make the dataset portuguese friendly
pinguins2 <- rename(penguins, 
    especies = species,
    ilha = island,
    ano = year)

### filter(): Pick rows (observations/samples) based on their values ###

# Only select Adelie penguins
filter(penguins, species == "Gentoo" | bill_length_mm > 45)

# Only select Adelie penguins from Torgersen Island
df <- filter(penguins, species == "Chinstrap" & island == "Dream")
df
# Can we remove those penguins from which we don't have any data?
head(penguins)
! is.na(penguins$bill_length_mm)
penguins2 <- filter(penguins, ! is.na(bill_length_mm))

penguins2 <- filter(penguins, ! is.na(bill_length_mm) & ! is.na(sex))

### select(): Select columns (variables) by their names. ###

# Select all columns except flipper_length_mm_log10

penguins <- select(penguins, -c(flipper_length_mm_log10))

# Select columns of interest
pull(penguins, bill_length_mm)
penguins3 <- select(penguins,
    c(species, island, bill_length_mm, bill_depth_mm))
penguins3
### arrange(): Reorder the rows. ###

# sort data  by a value in a column

# Ascending
arrange(penguins2, bill_length_mm)

# Descending
arrange(penguins2, desc(bill_length_mm))

# We can also sort by categorical variables
arrange(penguins2, island)

# Or by 2 variables at the same time
arrange(penguins2, island, bill_length_mm) %>% data.frame()

### summarise(): Compute statistical summaries (e.g., computing the mean or the sum) ###
summarise(penguins2,
    mean_bill_length = mean(bill_length_mm))

summarise(penguins2,
    mean_bill_length_mm = mean(bill_length_mm),
    median_bill_length_mm = median(bill_length_mm),
    sd_bill_length_mm = sd(bill_length_mm))

### Pipe operator %>%  ###
# This operator allows us to concatenate commands one after the other.
# It basically tells the function to grab the previous' output and do
# whatever they do.

### Pseudocode ###
marc <- "zzz"
marc <- wakeup(marc)
marc <- eat_breakfast(marc)
marc <- brush_teeth(marc)
marc <- take_t(marc)

### Real code ###
marc %>%
    wakeup() %>%
    eat_breakfast() %>%
    brush_teeth() %>%
    take_t()

## Putting together what we just did
penguins4 <- penguins %>%
    # Create and modify variables
    mutate( 
        body_mass_kg = body_mass_g / 100,
        year = as.character(year)
        ) %>%
    # Remove body_mass_g since we have it in Kg
    select(-body_mass_g) %>%
    # Filter and keep those roes that don't have NAs
    filter(! is.na(bill_length_mm) & ! is.na(sex)) %>%
    tidyr::drop_na() %>%
    # Arrange by island and weight
    arrange(island, desc(body_mass_kg))

penguins4

# Lastly we can summarize statistics by groups
penguins4 %>%
    group_by(species, island) %>%
    summarise(
        mean_body_mass_kg = mean(body_mass_kg),
        sd_body_mass_kg = sd(body_mass_kg),
        median_body_mass_kg = mean(body_mass_kg)
    )

#######################
#### Visualization ####
#######################
https://ggplot2-book.org/
https://raw.githubusercontent.com/rstudio/cheatsheets/main/data-visualization.pdf

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
    geom_point()

# We can color each point by their island
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    geom_point()

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    geom_point(size = 5)

# Shape by the island
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = island)) +
    geom_point() +
    theme_light()

# Prettify adding a theme
ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    geom_point(alpha = 0.5) +
    theme_classic() +
    scale_color_manual(
        values = c("cyan", "pink", "black"),
        breaks = c("Gentoo", "Adelie", "Chinstrap")
        )

ggplot(penguins, aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    geom_point() +
    theme_light()

#### Boxplot
ggplot(penguins, aes(x = species, y = body_mass_g, fill = island, color = island)) +
    geom_boxplot(alpha = 0.7) +
    theme_classic()

#### Boxplot + Violin plot
ggplot(penguins, aes(x = species, y = body_mass_g, fill = species)) +
    geom_boxplot(alpha = 0.5, width = 0.1) +
    geom_violin(alpha = 0.1) +
    geom_jitter() +
    theme_classic()

## Pipeing into a ggplot
penguins %>%
    mutate(body_mass_kg = body_mass_g / 1000) %>%
    ggplot(aes(x = species, y = body_mass_kg, fill = species)) +
        geom_violin() +
        geom_boxplot(alpha = 0.5) +
        theme_classic()

## Facetting
penguins %>%
    mutate(body_mass_kg = body_mass_g / 1000) %>%
    ggplot(aes(x = species, y = body_mass_kg, fill = species)) +
    geom_violin() +
    geom_boxplot(alpha = 0.5) +
    facet_wrap(facets = "year") +
    theme_classic()

xlsx::read.xlsx("data.xlsx", sheetName = "sheet1")
?xlsx::read.xlsx
