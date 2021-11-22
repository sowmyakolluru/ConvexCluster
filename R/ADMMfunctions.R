

#' ADMM algorithm for Convex Cluster
#'
#' @param X A given n x p input matrix
#' @param gamma positive scalar, default value 0.1
#' @param U A given n x p cluster center matrix. If none is supplied, initialize with matrix of zeros.
#' @param V A given n x p cluster adjacency matrix(difference between the two adjacent centroids).If none is supplied, initialize with matrix of zeros.
#' @param etainit A n x p matrix, starting value of eta. If none is supplied, initialize with matrix of zeros.
#' @param eps A positive scalar, convergence tolerance criteria (difference in objective function values), default value is 0.001
#'
#' @return
#'
#' Returns a List with 2 members:
#'
#' U - value of matrix U at convergence
#' V - value of matrix V at convergence
#' eta - value of matrix eta at convergence
#'
#' @export
#'
#' @examples
convexADMM <- function(X, gamma = 0.1, U = NULL,V = NULL, etainit = NULL, eps = 0.001){



  # Return U, V and eta at convergence
  return(list(U = U, V = V, eta = eta))
}
