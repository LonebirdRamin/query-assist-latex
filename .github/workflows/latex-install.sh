#!/bin/bash -e

echo "# APT update"
sudo apt-get update

echo "# Install latex dependencies"
sudo rm -f /var/lib/apt/lists/lock
sudo apt-get install texlive texlive-xetex texlive-publishers texlive-science texlive-bibtex-extra biber latexmk cm-super

echo "# Install pandoc"
wget -q https://github.com/jgm/pandoc/releases/download/2.11.2/pandoc-2.11.2-1-amd64.deb
sudo dpkg -i pandoc-2.11.2-1-amd64.deb
rm -f pandoc-2.11.2-1-amd64.deb