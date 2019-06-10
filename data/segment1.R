# simulate data using the mgcv package
dat <- mgcv::gamSim(1, n = 30, scale = 2)
# fit a simple gaussian process model
fit1 <- brm(y ~ gp(x2), dat, chains = 2)
summary(fit1)