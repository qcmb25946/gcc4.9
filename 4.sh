cd /home/qcmb/yuanma/android_kernel_oneplus_msm8996-oneplus-QC8996_O_8.0.0
make clean && make mrproper
export PATH=/home/qcmb/gcc/bin:$PATH
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=aarch64-linux-android-
make clean && make mrproper
make O=out msm-perf_defconfig
make -j$(nproc --all) O=out
