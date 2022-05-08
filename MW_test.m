function [Result,Err1,Err2] = MW_test(u,windowLength,threshold1,threshold2)
% 
% [Result,Err1,Err2] =
% StationaryTestO2(u,windowLength,threshold1,threshold2,varargin) assess
% the first and second-order statioanrity of a random process. 
%% Syntax
%
% Input:
% 
%   - u: double array [1xN] or [Nx1] : random process (time series) to test
% 
%   - windowLength: double [1x1]: Length of the moving window in time-steps (dimensionless) 
% 
%   - threshold1:  double [1x1]: Maximal acceptable value for the relative error between the 
%       isntantaneous mean and the static mean. Any value above threshold1 
%       will classify the time series as non-stationary.
% 
%   - threshold2:   double [1x1]: Maximal acceptable value for the relative error between the 
%       isntantaneous standard deviation (std) and the static std. 
%       Any value above threshold2 will classify the time series as non-stationary.
% 
% Output
% 
%   - Result: boolean: 1 if data is stationary. It is 0  otherwise
% 
%   - Err1: Calculated maximal relative error between the instantaneous mean and static
%   mean
% 
%   - Err2: Calculated maximal relative error between the instantaneous std and static
%   std
% 
% Author: E. Cheynet - UiB - Last modified: 12-06-2020
% 

[N1,N2]=size(u);
if N1>1 && N2>1
    error('u must be a vector')
end

%% Moving mean function
movMeanU = movmean(u,windowLength);
Err1 = max(abs(movMeanU./nanmean(u)-1));

%% Moving standard deviation function
movStdU = movstd(detrend(u),windowLength); %  I chose to remove the liner trend here
Err2 = max(abs(movStdU./nanstd(u)-1));


%% Assess the relative errors
if any(abs(Err1)>threshold1 | abs(Err2)>threshold2)
    Result=0;
else
    Result=1;
end




end