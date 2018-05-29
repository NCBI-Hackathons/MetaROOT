# -*- coding: utf-8 -*-
"""
Created on Wed Apr 18 10:22:26 2018

@author: leblanckh
"""

import pandas as pd
import numpy as np
import os
import sys
MetaMapFile = "/Users/leblanckh/gitProjects/metametamap/matching_template.xlsx"
BioSampleDataFile = "/Users/leblanckh/gitProjects/metametamap/biosample_w_disease.xlsx"


BSData = pd.read_excel(BioSampleDataFile)
MMData = pd.read_excel(MetaMapFile)
AttributeName = BSData.loc[:,'AttributeName']
AttributeEntry = BSData.loc[:,'AttributeEntry']
EnteredTerm = MMData.loc[:, 'EnteredTerm']
PreferredTerm = MMData.loc[:,'PreferredTerm']
if AttributeName == 'disease':
    Diseases = AttributeEntry
    print (Diseases)