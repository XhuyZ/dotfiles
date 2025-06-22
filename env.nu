# Set the Android SDK root
$env.ANDROID_SDK_ROOT = "/opt/android-sdk/"
# Append Android tools to PATH
$env.PATH = ($env.PATH | append [
    "/opt/android-sdk/cmdline-tools/latest/bin"
    "/opt/android-sdk/build-tools"
    "/opt/android-sdk/emulator"
    "/opt/android-sdk/platform-tools"
])

