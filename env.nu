# Set the Android SDK root
$env.ANDROID_SDK_ROOT = "/home/xhuyz/Android/Sdk/"
$env.ANDROID_AVD_HOME = "/home/xhuyz/.config/.android/avd"
# Append Android tools to PATH
$env.PATH = ($env.PATH | append [
    "~/Android/Sdk/cmdline-tools/latest/bin/"
    "~/Android/Sdk/platform-tools"
    "~/Android/Sdk/build-tools"
    "~/Android/Sdk/emulator"
])

