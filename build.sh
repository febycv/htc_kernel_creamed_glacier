# Script modified by febycv #


#TOOLCHAIN=/home/lord/android/system/prebuilt/linux-x86/toolchain/arm-2011/bin/
#TOOLCHAIN=/home/lord/android/system/prebuilt/linux-x86/toolchain/arm-eabi-4.5.4/bin/
#TOOLCHAIN_PREFIX=arm-eabi-


make -j16 ARCH=arm CROSS_COMPILE=$CCOMPILER EXTRA_AFLAGS='-mfpu=vfpv3 -ftree-vectorize -floop-interchange -floop-strip-mine -floop-block';



cp arch/arm/boot/zImage ../finished/;
cp drivers/net/wireless/bcm4329/bcm4329.ko ../finished/;
cp drivers/staging/zram/zram.ko ../finished/;
#cp lib/lzo/lzo_compress.ko ../finished/;
cp arch/arm/mach-msm/qdsp5v2_1x/qc_pcm_in.ko ../finished/;
cp drivers/net/kineto_gan.ko ../finished/;
cp drivers/net/tun.ko ../finished/;
cp fs/cifs/cifs.ko ../finished/;

echo "COMPILING FINISHED!!!";
read;
alias make='make -j16 ARCH=arm CROSS_COMPILE=$CCOMPILER'
make clean

