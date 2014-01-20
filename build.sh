#!/bin/sh

#Find this directory
template_home=$(dirname $(readlink -f $0))

title="Guide Caverna"
author="Sébastien Douche"
version="1.0"
paper=a4paper
hmargin=1cm
vmargin=1cm
fontsize=6pt

#mainfont=Cambria
#sansfont=Corbel
#monofont=Consolas
mainfont=Arial
sansfont=Verdana
monofont="Courier New"
language=french
nohyphenation=false

columns=twocolumn

geometry=landscape

#alignment=flushleft
#alignment=flushright
#alignment=center

pandoc --latex-engine=xelatex --template=$template_home/xetex.template \
-V author="$author" -V version="$version" -V date="$date" \
-V language=$language -V paper=$paper -V hmargin=$hmargin -V vmargin=$vmargin \
-V mainfont="$mainfont" -V sansfont="$sansfont" -V monofont="$monofont" \
-V geometry=$geometry -V alignment=$alignment -V columns=$columns \
-V fontsize=$fontsize -V nohyphenation=$nohyphenation \
-V toc=$toc \
quickref-fr.md -o quickref-fr.pdf


