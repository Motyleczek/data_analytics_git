parameters {
    real theta; //unconstrained declaration for theta
}
model {
    // gamma density valid only for positives values of theta
    theta ~ gamma(1.25, 1.25);
}