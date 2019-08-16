#my new version

#read input data - tab-separated so sep="\t"
stat1_interactions_new <- read.csv("~/Desktop/r/stat1_interactions.tsv",sep="\t")

#extract the first two and the last column
statsmallnew <- stat1_interactions_new[,c(1,2,15)]

#extract the interactions with more than 0.5 score
statsmallnewfiltered <- subset(statsmallnew, combined_score >= 0.5)

#write the filtered interactions in to a file; keep tab-separated
#no quotes around data.  row.names - no number for each row
#default save in home directory
write.table(statsmallnewfiltered, "statsmallfiltered.txt", sep = "\t", quote = FALSE, row.names = FALSE)

#print the score distribution graph
#png line creates empty picture
#dev.off() closes the "plot device"
png('statsmallnew.png')
plot(statsmallnew$combined_score)
dev.off()

message("Script ran successfully, all outputs are in the working directory")


