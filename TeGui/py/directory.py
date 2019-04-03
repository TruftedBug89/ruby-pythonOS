
#This class manages the directory data
class directory(object):
	abc = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
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
		if len(newfolder) > 8:
			outputwrite = open("./output/output.txt","w+")
			outputwrite.write("SyntaxError: Name is too long, max. 8 characters !")
			outputwrite.close()
			return
		for e in newfolder:
			if e not in directory.abc:
				outputwrite = open("./output/output.txt","w+")
				outputwrite.write("SyntaxError: Use only alphabet letters")
				outputwrite.close()
				return
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
			try:
				indnext = self.data.index(self.main[self.main.index(folder)+1])
			except IndexError:

				indnext = len(self.data)-1
			final = self.data[inddata:indnext]
			if final[len(final)-1] == ">":
				final += "Empty Folder !!"
			outputwrite.write(final)
		else:
			outputwrite.write("Folder doesn't exist")
		outputwrite.close()
	def rn(self,oldname,newname):
		if len(newname) > 8:
			outputwrite = open("./output/output.txt","w+")
			outputwrite.write("SyntaxError: Rename is too long, max. 8 characters !")
			outputwrite.close()
			return
		outputwrite = open("./output/output.txt","w+")
		original = oldname
		if original in self.main:
			datawrite = open("./output/directorydata.txt","w+")
			outputwrite.write("Folder "+oldname+" succefully changed for "+newname)
			while len(oldname) < 8:
				oldname += "-"
			oldname += ">"
			while len(newname) < 8:
				newname += "-"
			newname += ">"
			self.data = self.data.replace(oldname,newname)
			datawrite.write(self.data)
			datawrite.close()
			outputwrite.close()
			return
		elif original not in self.main:
			outputwrite.write("Error: No folder named :"+oldname)
			datawrite.close()
			outputwrite.close()
			return
	def rm(self,foldername):
		datawrite = open("./output/directorydata.txt","w+")
		outputwrite = open("./output/output.txt","w+")
		origcopy = foldername
		if foldername in self.main:
			while len(foldername) < 8:
				foldername += "-"
			foldername += ">"
			self.data = self.data.replace(foldername,"")
			outputwrite.write("Folder "+origcopy+" deleted succesfully !")
			datawrite.write(self.data)
		elif foldername in self.data:
			###
		datawrite.close()
		outputwrite.close()




functions = ["rn","ls","mkdir","rm"]

inp = open("./output/input.txt","r+")
inpread = str(inp.read())
inp.close()
pos = 0
for e in inpread:
	if e == " ":
		function = inpread[0:pos]
		param = inpread[pos:]
		break
	pos += 1
if function not in functions:
	pass
else:
	exe = directory()
	eval("exe."+function+"("+param+")")
