library(tximport)
library(readr)

dir <- ("Assembly")
samples <- read.table(file.path(dir, "path"), header = F)
files <- file.path(dir,samples$V1,"t_data.ctab")

tmp <- read_tsv(files[1])
tx2gene <- tmp[, c("t_name", "gene_name")]
txi <- tximport(files, type = "stringtie", tx2gene = tx2gene)
write.table(txi,file="tximport_abundances.txt",sep="\t")
