OrthoGroupBinarizer <- function(OrthoGroups) {
        a <- OrthoGroups
        for (i in 2:length(a)) {
                for (j in 1:length(a$X)) {
                        if(a[j,i] == "") {
                                a[j,i] <- 0
                        } else {
                                a[j,i] <- 1
                        }
                }
        }
        write.csv(x=a, file="BinaryOG.csv")
}
