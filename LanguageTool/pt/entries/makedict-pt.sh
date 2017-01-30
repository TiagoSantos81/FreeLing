cat other >> temp
cat adv >> temp
cat adjs >> temp
cat nouns >> temp
cat verbs >> temp
cat propernouns_geo >> temp
cat propernouns_people >> temp
sort temp > temp2
# Remove comments
sed -i -r 's/#.+//g' temp2
# Remove empty lines
sed -i '/^$/d' temp2
cat temp2 | ./freeling2lt.pl > portuguese.dict.txt
rm temp temp2
