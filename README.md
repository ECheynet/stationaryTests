# stationaryTests
Matlab functions to test the stationarity of a random process

[![View Stationarity test on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://se.mathworks.com/matlabcentral/fileexchange/54058-stationarity-test)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3891129.svg)](https://doi.org/10.5281/zenodo.3891129)
[![Donation](https://camo.githubusercontent.com/a37ab2f2f19af23730565736fb8621eea275aad02f649c8f96959f78388edf45/68747470733a2f2f77617265686f7573652d63616d6f2e636d68312e707366686f737465642e6f72672f316339333962613132323739393662383762623033636630323963313438323165616239616439312f3638373437343730373333613266326636393664363732653733363836393635366336343733326536393666326636323631363436373635326634343666366536313734363532643432373537393235333233303664363532353332333036313235333233303633366636363636363536353264373936353663366336663737363737323635363536653265373337363637)](https://www.buymeacoffee.com/echeynet)

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
