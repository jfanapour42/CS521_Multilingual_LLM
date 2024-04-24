# Monolingual v.s. Multilingual LLMs

## Important Note:
### A large portion of the code for preprocessing and training came from the research paper Match the Script, Adapt if Multilingual: Analyzing the Effect of Multilingual Pretraining on Cross-lingual Transferability

### Citation for preprocessing and training scripts: 
@inproceedings{fujinuma2022match,
    title = "Match the Script, Adapt if Multilingual: Analyzing the Effect of Multilingual Pretraining on Cross-lingual Transferability",
    author = "Yoshinari Fujinuma and Jordan Boyd-Graber and Katharina Kann",
    booktitle = "Proceedings of the Association for Computational Linguistics (to appear)",
    year = "2022",
    url = "http://arxiv.org/abs/2203.10753",
}

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
2. Preprocess by obtaining the raw text by running e.g., `scripts/preprocess_en/en.sh`

## Pretraining
1. Run `scripts/train/pretrain_en.sh` (for pretraining only on English, remember to set all necessary constants like output directory)
