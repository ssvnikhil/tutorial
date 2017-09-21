#   Multiple regression predicts one variable with many other variables.

housing <- read.table("data/housing.csv", sep = ",", header = TRUE, stringsAsFactors = FALSE)
head(housing)

names(housing) <- c("Neighborhood", "Class", "Units", "YearBuilt", "SqFt",
                    "Income", "IncomePerSqFt", "Expense", "ExpensePerSqFt", 
                    "Net Income", "Value", "ValuePerSqFt", "Boro")

head(housing)


require(ggplot2)

ggplot(housing, aes(x = ValuePerSqFt)) + geom_histogram(binwidth = 10) + labs(x = "Value Per Square Foot")

ggplot(housing, aes(x = ValuePerSqFt, fill = Boro)) + geom_histogram(binwidth = 10) + labs(x = "Value Per Square Foot")

ggplot(housing, aes(x = ValuePerSqFt, fill = Boro)) + geom_histogram(binwidth = 10) + 
    labs(x = "Value Per Square Foot") + facet_wrap(~Boro)


ggplot(housing, aes(x = SqFt)) + geom_histogram()

ggplot(housing, aes(x = SqFt, y = ValuePerSqFt)) + geom_point()

ggplot(housing[housing$Units < 1000, ], aes(x = SqFt)) + geom_histogram()

ggplot(housing[housing$Units < 1000, ], aes(x = SqFt, y = ValuePerSqFt)) + geom_point()

sum(housing$Units > 1000)

housing <- housing[housing$Units < 1000, ]
