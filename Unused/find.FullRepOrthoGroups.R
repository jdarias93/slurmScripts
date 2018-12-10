# Written by Joshua Arias
# Updated 11/24/2018
# Correspondence: josh.d.arias@gmail.com

# find.FullRepOrthoGroups
# This code takes an Orthogroups.csv file generated from OrthoFinder v.2
# and outputs a list of Orthogroups enjoying representation from ALL species 
# in a set. To do this, it binarizes the Orthogroups.csv file by marking all
# species with at least ONE Orthologue in an Orthogroup as a 1 and those without
# as a 0. 

# BEFORE YOU DO ANYTHING, you must ensure that your Orthogroups file is .csv,
# meaning every column is explicitly delimited by a comma. This isn't immediately
# done in the OF output file (oddly enough) so you have to do it manually.
# It is, however a quick fix. Figure it out ;)

# ENSURE that your OF Gene_Tree and Alignment folders are INSIDE YOUR WORKING DIRECTORY!

find.FullRepOrthoGroups <- function(OrthoGroups) {
        a <- OrthoGroups
        for (i in 2:length(a)) {                # For every column...
                for (j in 1:length(a$X)) {      # in every row...
                        if(a[j,i] == "") {      # check if empty.
                                a[j,i] <- 0     # If empty, set to 0.
                        } else {
                                a[j,i] <- 1     # Else, set to 1.
                        }
                }
        }
        write.csv(x=a, file="BinaryOG.csv")     # Write the binarized file.
        b <- read.csv("BinaryOG.csv")           # Read it back to R
        b[1] <- NULL                            # Quick fix to delete extra index
        OG <- b[,1]                             # Generate initial list of OrthoGroups
        z <- NULL                               # Initialize logical vector
        for (i in 1:length(b$X)) {              # Create logical vector
                sumOG <- sum(b[i,2:length(b)])          # For every species...
                if (sumOG == length(names(b))-1) {      # check for full representation
                        z[i] <- TRUE            # if full, set to 1.
                } else {
                        z[i] <- FALSE           # else set to 0.
                }
        }
        write.csv(x=OG[as.logical(z)], file="FullRepOG.csv") 
        # Write list of full rep OGs
        c <- read.csv("FullRepOG.csv")          # Read "FullRepOG.csv"
        c <- c[,2]                              # Create vector of Full-rep OGs
        dir.create(paste(getwd(),"/FullOGs",sep=""))    # Create folder to place .fa and trees
        for (i in 1:length(c)) {
                fromdir <- paste(getwd(),"/Gene_Trees/",c[i], "_tree.txt",sep="") 
                # Directory Creation for Trees
                todir <- paste(getwd(),"/FullOGs/",c[i],"_tree.txt",sep="")
                # Directory Creation for Trees
                file.rename(from=fromdir, to=todir)     # Move pertinent files to new directory
                # Next three commands do the same but for alignments
                fromdir <- paste(getwd(),"/Alignments/",c[i], ".fa",sep="")
                todir <- paste(getwd(),"/FullOGs/",c[i],".fa",sep="")
                file.rename(from=fromdir, to=todir)
        }
}
