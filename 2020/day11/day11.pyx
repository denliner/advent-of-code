import numpy as np
direction=[[1,0],[-1,0],[0,-1],[0,1],[1,1],[1,-1],[-1,1],[-1,-1]]

def generate_seatList(name):
    seat_list=open(name).read().splitlines()
    return np.array([np.array(list(sub)) for sub in seat_list])

def getNeighbours(index,data,target,direction,length):
    count=0
    for index2 in direction:
        position=[index[0]+index2[0],index[1]+index2[1]]
        if  (0<=(position[1])<length[1] and 0<=(position[0])<length[0]):
            if data[position[0]][position[1]]==target:
                count+=1
    return count


def day11p1(seat_list):
    global direction
    copy=seat_list.copy()
    length=[len(seat_list),len(seat_list[0])]
    condition=True
    while(condition):
        copy2=copy.copy()
        for i in range(length[0]):
            for j in range(length[1]):
                seat=copy[i][j]
                if seat=='L' and getNeighbours([i,j],copy,'#',direction,length)==0:
                    copy2[i][j]='#'
                elif seat=='#' and getNeighbours([i,j],copy,'#',direction,length)>=4:
                    copy2[i][j]='L'
        if (copy2==copy).all():
            condition=False
        copy=copy2
        #print(copy)
    
    return copy

def findSeat(index,data,direction,length,target):
    i=1
    condition=True
    while (condition):
        position=[index[0]+direction[0]*i,index[1]+direction[1]*i]
        if(not(0<=position[1]<length[1] and 0<=position[0]<length[0])):
            condition=False
        else:
            element=data[position[0]][position[1]]
            if not element=='.':
                if element==target:
                    return 1
                else:
                    return 0
            i+=1
    return 0

def getNonDotNeighbours(index,data,target,length,direction):
    count=0
    for dirr in direction:
        count+=findSeat(index,data,dirr,length,target)
    return count        
    
def day11p2(seat_list):
    global direction
    copy=seat_list.copy()
    length=[len(seat_list),len(seat_list[0])]
    condition=True
    while(condition):
        copy2=copy.copy()
        for i in range(length[0]):
            for j in range(length[1]):
                seat=copy[i][j]
                if seat=='L' and getNonDotNeighbours([i,j],copy,'#',length,direction)==0:
                    copy2[i][j]='#'
                elif seat=='#' and getNonDotNeighbours([i,j],copy,'#',length,direction)>=5:
                    copy2[i][j]='L'
        if (copy2==copy).all():
            condition=False
        copy=copy2    
    return copy


seat_list=generate_seatList("input.txt")
part1=day11p1(seat_list)
print("Part 1")
print(np.count_nonzero(part1 == '#'))
part2=day11p2(seat_list)
print("Part 2")
print(np.count_nonzero(part2 == '#'))