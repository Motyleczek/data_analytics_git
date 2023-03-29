data {
    int<lower=0> N;
    real<lower=0, upper=1> fi;
    real<lower=0, upper=1> mu;
    int<lower=0, upper=N> y;
}

parameters {
   real<lower=0, upper=1> p;
}

model {
    // prior
    p ~ beta(fi*mu, fi*(1-mu));

    // likelyhood
    y ~ binomial(N, p);
}

generated quantities {
   int y_pred;
   y_pred = binomial_rng(N, p);
}