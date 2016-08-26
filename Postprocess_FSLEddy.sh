# 08/26/2016. 1:12 p.m.

baseRoot=/home/fang/D/Data/DTI/1127_08132016_WarpCoil/009_enhancedFatSat
outputRoot=/home/fang/D/Data/DTI/1127_08132016_WarpCoil/009_enhancedFatSat_Postprocessed

bvecFile=${baseRoot}/s009a1001.bvec
bvalFile=${baseRoot}/s009a1001.bval
maskFile=${baseRoot}/s009a1001_brain_mask.nii
indexFile=${outputRoot}/index.txt
acqpFile=${outputRoot}/acqp.txt
dwiFile=${baseRoot}/s009a1001.nii

eddy --imain=${dwiFile} --mask=${maskFile} --out=${outputRoot}/dwiECC --index=${indexFile} --acqp=${acqpFile} --bvecs=${bvecFile} --bvals=${bvalFile}
