#!/bin/sh -x

# Path of Hadoop streaming JAR library
STREAMJAR=/usr/lib/hadoop-0.20-mapreduce/contrib/streaming/hadoop-streaming-*.jar

# Directory in which we'll store job output
OUTPUT=/user/cloudera/loganalysis

# Make sure we don't have output from a previous run.
# The -r option removes the directory recursively, and
# the -f option prevents Hadoop from warning us if the
# directory doesn't exist.
hadoop fs -rm -r -f $OUTPUT

# Run our Hadoop Streaming MapReduce job
hadoop jar $STREAMJAR \
   -mapper mapper.py -file mapper.py  \
   -reducer reducer.py -file reducer.py  \
   -input /user/cloudera/fast14 \
   -output $OUTPUT

# Copy all the output into a single local document
hadoop fs -getmerge $OUTPUT results.txt
