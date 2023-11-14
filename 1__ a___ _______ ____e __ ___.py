'''
author: @arthur
'''

from Universe import *
from itertools import permutations

def validate(name: str) -> bool:
    for i in Alphabets:
        if i * 3 in name:
            return False
    return True

def print_name(name: str):
    print(name)
    if name == God.name:
        for star in World.stars:
            star.turn_off()
        World.terminate()

for name in permutations(Alphabets, r=9):
    name = ''.join(name)
    if validate(name):
        print_name(name)