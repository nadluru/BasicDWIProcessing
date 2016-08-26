# 08/26/2016. 1:24 p.m.

outputRoot=/home/fang/D/Data/DTI/1127_08132016_WarpCoil/009_enhancedFatSat_Postprocessed
mkdir -p ${outputRoot}

acqpFile=${outputRoot}/acqp.txt
echoSpacing=0.4
numPESteps=64


dwellTime=`echo "${echoSpacing}*0.001*(${numPESteps}-1)"|bc -l`
# We know it is A>>P
rm -f ${acqpFile}
echo "0 -1 0 ${dwellTime}" 
echo "0 -1 0 ${dwellTime}" >> ${acqpFile}
