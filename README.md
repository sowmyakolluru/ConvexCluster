# Convex Clustering with ADMM implementation via R package

## Description of Package

This R package implements implementing ADMM algorithm to solve the convex clustering problem. The idea behind convex clustering is as follows:Given n data
points \(x_i\), \(i=1,\dots, n\), in p dimensions, \(x_i\in \mathbb{R}^p\). It aims to minimize
\[
\text{minimize}_{U \in \mathbb{R}^{n \times p}}\frac{1}{2}\sum_{i=1}^n \|x_i - u_i\|_2^2 + \gamma \sum_{i<j}w_{ij}\|u_i - u_j\|
\]

where \(gamma\) is the positive tuning parameter, \(w_{ij}\) is the non-negative weight and \(u_i\) is the \(u^{th}\) column of matrix U associated to the point \(x_i\).The first term is the fidelity term while the second term is the regularization term to penalize the differences
between different centroids so as to enforce the property that centroids for observations in
the same cluster should be identical.
The key idea behind the convex clustering model is that, if two observations \(x_i\) and \(x_j\) belong to the same cluster, then their corresponding centroids \(u^*_i\) and \(u^*_j\) should be the same. where, is the optimal solution \(U^*\) = [\(u^*_i\),...,\(u^*_n\)].

The corresponding references are:

E. C. Chi and K. Lange. Splitting methods for convex clustering. J. Computational and
Graphical Statistics, 24(4):994–1013, 2015.

Huangyue Chen, Lingchen Kong, Yan Li, "A Novel Convex Clustering Method for High-Dimensional Data Using Semiproximal ADMM", Mathematical Problems in Engineering, vol. 2020, Article ID 9216351, 12 pages, 2020.

This function takes n × p data matrix X, (optional) gamma, (optional) initial n × p matrix of cluster centers U, (optional) initial n × p matrix of cluster adjacency matrix V, (optional) initial n × p matrix of starting value of eta and (optional) eps to monitor convergence. It returns a list of U, V and eta set of matrices at convergence.

## Installation

devtools::install_github("sowmyakolluru/ConvexCluster")


## Things to work on for remainder of semester
Will work on adding soft thresholding function and objective function that help us in monitoring convergence. After implementing the code in R, move the code to C++ and compare the speed.Make finial changes to function documentation and package desciption documentation.




