echo "Removing conflicting packages that will be reinstalled "
yay -Rcns --noconfirm - < ./packages/aur_conflict_packages.txt

echo "Installing AUR packages"
yay -S \
--removemake \
--cleanafter \
--noanswerdiff \
--noanswerclean \
--noansweredit \
--noanswerupgrade \
--noconfirm \
- < ./packages/aur_packages.txt
