####
## This is an explaination about the purpose of this script
####

library(stringr)

ear_length_dat <- read.csv("data/houseelf-earlength-dna-data_1.csv", header = T)
ear_length_dat

get_gc_content <- function(sequence){
  # Calculate the GC content for a sequence of base-pairs
  sequence <- str_to_lower(sequence)
  Gs <- str_count(sequence, "g")
  Cs <- str_count(sequence, "c")
  gc_content <- (Gs + Cs) / str_length(sequence) * 100
  return(gc_content)
  
}

get_ear_length <- function(seq){
   #Calculate the GC-content for one or more sequences
   ear_lengths <- ifelse(seq > 10, "large", "small")
   return(ear_lengths)
}

get_gc_content(ear_length_dat$dnaseq)
