#!bin/sh

#wget https://uofi.box.com/shared/static/igsnfieh4lz68l926l8xbklwsnnk8we9.zip
unzip igsnfieh4lz68l926l8xbklwsnnk8we9.zip
#wget http://www.eecs.berkeley.edu/Research/Projects/CS/vision/grouping/BSR/BSR_bsds500.tgz
tar -xvf BSR_bsds500.tgz

mkdir stage

echo "Prep BSD500 FileStructure"
mkdir ./BSR/BSDS500/data/images/train/HR
mv ./BSR/BSDS500/data/images/train/*.jpg ./BSR/BSDS500/data/images/train/HR/
mv ./BSR/BSDS500/data/images/val/*.jpg ./BSR/BSDS500/data/images/train/HR/
rm -rf ./BSR/BSDS500/data/images/val
mkdir ./BSR/BSDS500/data/images/test/HR
mv ./BSR/BSDS500/data/images/test/*.jpg ./BSR/BSDS500/data/images/test/HR/

mv ./BSR/BSDS500/data/images/* ./stage

echo "BSD500 Stage Complete"
echo "Prep Set14 FileStructure"
mv ./Set14/image_SRF_4/img_0*_H* ./stage/train/HR/
mkdir ./stage/train/LR
mv ./Set14/image_SRF_4/img_0*_L* ./stage/train/LR/

echo "Set14 Stage Complete"
echo "Ready to run Process notebook"

