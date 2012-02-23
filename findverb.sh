#!/bin/bash
echo "NOTE: The directories for the verbnet xml files ($HOME/Downloads/verbnet/verbnet-3.1) and the inspector files ($HOME/Downloads/inspector) are hardcoded in due to erros regarding directory variables, temporarily. If any errors arise, consider these directories. Press ENTER"
read nothing;

echo "Enter a verb (antecedent verb) to search for"

read temp_var

echo "Enter the structure of the sentence. e.g. NP V NP"

read temp_var2

cd $HOME/Downloads/inspector

#java vn.Inspector $HOME/Downloads/verbnet/verbnet-3.1 -Vtrxc -O $temp_var | grep -A1 "$temp_var2" 

java vn.Inspector $HOME/Downloads/verbnet/verbnet-3.1 -Vtrxc -O $temp_var | grep -A1 "$temp_var2" > ~/nltk_data/grammars/book_grammars/output1.txt

echo "Enter another verb (consequent verb) to search for"

read temp_var3

echo "Enter the structure of the sentence. e.g. NP V NP"

read temp_var4

cd $HOME/Downloads/inspector

java vn.Inspector $HOME/Downloads/verbnet/verbnet-3.1 -Vtrxc -O $temp_var3 | grep -A1 "$temp_var4" > ~/nltk_data/grammars/book_grammars/output2.txt 


