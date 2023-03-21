data {
    int<lower=1> N; //number of ys
}

parameters {
    real y[N]; // probabilistic variables y
    real theta; // probabilistic variable theta
}

model {
    // cond probability density for the ys
    // given theta 
    y ~ normal(theta, 1);
    // prior probability density for theta
    theta ~ normal(0, 1);
}