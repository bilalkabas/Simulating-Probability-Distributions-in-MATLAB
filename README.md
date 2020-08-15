# Simulating Probability Distributions in MATLAB
[![license](https://img.shields.io/badge/license-MIT-%23F65314?style=flat-square)](LICENSE)

This repository contains MATLAB codes simulating some probability distributions.

## Getting Started
There are 5 files inside the [simulation-files](https://github.com/bilalkabas/Simulating-Probability-Distributions-in-MATLAB/tree/master/simulation-files) folder:

| File Name | Description |
| --- | --- |
| **sim_1** | Simulate drawing of N cards from a deck of cards which include integers between 1 and 10. The random variable X is the number on the cards drawn randomly. |
| **sim_2** | Simulate the sum of 4 randomly selected integers between 1 and 10. The random variable X is that sum. |
| **sim_3** | Simulating tossing a coin N times with P(tails) = p. The random variable X indicates how many times the coin comes up tails. |
| **sim_4** | Simulate the number of people entering a shop in one hour. The random variable X is the number of people. Simulate this RV for different lambdas. |
| **sim_5** | Choose one built-in dataset in MATLAB, plot the histogram and fit a probability density function (pdf) to it. Compute the probability of a random value being less than a predetermined threshold of your choice. |

### Running Examples

You need to have MATLAB installed to run examples. If you have MATLAB installed, you can directly open up ``.mat`` files and run them.

## Results

| File Name | Plot | Result
| --- | --- | --- |
| **sim_1** | <img src="https://github.com/bilalkabas/Simulating-Probability-Distributions-in-MATLAB/blob/master/figures/sim_1.png" width=9000 px /> | ``randi`` function produces array indices between 1 and 10 uniformly. The distribution of numbers converges to the uniform distribution as the number of cards drawn from the deck (N) increases. Additionally, the expected value also converges to 5.5 for the increasing values of N. |
| **sim_2** | <img src="https://github.com/bilalkabas/Simulating-Probability-Distributions-in-MATLAB/blob/master/figures/sim_2.png" /> | As N increases, the expected value gets closer to 22 and the PMF forms a bell curve shape. According to the Central Limit Theorem, when independent random variables are added constituting another random variable which is that sum, the distribution of that sum converges to a normal distribution. However, it should be noted that the distribution of sum in this case is not continuous as X can be any integer between 4 and 40. |
| **sim_3** | <img src="https://github.com/bilalkabas/Simulating-Probability-Distributions-in-MATLAB/blob/master/figures/sim_3.png" /> | Flipping a coin N times with P(tails) = p is an example of the Bernoulli process as we have two possible outcomes for each trial which are tails or heads. In this task, this Bernoulli process has been repeated and the PMF showing how many times the coin comes up tails has been demonstrated. Consequently, in the end of his Bernoulli process, a binomial distribution has been obtained. |
| **sim_4** | <img src="https://github.com/bilalkabas/Simulating-Probability-Distributions-in-MATLAB/blob/master/figures/sim_4.png" /> | There is again a Bernoulli process, exactly a person enters, or nobody enters within a specific interval. Lambda is the number of ones in the weighted array and the number of zeros is (36000 – L).  This distribution is an example of the Poisson distribution as we have average number of people and the random variable is the number of people within one hour. In the Poisson distribution, the expected value and the variance are equal to lambda (λ). |
| **sim_5** | <img src="https://github.com/bilalkabas/Simulating-Probability-Distributions-in-MATLAB/blob/master/figures/sim_5.png" /> | A built-in dataset which includes the distribution of horsepower between 1970 and 1982 has been used. The Gamma distribution has been fit to the actual distribution using MATLAB’s built-in fitdist function which returns shape and scale coefficients. Then pdf function has been used to obtain probability values. |

## Reference

Please refer to the [report](https://github.com/bilalkabas/Simulating-Probability-Distributions-in-MATLAB/blob/master/project-report/B_KABAS_MATH_301_Mini_Project.pdf) for further information.

## Built with

- MATLAB R2019a

## Authors

- [Bilal Kabaş](https://github.com/bilalkabas)

## License

This project is licensed under the [MIT License](https://github.com/bilalkabas/Simulating-Probability-Distributions-in-MATLAB/blob/master/LICENSE).

