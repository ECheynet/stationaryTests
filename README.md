# stationaryTests
Matlab functions to test the stationarity of a random process

[![View Stationarity test on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://se.mathworks.com/matlabcentral/fileexchange/54058-stationarity-test)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3891129.svg)](https://doi.org/10.5281/zenodo.3891129)

## Summary
The N-th order stationarity [1] of a random process is assessed using two tests. In the present submission, only the first and second-order stationarities are described. A random process is stationary at the first order if its mean does not change (significantly) with the time. Similarly, a random process is stationary at the second-order if its variance or standard deviation does not change (significantly) with the time. 

The LiveScript example considers the case of turbulent velocity time histories. Their stationarity is assessed using two different approaches:
  - A non-parametric test [2,3], which detects trends and classify the time as non-stationary if the trend is not negligible.
  - A parametric test based on moving-window functions that compare the instantaneous mean or standard deviation to the one obtained without any detrending.

To run the examples, you will need some additional functions:

  - randomProcess.m, available on https://se.mathworks.com/matlabcentral/fileexchange/76854-one-point-random-process-generation 
  - getSamplingPara.m, available on https://se.mathworks.com/matlabcentral/fileexchange/76854-one-point-random-process-generation 
  - binAveraging.m, available on https://se.mathworks.com/matlabcentral/fileexchange/73584-averaging-noisy-data-into-bins  


## Content
The present submission contains:
  - The function RA_test.m, which implements the reverse-arrangement test by Bendat and piersol[2] but also  Siegel et al [3]
  - The function MW_test.m, which implement a parametric stationarity test relying on moving windows functions.
  - A LiveScript example Documentation.mlx

## References

[1] Priestley, M. B. (1981). Spectral Analysis and Time Series. Academic Press. ISBN 0-12-564922-3.

[2] Bendat and piersol, Random data, 2010, page 99

[3] Siegel, Sidney, and N. J. Castellan. "Non-para-metric statistics for the behavioral sciences." (1988).
