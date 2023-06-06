#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
@author: morten
"""
import numpy as np
import re #Gives acces to regular expressions
import copy
import math

def ReadGeneralData(filename):
    file = open(filename, "r")
    return_list = []
    for line in file:
        columns = line.split()
        column_list = []
        for element in columns:
            column_list.append(float(element))
        return_list.append(column_list)
    return_matrix = np.array(return_list)
    return return_matrix