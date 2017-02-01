myfunction <- function () {
  x <- rnorm(100)
  mean(x)
}

second <- function(x) {
  x + rnorm(length(x))
}

par(mfrow = c(1, 3), mar = c(4, 4, 2, 1), oma = c(0,0,2,0))
with(airquality, {
  plot(Wind, Ozone, main = "Ozone and Wind") 
  model1 <- lm(Ozone ~ Wind, airquality)
  abline(model1, lwd = 2)
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation") 
  model2 <- lm(Ozone ~ Solar.R, airquality)
  abline(model2, lwd = 2)
  plot(Temp, Ozone, main = "Ozone and Temperature")
  model3 <- lm(Ozone ~ Temp, airquality)
  abline(model3, lwd = 2)
  mtext("Ozone and Weather in New York City", outer = TRUE)
  })