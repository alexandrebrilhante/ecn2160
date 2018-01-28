x <- 345

x

log_x <- log2(x)

log_x

y <- 45

x-y

z <- 300

if (x-y == z) {
    return(TRUE)
} else {
    return(FALSE)
}

z <- x-x

z

a <- 24
b <- 3

mult <- function(a, b) {
    result <- 0
    for (i in 1:b) {
        result <- result+a
    }
    return(result)
}

mult(a, b)

a*b

# On génère 12 valeurs aléatoires.

input <- rnorm(12)

input

# On convertit nos valeurs en série chronologique.

input <- ts(input, start = c(2018, 1), frequency = 12)

input

plot.ts(input)

# On génère 10 points aléatoires.

x <- rnorm(10)
y <- rnorm(10)

plot(x, y)

# Création de données.
set.seed(123)

x <- 1:20 + rnorm(100, sd = 3)
z <- 1:20/4 + rnorm(100, sd = 2)
y <- -2*x + x*z/5 + 3 + rnorm(100, sd = 4)

# On créé un dataframe avec nos données.
dat <- data.frame(x = x, y = y, z = z)

head(dat)

cor(dat$x, dat$y)

fit <- lm(dat$y ~ dat$x)

fit

summary(fit)

plot(fit)

fit <- lm(dat$z ~ dat$x + dat$y)

fit

summary(fit)

plot(fit)
