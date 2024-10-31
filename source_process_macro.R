## Download and source the PROCESS macro by Andrew F. Hayes
temp <- tempfile()
process_macro_dl <- "https://www.afhayes.com/public/processv43.zip"
download.file(process_macro_dl,temp)
files <- unzip(temp, list = TRUE)
fname <- files$Name[endsWith(files$Name, "process.R")]
source(unz(temp, fname))
unlink(temp)
rm(files)
rm(fname)
rm(process_macro_dl)
rm(temp)
