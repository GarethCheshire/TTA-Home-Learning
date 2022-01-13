library(ggplot2)
data(mpg)
?mpg
View(mpg)

qplot(x=mpg$displ, y=mpg$cty, geom="point", colour=mpg$manufacturer)
#This scatterplot shows a correlation between engine displacement and city miles per gallon. Generally, the larger the engine displacement, the lower the city mpg. It also shows that the manufacturers with the largest engine displacements (5 litres or more) are predominantly American (Chevrolet, Dodge, Ford, Jeep, Lincoln, Mercury and Pontiac). In contrast to this, the manufacturers with the smallest engine displacements (2 litres or less) are European (Volkswagen and Audi) or Asian (Honda, Toyota and Hyundai).
qplot(x=mpg$displ, y=mpg$hwy, geom="point", colour=mpg$manufacturer)
#There is also a correlation between engine displacement and highway miles per gallon, albeit with more anomalies. The mpg figures are also higher for highway than city overall.
qplot(x=mpg$class, geom="bar", colour=mpg$manufacturer)
#The barplot shows that the type of car released the most was SUV. The type of car released the least was 2-seater. The number of manufacturers that released cars in these classes reflects this, with only one manufacturer releasing 2-seaters and ten manufacturers releasing SUVs.
qplot(x=mpg$cty, y=mpg$displ, geom="boxplot", colour=mpg$manufacturer)
#The boxplot shows that the manufacturer with the largest range of engine displacements was Chevrolet. Honda had a much smaller range of engine displacements, all lower than Chevrolet, but higher city mpg figures. Volkswagen had the best mpg figures, with the majority being above 24mpg.

