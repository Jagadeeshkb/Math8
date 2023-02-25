# function to implement the Gale-Shapley algorithm
gale_shapley <- function(preferences) {
  n <- nrow(preferences)
  
  # initialize arrays to keep track of the current matches and proposals
  matches <- rep(0, n)
  proposals <- rep(0, n)
  
  # loop through each man and propose to his top-ranked woman who has not rejected him yet
  while (any(proposals == 0)) {
    i <- which(proposals == 0)[1] # find the first man who has not proposed yet
    print(i)
    j <- preferences[i, proposals[i] + 1] # propose to his top-ranked woman who has not rejected him yet
    proposals[i] <- proposals[i] + 1 # update the number of proposals made by the man
    
    if (matches[j] == 0) { # the woman is currently unmatched
      matches[j] <- i # match the man and woman
    } else { # the woman is currently matched
      k <- matches[j]
      if (which(preferences[j, ] == i) < which(preferences[j, ] == k)) {
        matches[j] <- i # the woman prefers the new man to her current partner, so she switches
        proposals[k] <- proposals[k] - 1 # the old man's proposal is rejected, so he can propose to someone else
      }
    }
  }
  
  return(matches)
}

# generate a random preference matrix with 4 men and 4 women
preferences <- replicate(4,sample(4,4,replace=F))
colnames(preferences) <- paste0("Woman ", 1:4)
rownames(preferences) <- paste0("Man ", 1:4)

# run the Gale-Shapley algorithm
matches <- gale_shapley(preferences)

# print the matches
for (j in 1:length(matches)) {
  cat(sprintf("Man %d is matched with Woman %d\n", matches[j], j))
}

# print the matches
for (j in 1:length(matches)) {
  cat(sprintf("Man %d is matched with Woman %d\n", matches[j], j))
}
