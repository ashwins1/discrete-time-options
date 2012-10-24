discrete-time-options
=====================

A Haskell implementation of a basic, n-step recombining binomial tree model for pricing American and European options.

TODO:
=====

* Implement backward dynamic programming algorithm using actual DP (cache results of computation)
* Allow the user to specify call vs. put options
* Allow user to specify European vs. American options
* Maybe generalize to arbitrary payoff structures (at maturity), as specified by some function of type Input -> Double?
