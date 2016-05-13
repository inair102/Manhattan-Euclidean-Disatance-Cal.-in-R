Names = c("Goku","Vegeta","Luffy","Zoro")
Horror_M = c(15,15,12,12)
Comedy_M = c(15,6,3,3)
Comparison = data.frame(Names,Comedy_M,Horror_M)
Comparison

Manhatten = data.frame(Name=character(),
                       Friend=character(),
                       Comedy_S=integer(),
                       Horror_S=integer(),
                       Comedy_F=integer(),
                       Horror_F=integer(),
                       Distance=double(),
                       stringsAsFactors = FALSE)
Euclidean = data.frame(Name=character(),
                       Friend=character(),
                       Comedy_S=integer(),
                       Horror_S=integer(),
                       Comedy_F=integer(),
                       Horror_F=integer(),
                       Distance=double(),
                       stringsAsFactors = FALSE)

for(i in 1:nrow(Comparison)){
  for(j in 1:nrow(Comparison)){
    if(i!=j){
      Name = as.character(Comparison$Names[i])
      Friend = as.character(Comparison$Names[j])
      Comedy_S = Comparison$Comedy_M[i]
      Horror_S = Comparison$Horror_M[i]
      Comedy_F = Comparison$Comedy_M[j]
      Horror_F = Comparison$Horror_M[j]
      Manhatten_Distance = abs(Comedy_S - Comedy_F) + abs(Horror_S - Horror_F)
      Euclidean_Distance = sqrt((Comedy_S - Comedy_F)^2 + (Horror_S - Horror_F)^2)
      Manhatten[nrow(Manhatten)+1,] = c(Name,Friend,Comedy_S,Horror_S,Comedy_F,Horror_F,Manhatten_Distance)
      Euclidean[nrow(Euclidean)+1,] = c(Name,Friend,Comedy_S,Horror_S,Comedy_F,Horror_F,Euclidean_Distance)
    }
  }
}

View(Manhatten)
View(Euclidean)