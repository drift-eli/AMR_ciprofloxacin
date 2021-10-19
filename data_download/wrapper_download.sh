#!/bin/sh
# you may need to set the installed python interpreter and the directories

META_FILE=/home/jovyan/meta.tsv
PROJECT_DIR=/home/jovyan
MIC_DIR=/home/jovyan/MICs
FASTQ_DIR=/home/jovyan/FASTQs

./mic_download.py     --meta_file $META_FILE --mic_dir $MIC_DIR --project_dir $PROJECT_DIR
./fastq_download.py   --meta_file $META_FILE --fastq_dir $FASTQ_DIR
./check_downloads.py  --meta_file $META_FILE --fastq_dir $FASTQ_DIR --mic_dir $MIC_DIR