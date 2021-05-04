
install.packages("lpSolve")
library(lpSolve)

obj_coeff <- c(13, 23, 30) 

# Constraint Coefficients
constraints <- matrix(
  c(5,15,4,
    4,4,10,
    35,20,15,
    5,10,20
  ), nrow=4, byrow=TRUE
)

direction_c <- c("<=",
                 "<=",
                 "<=",
                 "<=")

resources <- c(530,
               444,
               1365,
               840
               )


# Create out linear program
solve_lp <- lp(
  "max",
  obj_coeff,
  constraints,
  direction_c,
  resources
)

# Get the max profit
solve_lp$objval

# Best values
solve_lp$solution

####################
#what i think they you need to probability of 60% 
#increase the the number of employees from 5 to 13 and hours per day to 11
obj_coeff <- c(13, 23, 30) 

# Constraint Coefficients
constraints <- matrix(
  c(5,15,4,
    4,4,10,
    35,20,15,
    5,10,20  
  ), nrow=4, byrow=TRUE
)

direction_c <- c("<=",
                 "<=",
                 "<=",
                 "<=")

resources <- c(550,
               450,
               1370,
               3003  
)


# Create out linear program
solve_lp <- lp(
  "max",
  obj_coeff,
  constraints,
  direction_c,
  resources
)

# Get the max profit
solve_lp$objval

# Best values
solve_lp$solution



##### The Matrix#####

install.packages("expm")
library(expm)

T <- matrix(c(
  0.95, 0.05, 0,0,0,
  0.75, 0.2, 0.05,0,0,
  0.2, 0.55, 0.2, 0.05,0,
  0.2, 0.55, 0.2, 0.05,0,
  0,0.35,0.2,0.4,0.05
  
), nrow=5, byrow = TRUE)
T

# Column names
colnames(T) <- c(0,1,2,3,4)
rownames(T) <- c(0,1,2,3,4)

T%^%4

T%^%8




