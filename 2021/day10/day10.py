from pprint import pprint

n=0

def generate_list(name):
    return list(map(int,open(name).read().splitlines()))

def getDifference(l_joins):
    diff=[0,0,1]
    sorted_joins=sorted(l_joins)
    verticles=set([0])
    current_join=0
    for i in range(len(l_joins)):
        #print(current_join)
        #print(sorted_joins[i])
        difference=sorted_joins[i]-current_join
        #print(difference)
        #print("\n\n")
        if((difference)<=3):
            diff[difference-1]+=1
            current_join=sorted_joins[i]
            verticles.add(current_join)
        else:
            break
    return current_join,diff,verticles

def create_grah(l_adapters):
    graph=dict()
    l_adapters_list=list(l_adapters)
    length=len(l_adapters)
    i=0
    for current_verticle in l_adapters:
        edges=set()
        for j in range(i+1,length):
            v=l_adapters_list[j]
            if((v-current_verticle)<=3 and (v-current_verticle)>0):
                edges.add(v)
            else:
                break
        graph[current_verticle]={"edges":edges}
        i+=1
    return graph
                
def getPath(u,v,graph,memory):
    n_path=0
    if u in memory:
        return memory[u]
    for verticle in graph[u]["edges"]:
        if verticle==v:
            n_path+=1
        else:
            n_path+=getPath(verticle,v,graph,memory)
    memory[u]=n_path
    return n_path

import cProfile
import sys
print("max rec=")
print(sys.getrecursionlimit()) #3000
sys.setrecursionlimit(1000000000)
print(sys.getrecursionlimit()) #3000

print("\n\n")
cProfile.run('d=getDifference(generate_list("5yuewa.txt"))')
print(d[1][0]*d[1][2])
graph=create_grah(d[2])
memory={}
nbPath=getPath(0,d[0],graph,memory)
print(nbPath)
print("coucou")