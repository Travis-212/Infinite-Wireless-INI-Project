function [matrix_BS, BS_num] = BS_Deployment(BS_lambda, R)
clc;
close all;
[BS_pos, BS_num] = poisson2d(BS_lambda);
BS_rho = R * sqrt(BS_pos(: , 2));
BS_theta = 2 * pi * BS_pos(: , 1);
polarscatter(BS_theta, BS_rho, ".", "r");
hold on;
polarscatter(0, 0, 600, ".", "b");
hold on;
dist = BS_rho;
matrix_BS = [BS_theta, dist];
% [min_dist,index]=min(dist');
% matrix_UE_BS=zeros(UE_num,3);
% matrix_UE_BS(:,1)=index';
% matrix_UE_BS(:,2)=min_dist';
% matrix_UE_BS(:,3)=index'.*(R>min_dist');
end