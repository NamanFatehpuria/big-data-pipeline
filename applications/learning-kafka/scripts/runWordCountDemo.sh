#!/usr/bin/env bash

# Start Zookeeper
~/Documents/kafka/kafka_2.12-0.10.2.1/bin/zookeeper-server-start.sh \
    ~/Documents/kafka/kafka_2.12-0.10.2.1/config/zookeeper.properties

# Start Kafka server
~/Documents/kafka/kafka_2.12-0.10.2.1/bin/kafka-server-start.sh \
    ~/Documents/kafka/kafka_2.12-0.10.2.1/config/server.properties

# Create Topic streams-file-input
~/Documents/kafka/kafka_2.12-0.10.2.1/bin/kafka-topics.sh \
    --create \
    --zookeeper localhost:2181 \
    --replication-factor 1 \
    --partitions 1 \
    --topic streams-file-input

# Create Topic streams-wordcount-output
~/Documents/kafka/kafka_2.12-0.10.2.1/bin/kafka-topics.sh \
    --create \
    --zookeeper localhost:2181 \
    --replication-factor 1 \
    --partitions 1 \
    --topic streams-wordcount-output

# List all topics
~/Documents/kafka/kafka_2.12-0.10.2.1/bin/kafka-topics.sh \
    --list \
    --zookeeper localhost:2181

# Generate input data
echo -e "all streams lead to kafka\nhello kafka streams\njoin kafka summit" \
    > /Users/naman/Documents/big-data-pipeline/applications/learning-kafka/input/file-input.txt

# Consume input data into streams-file-input topic
~/Documents/kafka/kafka_2.12-0.10.2.1/bin/kafka-console-producer.sh \
    --broker-list localhost:9092 \
    --topic streams-file-input \
    < /Users/naman/Documents/big-data-pipeline/applications/learning-kafka/input/file-input.txt

# Run WordCountDemo -> Add jar to the classpath
# CLASSPATH=/Users/naman/Documents/big-data-pipeline/applications/learning-kafka/target/learning-kafka-1.0-SNAPSHOT.jar
# export CLASSPATH
~/Documents/kafka/kafka_2.12-0.10.2.1/bin/kafka-run-class.sh \
    com.learning.kafka.streams.WordCountDemo

# Run consumer which will output to console
~/Documents/kafka/kafka_2.12-0.10.2.1/bin/kafka-console-consumer.sh \
    --bootstrap-server localhost:9092 \
    --topic streams-wordcount-output \
    --from-beginning \
    --formatter kafka.tools.DefaultMessageFormatter \
    --property print.key=true \
    --property print.value=true \
    --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
    --property value.deserializer=org.apache.kafka.common.serialization.LongDeserializer