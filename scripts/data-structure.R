cats <- data.frame (coat = c("calico", "black", "tabby"),
                    weight = c(2.1, 5.0, 3.2),
                    likes_catnip = c(1, 0, 1))
cats$weight
cast$coat
cats$coat
cats$weight + 2

typeof(cats$weight)
typeof(3.14) # double
typeof(1L) # integer - all integers are double but not all doubles are integers - needs a capital L at the end
typeof(1+1i) # complex because it has the imaginary numbers
typeof(TRUE) # logical - boolean, only two values
typeof("banana") # character - becuase its a bunch of characters
typeof(cats$coat)
typeof(cats$likes_catnip)
typeof(cats$weight)
as.logical(cats$likes_catnip)
cats$likes_catnip <- as.logical(cats$likes_catnip)
cats
c(3.14, TRUE, "banana") # vectors all have to be the same type. But you can combine data types in a list 
list(3.14, TRUE, "banana") # this is a list bc r doesnt know they are all the same

typeof(cats) #a dataframe is a list of vectors

cats[1,2] # R then C - rows then columns

cats[1,]
cats[ ,1]

cats[1]
cats[[1]]
cats$coat
cats["coat"]
cats[1, 1]
cats[, 1]
cats[1, ]

cats[[1, ], [ ,1]]

c
cats[c(1,3),]

cats[1,]
cats[c(1,3),]     

cats$weight < 4
cats[cats$weight < 4,]
