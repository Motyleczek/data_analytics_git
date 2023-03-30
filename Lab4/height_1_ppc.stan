data {
    real<lower=0> mu;
    real<lower=0> sigma;
}

parameters {
    real<lower=0> mu_p;
    real<lower=0> sigma_p;
}

model {
    mu_p ~ normal(mu, sigma);
    sigma_p ~ normal(sigma, 0.5);
}

generated quantities {
   real<lower=0> height;
   height = normal_rng(mu_p, sigma_p);
}