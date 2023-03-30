data {
    int<lower=0> N;
    real,lower=0> heights[N];
}

parameters {
    real<lower=0> mu;
    real<lower=0> sigma;
}

model {
    //TODO - finish and change to appropriate dist
    mu ~ normal(1,1);
    sigma ~ normal(1,1);
}