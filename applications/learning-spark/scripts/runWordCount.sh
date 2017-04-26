#!/usr/bin/env bash

rm -r /Users/naman/Documents/big-data-pipeline/applications/learning-spark/output/wordcounts

/Users/naman/Documents/spark/spark-2.1.0-bin-hadoop2.7/bin/spark-submit \
--class com.learning.spark.WordCount \
/Users/naman/Documents/big-data-pipeline/applications/learning-spark/target/learning-spark-1.0-SNAPSHOT.jar \
/Users/naman/Documents/spark/spark-2.1.0-bin-hadoop2.7/README.md \
/Users/naman/Documents/big-data-pipeline/applications/learning-spark/output/wordcounts

