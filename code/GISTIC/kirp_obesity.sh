## output directory
echo --- creating output directory ---
basedir=$HOME/biosoft/GISTIC/output/kirp_obesity
mkdir -p $basedir
echo --- running GISTIC ---
segfile=$HOME/Rproject/TCGA/TCGA-KIRP/data_output/TCGA-KIRP_obesity_seg.txt
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
1> log/kirp_obesity.log 2>&1
