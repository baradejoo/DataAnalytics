data {
    int<lower=1> N;
    vector[N] y;
}

parameters {
   real mu;
   real<lower=0> sigma;
}

model {
    mu ~ normal(0,1);
    sigma ~ normal(0,1);

    y ~ normal(mu,sigma);
}