#This class manages the directory data
class directory(object):#
	#To start with the class its init function puts into self.data all the data from the txt
	#Then puts on self.main all the folder names
	def __init__(self):
		dataread = open("./output/directorydata.txt","r+")
		self.data = str(dataread.read())
		dataread.close()
		self.main = []
		count = 0
		for e in self.data:
			if e == ">":
				self.main.append(self.data[count-8:count].replace("-",""))

			count += 1
#This function creates a folder givin as parameter the folder name as string
#Gives error if two folders are with the same name
	def mkdir(self,newfolder):
		self.data = self.data.replace("\'","")
		while len(newfolder) < 8:
			newfolder += "-"
		newfolder += ">"
		datawrite = open("./output/directorydata.txt","w+")
		outputwrite = open("./output/output.txt","w+")
		if newfolder in self.data:
			outputwrite.write("SyntaxError: Cant repeat folder name")
			datawrite.write(self.data)
		else:
			datawrite.write(self.data+newfolder)
			outputwrite.write("Folder "+(newfolder.replace("-","")).replace(">","")+" created correctly	")
		datawrite.close()
		outputwrite.close()
#This function makes a ls on any folders if folder parameter is None or does a ls on
#Specified folder if empty prints empty
	def ls(self,folder):
		outputwrite = open("./output/output.txt","w+")
		if folder == None:
			outputwrite.write(str(self.main).replace("\'",""))
		elif folder in self.main:
			inddata = self.data.index(folder)
			indmain = self.main.index(folder)
			indnext = self.data.index(self.main[indmain+1])
			finalls = self.data[inddata:indnext]
			print(finalls[len(finalls)-1])
			if finalls[len(finalls)-1] == ">":
				finalls += "Empty Folder !!"#Arreglar
			outputwrite.write(finalls)
		else:
			outputwrite.write("Folder doesn't exist")
		outputwrite.close()
	# def rn(self,folder,newname):
	# 	nameind = self.data.index(folder)
	# 	self.data[nameind:nameind+8] = newname
	# 	print(data)

inp = open("./output/input.txt","r+")
inpread = str(inp.read())
inp.close()
pos = 0
for e in inpread:
	if e == " ":
		function = inpread[0:pos]
		param = inpread[pos:]
	pos += 1
exe = directory()
eval("exe."+function+"("+param+")")
