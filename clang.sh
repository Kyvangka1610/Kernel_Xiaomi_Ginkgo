export KBUILD_BUILD_USER="elang"
export KBUILD_BUILD_HOST="kyvangkaelang"
export ARCH=arm64
export SUBARCH=arm64
make O=out vendor/chips_defconfig
make -j$(nproc --all) O=out ARCH=arm64 \
                      CC="/home/kyvangka1610/kernel/Clang-10/bin/clang" \
                      CLANG_TRIPLE="aarch64-linux-gnu-" \
                      CROSS_COMPILE="/home/kyvangka1610/kernel/aarch64-linux-android-4.9/bin/aarch64-linux-android-"

