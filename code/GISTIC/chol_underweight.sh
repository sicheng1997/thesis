## output directory
echo --- creating output directory ---
basedir=$HOME/biosoft/GISTIC/output/chol_underweight
mkdir -p $basedir
echo --- running GISTIC ---
segfile=$HOME/Rproject/TCGA/TCGA-CHOL/data_output/TCGA-CHOL_underweight_seg.txt
markersfile=$HOME/Project/data_output/hg_marker_file.txt
refgenefile=`pwd`/refgenefiles/hg38.UCSC.add_miR.160920.refgene.mat
#alf=`pwd`/examplefiles/arraylistfile.txt
#cnvfile=`pwd`/examplefiles/cnvfile.txt

./gistic2 -b ${basedir}  \
-seg ${segfile}         \
-refgene ${refgenefile} \
-genegistic 1           \
-samllmem 1             \
-broad 1                \
-brlen 0.5              \
-conf 0.95              \
-armpeel 1              \
-savegene 1             \
1> log/chol_underweight.log 2>&1
