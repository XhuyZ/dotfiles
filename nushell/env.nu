# Set the Android SDK root
$env.ANDROID_SDK_ROOT = "~/Android/Sdk"
# Append Android tools to PATH
$env.PATH = ($env.PATH | append [
    "~/Android/Sdk/cmdline-tools/latest/bin"
    "~/Android/Sdk/build-tools"
    "~/Android/Sdk/emulator"
    "~/Android/Sdk/platform-tools"
    "~/Android/Sdk/system-images"
])
#install fcitx5 -gtk -qt 
$env.GTK_IM_MODULE = "fcitx"
$env.QT_IM_MODULE = "fcitx"
$env.XMODIFIERS = "@im=fcitx"


