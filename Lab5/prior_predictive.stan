generated quantities {
  real theta = normal_rng(0.00045, 0.00015);
  real alpha = normal_rng(2.86, 0.95);
  real n = normal_rng(0, 1);
  real lambda = exp(alpha+theta*n);
  int fatal_accidents = poisson_rng(lambda);
}