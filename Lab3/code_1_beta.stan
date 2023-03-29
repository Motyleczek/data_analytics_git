data {
    int N;
    real<lower=0, upper=1> fi;
    real<lower=0, upper=1> mu;
}

generated quantities {
   int y;
   real<lower=0, upper=1> theta;
   theta = beta_rng(fi*mu, fi*(1-mu));
   y = binomial_rng(N, theta);
}