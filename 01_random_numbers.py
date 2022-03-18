import random

def generator_ID():
    ID_generated=[]
    ID= list(range(10000, 1000000))
    for i in random.sample(ID, k=5000):
        ID_generated.append(i)
    return ID_generated