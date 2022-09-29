yay -Rcns --noconfirm - < ./packages/aur_conflict_packages.txt

yay -S \
--removemake \
--cleanafter \
--noanswerdiff \
--noanswerclean \
--noansweredit \
--noanswerupgrade \
--noconfirm \
- < ./packages/aur_packages.txt
