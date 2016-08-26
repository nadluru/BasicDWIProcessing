# 08/26/2016. 1:37 p.m.

outputRoot=/home/fang/D/Data/DTI/1127_08132016_WarpCoil/009_enhancedFatSat_Postprocessed
mkdir -p ${outputRoot}
indexFile=${outputRoot}/index.txt
baseRoot=/home/fang/D/Data/DTI/1127_08132016_WarpCoil/009_enhancedFatSat
numVols=`fslval ${baseRoot}/s009a1001.nii dim4`

rm -f ${indexFile}
indx=""
for i in `seq 1 ${numVols}`; do indx="$indx 1"; done
echo ${indx}
echo ${indx} > ${indexFile}
