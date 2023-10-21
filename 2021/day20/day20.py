import numpy as np
from collections import defaultdict
def generate_input(name):
    l_string = open(name).read().rstrip().replace("\n\n", "\t").split("\t")
    l_string = [sub.split(":\n") for sub in l_string]
    return l_string

def generateDict(puzzleInput):
    dictionary={}
    for picture in puzzleInput:
        key=picture[0].split(" ")[1].replace(':','')
        pic=picture[1].split("\n")
        dictionary[key]=[list(sub) for sub in pic]        
    return dictionary


def generateEdgesDict(puzzleDict):
    dictionary={}
    for picture in puzzleDict:
        dictionary=getEdges(puzzleDict[picture],dictionary,picture)
            
    return dictionary
def getEdges(imageArray,dictionary,picture):
    up=imageArray[0]
    down=imageArray[-1]
    left,right= [],[]
    for subarray in imageArray:
        left.append(subarray[0])
        right.append(subarray[-1])
    dictionary[picture]={"up":up,"down":down,"left":left,"right":right}
    return dictionary

def day20p1(dictionary):
    summ=1
    corners={}
    bestmatch=defaultdict(list)
    for key in dictionary:
        count=0
        edges=[]
        for elements in dictionary[key]:
            for key2 in dictionary:
                if((not key==key2) 
                   and (dictionary[key][elements] in dictionary[key2].values() 
                        or dictionary[key][elements][::-1] in dictionary[key2].values())):
                        count+=1
                        bestmatch["".join(dictionary[key][elements])].append(key2)
                        bestmatch["".join(dictionary[key][elements])].append(key)
                        bestmatch["".join(dictionary[key][elements][::-1])].append(key2)
                        bestmatch["".join(dictionary[key][elements][::-1])].append(key)
                        edges.append(elements)
                        break
        if(count==2):
            summ*=int(key)
            corners|={key:edges}
    return summ,corners,bestmatch



def rotate90(dictionary,edge,d):
    d[edge]=np.rot90(d[edge]).tolist()
    dictionary=getEdges(d[edge],dictionary,edge)
    return dictionary,d

def vflip(dictionary,edge,d):
    d[edge]=np.flipud(d[edge]).tolist()
    dictionary=getEdges(d[edge],dictionary,edge)
    return dictionary,d

def hflip(dictionary,edge,d):
    d[edge]=np.fliplr(d[edge]).tolist()
    dictionary=getEdges(d[edge],dictionary,edge)
    return dictionary,d

def flipEdges(edge,dictionary,SearchDown,d,target):
    copydict,copyd=dictionary.copy(),d.copy()
    if(SearchDown):
        targetdirection="up"
    else:
        targetdirection="left"
    if(copydict[edge][targetdirection]==target):
        return True,copydict,d
    
    for _ in range(4):
        for _ in range(4):
            for _ in range(2):
                if(copydict[edge][targetdirection]==target):
                    return True,copydict,copyd
                copydict,d=hflip(copydict,edge,d)
            copydict,d=vflip(copydict,edge,copyd)
        copydict,copyd=rotate90(copydict,edge,copyd)   
    return False,dictionary,d






    
def createGrid(dictionary,corners,imageLenght,d,bestmatch):
    grid=[[None]*imageLenght for _ in range(imageLenght)]
    topleft=''
    print(corners)
    for key, corn in corners.items():
        if(corn==['down', 'right']):
            topleft=key
            grid[0][0]=topleft
            break    
    grid[0][0]=topleft
    for i in range(imageLenght):
        print("i="+str(i))
        print("current key=")
        for j in range(imageLenght-1):
            print("j="+str(j))
            targeRight=dictionary[grid[i][j]]["right"]
            rightKey=bestmatch["".join(targeRight)].copy()
            rightKey.remove(grid[i][j])
            rightKey=rightKey[0]
            isFind,dictionary,d=flipEdges(rightKey,dictionary,False,d,targeRight)
            grid[i][j+1]=rightKey
            print("rightkey="+str(rightKey))
            #print(np.array(grid))
            if(not isFind):
                print("FUCK YOURSELF ERIC")
                return None,None
            print('\n')
        
        if(not i==(len(grid)-1)): 
            targeDown=dictionary[grid[i][0]]["down"]
            downKey=bestmatch["".join(targeDown)].copy()
            downKey.remove(grid[i][0])
            downKey=downKey[0]
            isFind,dictionary,d=flipEdges(downKey,dictionary,True,d,targeDown)
            grid[i+1][0]=downKey
            print("downkey="+str(downKey))
            #print(np.array(grid))
            if(not isFind):
                print("FUCK YOURSELF ERIC")
                return None,None
            print("\n\n\n")
    
    return np.array(grid)
    
puzzleInput=generate_input("inputtest.txt")
#print(puzzleInput[1:])
imageLenght=int(len(puzzleInput)**(1/2))
imageLenght
d=generateDict(puzzleInput)
"1579"
"2311"
print('\n')
edges=generateEdgesDict(d)
summ,corners,bestmatch=day20p1(edges)
print(summ)
bestmatch = {k:list(dict.fromkeys(v)) for k, v in bestmatch.items() if len(v) >= 2}
print("\n")

#sum([elem.count("#") for elem in it for key,it in d.items()])
grid=createGrid(edges,corners,int(imageLenght),d,bestmatch)
print(grid)
image=[[None]*imageLenght for _ in range(imageLenght)]
for i,imagerow in enumerate(grid):
    for j,imageid in enumerate(imagerow):
        image[i][j]= np.array([''.join(a) for a in zip(*d[grid[i][j]])])
    
print(np.array(image))
#im=[]
#for g in grid:
#np.array(image).shape