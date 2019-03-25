class directory(object):
	
	
	
	
	def mkdir(self,foldername):
		#foldername = self.name
		#self.subdirectory = subdirectory
		dataopen = open("directorydata.txt","w+")
		dataread = open("directorydata.txt","rb")
		olddata = dataread.read()
		dataopen.write(olddata+"\n"+foldername)
	def ls(self,folder):
		self.subdirectory += "
		dataopen = open("directorydata.txt","rb")
		outputopen = open("output.txt","w+")
		dataread = data.readlines()
		for e in dataread:
			if folder in e:
				print(e[len(e):])
				outputopen.write(e[len(e):])
		dataopen.close()
		outputopen.close()
	def rn(self,folder):
		
		
def ls(folder):
  
  
  return folder 

  
