name <- c('john', 'mark')
age <- c(24, 52)
children <- c(FALSE, TRUE)
df <- data.frame(name, age, children)
df

# print df
print(df[1,1]). # index start with 1 
print(df[1, 'age'])
df[c(1,2), c('name', 'age')]

# print col only
df['age']
df[c('age')]
df[3]

# as a list
df$age
df[['age']]
df[[2]]

# print row only
df[1,]
df[c(1),]
      
df

# add a new col to df
height <- c(155, 182)
df$height <- height
df[['height']] <- height

weight <- c(54, 76)
df <- cbind(df, weight)

# add a new row to df
# need a new dataframe because of different data types
tom <- data.frame(name = 'Tom', age = 34, children = TRUE, height = 167, weight = 54)
df <- rbind(df, tom)

#sort values in a col
sort(df$age)

# rank in sorted order
ranks <- order(df$age)
ranks

# print with sorted order
df[ranks,]
df[order(df$age),]
df[order(df$age, decreasing = TRUE),]
