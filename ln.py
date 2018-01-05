import os
import sys

# """
path	= sys.argv[1] #'_etc_alternatives'
with open(path) as f:
	os.system("mkdir -p "+folder)
	for line_f in f:
		line = line_f.rstrip('\n')
		split = line.split(' -> ')
		os.system("ln -s "+split[1]+" "+split[0])
		print "ln -s "+split[1]+" "+split[0]

# """
