#!/bin/bash
SPLIT=00                                          # Presplitted for parallel processing

DOWNLOAD_DATA_DIR="../Data/raw_download"       # Set to your directory path
OUTPUT_DIR="../Data/processed"                 # Set to your directory path
mkdir -p $OUTPUT_DIR/English/
mkdir -p $OUTPUT_DIR/English_pretraining/

# Convert data
python src/utils/get_wiki_text.py --input_directory $DOWNLOAD_DATA_DIR/English/ --output_directory $OUTPUT_DIR/English/

# Preprocess
python src/utils/preprocess.py \
  --source_directory $OUTPUT_DIR/English/ \
  --output_directory $OUTPUT_DIR/English_pretraining/ \
  --tokenizer_path xlm-roberta-base \
  --max_seq_len 512 \
  --min_load_len 10 \
  --rank 0