from math import *

sizes = range(10)

class MinecraftFunction:
    def __init__(self,filename):
        self.filename = filename
        self.file = open(filename+'.mcfunction','w')

    def setBlock(self,x,y,z,block='stone',relative=True):
        if relative:
            self.file.write('setblock ~'+str(x)+' ~'+str(y)+' ~'+str(z)+' '+str(block)+'\n')
        else:
            self.file.write('setblock '+str(x)+' '+str(y)+' '+str(z)+' '+str(block)+'\n')

    def addCommand(self,command):
        self.file.write(str(command)+'\n')

    def close(self):
        self.file.close()

class MinecraftCircleFunction (MinecraftFunction):
    def __init__(self,filename,radius):
        super().__init__(filename)

        for x in range(-radius,radius+1):
            for y in range(-radius,radius+1):
                if ceil(hypot(x,y)) == radius:
                    self.addCommand('clone ~ ~-1 ~ ~ ~-1 ~ ~'+str(x)+' ~ ~'+str(y))
        self.addCommand('tellraw @p ["",{"text":"Circle of radius '+str(radius)+' made","color":"gold","bold":true}]')


for r in range(200,250):
    c = MinecraftCircleFunction(str(r),r)
    c.close()
