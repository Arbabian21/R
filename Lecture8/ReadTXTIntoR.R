###########################################
#
# Read in data... TXT
#
###########################################

# Read TXT... chlorine.txt
chlorine <- read.table(file.choose(), 
                       header = TRUE,
                       sep = "\t" # Seperator for tab
                       )
head(chlorine)

# Path Approach
chlorine2 <- read.table("./chlorine.txt",
                        header = TRUE,
                        sep = "\t"
                        )
head(chlorine2)