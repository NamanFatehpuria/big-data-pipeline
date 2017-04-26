#!/usr/bin/env bash

rm -r /Users/naman/Documents/big-data-pipeline/applications/learning-spark/output/clusterWordCounts

/Users/naman/Documents/spark/spark-2.1.0-bin-hadoop2.7/bin/spark-submit \
--master spark://192.168.1.97:7077 \
--deploy-mode cluster \
--class com.learning.spark.WordCount \
--name "Pi App Cluster" \
/Users/naman/Documents/big-data-pipeline/applications/learning-spark/target/learning-spark-1.0-SNAPSHOT.jar \
/Users/naman/Documents/spark/spark-2.1.0-bin-hadoop2.7/README.md \
/Users/naman/Documents/big-data-pipeline/applications/learning-spark/output/wordcounts

