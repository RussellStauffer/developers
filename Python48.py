#
#	Sort Routine
#	Author: Russell Stauffer
#	Date: 02 May 2017
#       Python Sort Routine, modified bubble sort
#       Python Section 48
#
#		Written in Python version 3.6.1
#
#	first data list: [67, 45, 2, 13, 1, 998]
#
#	Second data list: [89, 23, 33, 45, 10, 12, 45, 45, 45]
#
#	Objective: Sort each list
#
#====================================================================== 
#
#=====Processing Module ================================================

def mySort(firstList):

        i = 0
        j = 1
        b = len(firstList)
        
        while (j < b):
        
                if (firstList[i] > firstList[j]):
                        temp = firstList[i]
                        firstList[i] = firstList[j]
                        firstList[j] = temp
                        i = 0
                        j = 1
                
                else:
                         i = i + 1
                         j = j + 1

        print ("Final Output,: ",firstList)
#
#===== End Processing Module ===========================================        
#
#======Main Routine begins here with data strings ======================

firstList = [67, 45,2,13,1,99]
secondList = [89, 23, 33, 45, 10, 12, 45, 45, 45]

mySort(firstList)
mySort(secondList)

#===== End Main Routine, END PROGRAM ===================================
