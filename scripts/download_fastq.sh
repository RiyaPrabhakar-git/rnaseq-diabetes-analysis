#!/bin/bash

cd ../data/raw_fastq

for SRR in SRR957972 SRR957971 SRR957965 SRR957961
do
    echo "Downloading $SRR"

    prefetch $SRR
    fasterq-dump $SRR --split-files

    gzip ${SRR}_*.fastq
done

