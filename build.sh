export KBUILD_BUILD_USER="elang"
export KBUILD_BUILD_HOST="kyvangkaelang"
export ARCH=arm64
export SUBARCH=arm64
export DTC_EXT=dtc
make O=out vendor/sixteen_defconfig
make -j$(nproc --all) O=out ARCH=arm64 \
                      CC="/home/kyvangka1610/kernel/Clang-10/bin/clang" \
                      CLANG_TRIPLE="aarch64-linux-gnu-" \
                      CROSS_COMPILE="/home/kyvangka1610/kernel/aarch64-linux-android-4.9/bin/aarch64-linux-android-" \
		      CROSS_COMPILE_ARM32="/home/kyvangka1610/kernel/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-" 
