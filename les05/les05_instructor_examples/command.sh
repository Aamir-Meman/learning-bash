#!/bin/bash 
grep 'bash$' /etc/passwd
grep '/ksh$' /etc/passwd
grep -n 'root' /etc/group # this will pattern out the root with number line
grep -v 'root' /etc/group # this will pattern out the lines without root. [ inverted]
rpm -qa | grep -i 'java' #  Linux users grep the java installation
grep -v '#' /etc/apache2/httpd.conf # this will pattern out the lines without # in the httpd.conf file 
grep -v '#' /etc/openldap/ldap.conf    
grep '^/dev' /etc/vfstab # this will pattern out the disk start with /dev from the /vfstab file.
