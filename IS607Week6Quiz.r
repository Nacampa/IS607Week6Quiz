# IS607 Week 6 Quiz
# Neil Acampa
#


install.packages("XML")
require(XML)
require(stringr)

u <- "http://www.jaredlander.com/2012/02/another-kind-of-super-bowl-pool/"
(bowlpool <- readHTMLTable(u, which = 1, header = FALSE, stringsAsFactors = FALSE))


#1) What type of data structure is bowlpool?

# bowlpool is a data.frame

is.data.frame(bowlpool)



#2) Suppose instead you call readHTMLTable() with just the url argument, against the provided
url below. What is the type of variable returned in hvalues?

u <- "http://www.w3schools.com/html/html_tables.asp"
hvalues <- readHTMLTable(u)

# havalues is a vector

is.vector(hvalues)

#3) Write R code that shows how many HTML tables are represented in hvalues


l <- length(hvalues)
cat("There are ", l , " Tabels in URL ", u)

#h = htmlParse(hvalues)
#p = getNodeSet(h, "//pre")

#for (i in 1:l) {
#temp <- as.character(hvalues[i])
#found <- str_detect(temp, "table")
#print(found)
#}

#4) Modify the readHTLMTable code so that just the table with Number, FirstName
#   Lastname, # and points is returned into a dataframe

(hvaluedf <- readHTMLTable(u, which = 1, header = TRUE, stringsAsFactors = FALSE))

#5) Modify the returned data frame so only the last name and Point coulmns are shown

dfnames   <- names(hvaluedf)
colnames(hvaluedf) <- dfnames

(data.frame(hvaluedf[,3], hvaluedf[,4]))

#6) Identify another page on the web with HTML table values"


u2 <- "http://www.bankrate.com/rates/economic-indicators/retail-sales.aspx"




#7) How many HTML tables does that page contain?

t <- readHTMLTable(u2)
l <- length(t)
cat("There are", l , "Tabels in URL", u)



#8) Identify your browser and describe how to view HTML page source in your browser

#    Browser: IE11 
#    To view HTML page source - right click on the page and click view source and the html source code with show
