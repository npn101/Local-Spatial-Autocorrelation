clear
clc
format short G
% Contiguity Matrix
cm =[0 1 1 1 1 1 
    1 0 1 0 0 1  
    1 1 0 1 0 0  
    1 0 1 0 1 0  
    1 0 0 1 0 1  
    1 1 0 0 1 0 ];

% Sum of Contiguity Matrix Rows
s = sum(cm,2);

% Row Standardized Spatial Weights Matrix
w = cm./s;
% Khlong Sam Prawet_g_TOTAL = 2052
% Min Buri_g_TOTAL = 13528
% Saen Saep_g_TOTAL = 5659
% Lam Prathew_g_TOTAL = 2825
% ChongNonsi_g_TOTAL = 5236
% Song Ton Nun_g_TOTAL = 7731
x = [2052
    13528
    5659
    2825
    5236
    7731];

% Z-Scores for a Population  https://www.mathworks.com/help/stats/zscore.html
z = zscore(x,1);

% LISA
I = z.*(w*z);