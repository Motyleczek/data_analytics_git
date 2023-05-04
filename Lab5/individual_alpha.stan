data {
  int<lower=1> N;
  vector[N] miles_flown;
  int fatal_accidents[N];
}

parameters {
  real alpha[N];
  real theta;
}

transformed parameters {
  real lambda[N];
  for (i in 1:N) {
    lambda[i] = exp(alpha[i] + theta * miles_flown[i]);
  }
}

model {
  alpha ~ normal(2.86, 0.95);
  theta ~ normal(0.00045, 0.00015);
  
  for (i in 1:N) {
    fatal_accidents[i] ~ poisson(lambda[i]);
  }
}