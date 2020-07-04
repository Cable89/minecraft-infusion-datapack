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
    
    def get_line_east(self):
        return ' '.join(self.lineBeginning + self.convert_coordinate_to_string(self.coordinates_east) + self.lineEnd)
    
    def get_line_west(self):
        return ' '.join(self.lineBeginning + self.convert_coordinate_to_string(self.coordinates_west) + self.lineEnd)
    
    def get_line_north(self):
        return ' '.join(self.lineBeginning + self.convert_coordinate_to_string(self.coordinates_north) + self.lineEnd)
    
    def get_line_south(self):
        return ' '.join(self.lineBeginning + self.convert_coordinate_to_string(self.coordinates_south) + self.lineEnd)
    
    def convert_coordinate_to_string(self, coordinates):
        coordinates_string = []
        for element in coordinates:
            if element == 0:
                element = ''
            coordinates_string.append('~' + str(element))
        return coordinates_string
    
    def convert_all(self):
        if self.fromDirection == "north":
            self.coordinates_north = self.coordinates
            self.convert_north_to_south()
            self.convert_south_to_east()
            self.convert_east_to_west()
        elif self.fromDirection == "south":
            self.coordinates_south = self.coordinates
            self.convert_south_to_north()
            self.convert_south_to_east()
            seld.convert_east_to_west()
        elif self.fromDirection == "east":
            self.coordinates_east = self.coordinates
            self.convert_east_to_west()
            self.convert_east_to_south()
            self.convert_south_to_north()
        elif self.fromDirection == "west":
            self.coordinates_west = self.coordinates
            self.convert_west_to_east()
            self.convert_east_to_south()
            self.convert_south_to_north()
        else:
            logging.error("Invalid fromDirection")
    '''
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
    '''
    def convert_east_to_west(self):
        # To convert between east and west, X coordinate changes sign.
        self.convert_change_sign(self.coordinates_east, self.coordinates_west, 0)
    
    def convert_west_to_east(self):
        # To convert between east and west, X coordinate changes sign.
        self.convert_change_sign(self.coordinates_west, self.coordinates_east, 0)
    
    def convert_north_to_south(self):
        # To convert between north and south, Z coordinate changes sign.
        self.convert_change_sign(self.coordinates_north, self.coordinates_south, 1)
    
    def convert_south_to_north(self):
        # To convert between north and south, Z coordinate changes sign.
        self.convert_change_sign(self.coordinates_south, self.coordinates_north, 1)
    
    #change sign of coordinate given by numeral x=0, y=2, z=1
    def convert_change_sign(self, fromCoordinates, toCoordinates, coordinate):
        if fromCoordinates == []:
            logging.error("No coordinates to convert from")
            #exit(1)
        else:
            i = coordinate
            for coordinate in fromCoordinates:
                if i%3 == 0:
                    toCoordinates.append(coordinate * (-1))
                else:
                    toCoordinates.append(coordinate)
                i = i + 1
    
    def convert_east_to_south(self):
        # To convert between east and south, X and Z coordinates changes place.
        if self.coordinates_east == []:
            logging.error("No coordinates to convert from")
            #exit(1)
        else:
            i = 0
            self.coordinates_south = self.coordinates_east.copy()
            for coordinate in self.coordinates_east:
                if i%3 == 0:
                    self.coordinates_south[i+2] = coordinate
                elif (i+1)%3 == 0:
                    self.coordinates_south[i-2] = coordinate
                else:
                    pass
                    #self.coordinates_south[i] = coordinate
                i = i + 1
    
    def convert_south_to_east(self):
        # To convert between east and south, X and Z coordinates changes place.
        if self.coordinates_south == []:
            logging.error("No coordinates to convert from")
            #exit(1)
        else:
            i = 0
            self.coordinates_east = self.coordinates_south.copy()
            for coordinate in self.coordinates_south:
                if i%3 == 0:
                    self.coordinates_east[i+2] = coordinate
                elif (i+1)%3 == 0:
                    self.coordinates_east[i-2] = coordinate
                else:
                    pass
                    #self.coordinates_east[i] = coordinate
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

outfiles = []
for direction in toDirection:
    outfiles.append(args.file.replace(fromDirection, direction))

logging.info("Outfiles: {}".format(outfiles))

with open(args.file) as inFile, open(outfiles[0], 'w') as outFile:
    line = inFile.readline()
    outFile.write("#This file was automatically generated from {} \n".format(args.file))
    while line != '':
        line = line.strip('\n')
        logging.debug(line)
        if line != '':
            commandline = MinecraftCommand(line, fromDirection)
            logging.debug(commandline.get_line_north())
            logging.debug(commandline.get_line_south())
            logging.debug(commandline.get_line_east())
            logging.debug(commandline.get_line_west())
            #logging.debug("lineBeginning = {}".format(commandline.lineBeginning))
            logging.debug("coordinates = {}".format(commandline.coordinates))
            #logging.debug("lineEnd = {}".format(commandline.lineEnd))
            logging.debug("coordinates_north = {}".format(commandline.coordinates_north))
            logging.debug("coordinates_south = {}".format(commandline.coordinates_south))
            logging.debug("coordinates_east = {}".format(commandline.coordinates_east))
            logging.debug("coordinates_west = {}".format(commandline.coordinates_west))
            if toDirection[0] == "west":
                outFile.write(commandline.get_line_west() + '\n')
            elif toDirection[0] == "east":
                outFile.write(commandline.get_line_east() + '\n')
            elif toDirection[0] == "north":
                outFile.write(commandline.get_line_north() + '\n')
            elif toDirection[0] == "south":
                outFile.write(commandline.get_line_south() + '\n')
        else:
            outFile.write('\n')
        line = inFile.readline()
    inFile.close()
    outFile.close()

