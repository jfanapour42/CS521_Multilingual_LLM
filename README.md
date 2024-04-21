# Monolingual v.s. Multilingual LLMs

## Prerequisites
* pytorch
* transformers
* jsonlines
* conllu (for preprocessing)

If running regression analysis:
* statsmodels
* lang2vec

## Obtaining and Preprocessing the Pretraining Data
1. Obtain CoNLL 2017 Wikipedia dump from https://lindat.mff.cuni.cz/repository/xmlui/handle/11234/1-1989. 
   1. or `wget https://lindat.mff.cuni.cz/repository/xmlui/bitstream/handle/11234/1-1989/English-annotated-conll17.tar` and change "English" for other languages.
2. Preprocess by obtaining the raw text by running e.g., `scripts/preprocess_en/en00.sh`
3. Downsample by running `src/scripts/downsample_train_dev.sh`

## Pretraining
1. Run `scripts/train/pretrain_en.sh` (for pretraining only on English, remember to set all necessary constants like output directory)
