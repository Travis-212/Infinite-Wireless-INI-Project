lambda = 10e-4;
R = 200;
BS_lambda = R * R * pi * lambda;
[matrix_BS, BS_n] = BS_Deployment(BS_lambda, R);