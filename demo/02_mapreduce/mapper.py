#!/usr/bin/env python

import sys

levels = ['TRACE', 'DEBUG', 'INFO', 
          'WARN', 'ERROR', 'FATAL']

for line in sys.stdin:
   fields = line.split()

   level = fields[3].upper()

   if level in levels:
      print "%s\t1" % level
