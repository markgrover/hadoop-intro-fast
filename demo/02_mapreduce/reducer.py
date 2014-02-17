#!/usr/bin/env python

import sys

previous_key = None
sum = 0

for line in sys.stdin:
   key, value = line.split()

   if key == previous_key:
      sum = sum + int(value)
   else:
      if previous_key:
         print '%s\t%i' % (previous_key, sum)

      previous_key = key
      sum = 1

print '%s\t%i' % (previous_key, sum)
