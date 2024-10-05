#
# Star List Processing Script
#
# $Id: starparse.awk,v 1.1 2004/10/28 11:01:04 Guest Exp $
#
# Author: James Lupiani (JL) <defiant@flyingtemple.com>
# Date:   17 Sep 2002
#
# Parses a star catalog and prints out a tab-separated list of stars less
# than level 6 in magnitude. Uses a random value for the output magnitude.
#
# To use the actual magnitude of the stars in the list,
# change "rand()" to "mag" below. Magnitude is scaled down a little,
# otherwise the stars were coming out too bright.
# 
# This format star catalog may be obtained from:
# http://astronomy.swin.edu.au/~pbourke/modelling/starpositions/
#
# Input:
# RA, Dec, Mag, X, Y, Z
#
# Output:
# X, Y, Z, R, G, B, A
#
# Example Usage:
# gawk -f starparse.awk star_catalog.txt > stars.dat
#
# Then edit the file and add the number of stars to the beginning.
# If you want some color differences, you can edit the file further.
#

$3 <= 6 { mag = $3 / 8.5 
print ($4, "\t", $5, "\t", $6, "\t1.0\t1.0\t1.0\t", rand()) }
