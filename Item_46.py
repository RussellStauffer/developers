# 	Python Item 46.
#
#	Use Python 2.7
#
# 	Demonstration of the Python Range function.
#
#	Software Developer: Russell Stauffer
#	Date: 01 May 2017
#
#======================================================================
#	Part One
#	Print items 0,1,2,3
#
for i in range(0,4):
	print i
#======================================================================
#
#	Part Two
#	Print a countdown (3,2,1,0)
#
print ("\n")
k = 0
firstSet = []

for j in range(3,-1,-1):
	firstSet.append(j)
	k = k + 1

print firstSet
#	
#======================================================================
#
#	Part Three
#	Print a countdown by two from 8.
#
print ("\n")
l=0
secondSet = []
for k in range(8,0,-2):
       secondSet.append(k)

print secondSet
	
