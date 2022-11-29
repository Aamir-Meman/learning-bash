BEGIN { print "** Acme Enterprises **" }
BEGIN { print "Eastern Regions\n" } 
/East/ { print $5, $4 }
END { print "Eastern Region Monthly Report" }
