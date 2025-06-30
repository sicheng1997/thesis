## output directory
echo --- creating output directory ---
basedir=$HOME/biosoft/GISTIC/output/coad_over25
mkdir -p $basedir
echo --- running GISTIC ---
segfile=$HOME/Rproject/TCGA/TCGA-COAD/data_output/TCGA-COAD_over25_seg.txt
markersfile=`pwd`/input/Hg_marker.txt
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
1> log/coad_over25.log 2>&1
