generate_data = function(n,p) {
  return(list(covariates = matrix(data = rnorm(n*p), nrow = n, ncol = p), responses = rnorm(n)))
  }

model_select = function(covariates, responses, cutoff) {
  return(lm(responses ~ covariates[,which(covariates <= cutoff)]))
         }
