#!/bin/python

import argparse
import logging



class MinecraftCommand:
    def __init__(self, line, fromDirection):
        self.splitline = line.split(' ')
        self.fromDirection = fromDirection
        self.lineBeginning = []
        self.lineEnd = []
        self.coordinates = []
        numCoordinates = None
        self.coordinates_north = []
        self.coordinates_south = []
        self.coordinates_east = []
        self.coordinates_west = []
        
        for element in self.splitline:
            if '~' not in element:
                self.lineBeginning.append(element)
            else:
                break
        self.lineEnd = self.splitline.copy()
        self.lineEnd = self.lineEnd[len(self.lineBeginning):]
        for element in self.lineEnd:
            if '~' in element:
                self.coordinates.append(element.strip('~'))
                if self.coordinates[-1] == '':
                    self.coordinates[-1] = '0'
                self.coordinates[-1] = int(self.coordinates[-1])
        self.numCoordinates = len(self.coordinates)
        self.lineEnd = self.lineEnd[self.numCoordinates:]
        
        self.convert_all()
        
    def convert_all(self):
        if self.fromDirection == "north":
            self.coordinates_north = self.coordinates
        elif self.fromDirection == "south":
            self.coordinates_south = self.coordinates
        elif self.fromDirection == "east":
            self.coordinates_east = self.coordinates
            self.convert_east_to_west()
            self.convert_east_to_south()
        elif self.fromDirection == "west":
            self.coordinates_west = self.coordinates
        else:
            logging.error("Invalid fromDirection")
        
    def convert_east_to_west(self):
        # To convert from east to west, X coordinate changes sign.
        if self.coordinates_east == []:
            logging.error("No coordinates to convert from")
        else:
            i = 0
            for coordinate in self.coordinates_east:
                if i%3 == 0:
                    self.coordinates_west.append(coordinate * (-1))
                else:
                    self.coordinates_west.append(coordinate)
                i = i + 1
    
    def convert_east_to_south(self):
        # To convert from east to west, X and Z coordinates changes place.
        if self.coordinates_east == []:
            logging.error("No coordinates to convert from")
        else:
            i = 0
            self.coordinates_south = self.coordinates_east.copy()
            for coordinate in self.coordinates_east:
                if i%3 == 0:
                    self.coordinates_south[i+2] = coordinate
                elif (i+2)%3 == 0:
                    self.coordinates_south[i-1] = coordinate
                else:
                    pass
                    #self.coordinates_south[i] = coordinate
                i = i + 1

validDirections = ["north", "south", "east", "west"]

parser = argparse.ArgumentParser(description="Changes direction of minecraft functions")
parser.add_argument("file", help="The input file to change direction from, must contain a direction in the name")
parser.add_argument("-d", "--direction", help="The direction to change to, must be a valid compass direction; north, south, east, west. If not supplied it will convert to all other directions")
parser.add_argument("-v", "--verbose", action="store_true", help="Verbose")
args = parser.parse_args()


if args.verbose:
    logging.basicConfig(level=logging.DEBUG)
else:
    logging.basicConfig(level=logging.INFO)

fromDirection = None
numDirections = 0
for validDirection in validDirections:
    if validDirection in args.file:
        fromDirection = validDirection
        logging.info("FromDirection = {}".format(fromDirection))
        numDirections = numDirections + 1

if numDirections > 1:
    logging.error("More than one direction detected in filename, not supported")
    exit(1)

toDirection = []
if args.direction:
    toDirection.append(args.direction)
else:
    toDirection = list(filter(lambda a: a != fromDirection, validDirections))

logging.info("ToDirection = {}".format(toDirection))

with open(args.file) as inFile:
    line = inFile.readline()
    while line != '':
        line = line.strip('\n')
        logging.debug(line)
        commandline = MinecraftCommand(line, fromDirection)
        logging.debug("lineBeginning = {}".format(commandline.lineBeginning))
        logging.debug("coordinates = {}".format(commandline.coordinates))
        logging.debug("lineEnd = {}".format(commandline.lineEnd))
        logging.debug("coordinates_north = {}".format(commandline.coordinates_north))
        logging.debug("coordinates_south = {}".format(commandline.coordinates_south))
        logging.debug("coordinates_east = {}".format(commandline.coordinates_east))
        logging.debug("coordinates_west = {}".format(commandline.coordinates_west))
        line = inFile.readline()

