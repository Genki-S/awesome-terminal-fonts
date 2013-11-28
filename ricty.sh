#!/bin/sh

cp ./fonts/Ricty-Regular.ttf S0.ttf
./patch S0.ttf --symbols=./fonts/fontawesome-webfont.ttf --to-namespace=AWESOME --rename-as=S1 --starting-at='0xe100' --ratio=0.7 --shift-x=200 --shift-y=-300
./patch S1.ttf --symbols=./fonts/octicons-regular.ttf --to-namespace=OCTICONS --rename-as=S2 --starting-at='0xe800' --ratio=0.75 --shift-x=-100 --shift-y=-100
./patch S2.ttf --symbols=./fonts/pomicons-regular.ttf --to-namespace=POMICONS --rename-as='Ricty Awesome Regular' --family-name='Ricty Awesome' --full-name='Ricty Awesome Regular' --starting-at='0xf000' --ratio=0.75 --shift-y=-400 --shift-x=-600
cat S1.sh S2.sh >> Ricty+Awesome+Regular.ttf
cp Ricty+Awesome+Regular.* ~/.fonts
mv Ricty+Awesome+Regular.* ./patched

cp ./fonts/Ricty-Bold.ttf S0.ttf
./patch S0.ttf --symbols=./fonts/fontawesome-webfont.ttf --to-namespace=AWESOME --rename-as=S1 --starting-at='0xe100' --ratio=0.7 --shift-x=200 --shift-y=-300
./patch S1.ttf --symbols=./fonts/octicons-regular.ttf --to-namespace=OCTICONS --rename-as=S2 --starting-at='0xe800' --ratio=0.75 --shift-x=-100 --shift-y=-100
./patch S2.ttf --symbols=./fonts/pomicons-regular.ttf --to-namespace=POMICONS --rename-as='Ricty Awesome Bold' --family-name='Ricty Awesome' --full-name='Ricty Awesome Bold' --starting-at='0xf000' --ratio=0.75 --shift-y=-400 --shift-x=-600
cat S1.sh S2.sh >> Ricty+Awesome+Bold.ttf
cp Ricty+Awesome+Bold.* ~/.fonts
mv Ricty+Awesome+Bold.* ./patched

sudo fc-cache -rv
rm -rf S?.*
