apportable-activate() {
	local APPORTABLE_BIN=/Users/mnem/.apportable/SDK/bin
	echo Adding $APPORTABLE_BIN to start of PATH
	export PATH="$APPORTABLE_BIN:$PATH"

	echo Unsetting ANDROID_SDK and ANDROID_NDK
	unset ANDROID_SDK ANDROID_NDK
}
