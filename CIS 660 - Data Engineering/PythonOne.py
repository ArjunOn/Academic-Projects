import time

message = "Hello"
print(message + " Arjun!")

"""input and program control example"""
x = input("enter your name: ")

"""if x == 'Arjun':
	print ('Welcome Arjun!')
else:
	print ('Welcome!')"""

while x != 'Arjun':
	x = input("enter your name again: ")
	if x == 'Arjun':
		print ('Welcome Arjun!')

y = int(input("enter an int value: "))
z = float(input("enter a float value: "))
for i in range(0,y):
	print (i,' ',z)

"""functions"""
def getName():
	myname = input("enter your name a third time (using quotes): ")
	return myname
name = getName()
print('Welcome '+name)

"""fx2"""
def printOneGreater(x):
	print (x+1)
printOneGreater(y)


"""list example"""
months =['jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec']
for i in range(1,13):
	print (i,' ',months[i-1])
	
"""dictionary example: 1-1 map"""
months2 ={'jan':'January','feb':'Febuary','mar':'March','apr':'April','may':'May','jun':'June','jul':'July','aug':'August','sep':'September','oct':'October','nov':'November','dec':'December'}
"""Fix the misspelling, missing r in February"""
del months2['feb']
months2['feb']='February'
for i in range(1,13):
	print (i,' ', months2[months[i-1]])

"""File input into a list"""
filename = "data.txt"
with open(filename) as fin:
	content = fin.readlines()
	print(content)

#File output from the list
fout = open("data2.txt","w")
print("lines = " + str(len(content)))
for i in range(0,len(content)):
	print(str(float(content[i])*9/5+32))
	fout.write(str(float(content[i])*9/5+32) + "\n")
	# time.sleep(5)
fout.close()


