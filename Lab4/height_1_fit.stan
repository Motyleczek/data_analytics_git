data {
    int<lower=0> N;
    vector[N] heights;
}

parameters {
    real<lower=0> mean;
    real<lower=0> sigma;
}

model {
    mean ~ normal(154, 7.7);
    sigma ~ normal(15, 3);
    
    heights ~ normal(mean, sigma);
}

generated quantities {
    real h_hat = normal_rng(mean, sigma);
}