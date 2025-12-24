#!/bin/bash
echo "📦 Downloading assets to static/images/..."
mkdir -p static/images
cd static/images
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/blk1.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/blk2.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/blk3.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/brwn1.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/brwn2.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/Brwnsprt.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/blushu.jpeg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/rdsl.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/timbs3.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/blkdzn.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/blkdzn1.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/ft1b.jpg
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/slptk2.webp
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/sl2gd.webp
curl -O https://raw.githubusercontent.com/Crvstal/Halashoe/main/sprt.jpg
echo "✅ Assets downloaded to static/images/"
ls -la
