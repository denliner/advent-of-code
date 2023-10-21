
cardkey=9033205
doorkey=9281649
def secretLoop(n,modulo,subjectnumber,loopLength):
    for j in range(loopLength):
        n=n*subjectnumber
        n=n%modulo
    return n

def getloopSize(target,modulo,subjectnumber):
    n,i=1,0
    while(not n==target):
        i+=1
        n=secretLoop(n,modulo,subjectnumber,1)
    return i


def main():
    cardkeytest=5764801
    doorkeytest=17807724
    subjectnumber=7
    modulo=20201227
    #cardkey=cardkeytest
    #doorkey=doorkeytest
    cardloop=getloopSize(cardkey,modulo,subjectnumber)
    doorloop=getloopSize(doorkey,modulo,subjectnumber)
    print(cardloop,doorloop)
    secretLoop(1,modulo,doorkey,cardloop),secretLoop(1,modulo,cardkey,doorloop)

if __name__ == "__main__":
    main()