function croot()
{
    T=$(gettop)
    if [ "$T" ]; then
        \cd $(gettop)
    else
        echo "Couldn't locate the top of the tree.  Try setting TOP."
    fi
}

# Run device patches on the tree
sh device/samsung/msm8226-common/patch/apply.sh

# Device specif branches
# vendor/extra
cd vendor/extra
git checkout sub/m-caf-matisse-common
croot # End vendor/extra
# packages/apps/Camera2
cd packages/apps/Camera2
git checkout sub/OpenCamera
croot # End packages/apps/Camera2
# packages/apps/Snap
cd packages/apps/Snap
git checkout sub/m-caf-matisse-common
croot # End packages/apps/Snap
cd vendor/samsung/matisse-common
git checkout sub/m-caf-old
croot # End vendor/samsung/matisse-common
# End Device specif branches

# Start frameworks/base
cd frameworks/base
git pull https://github.com/sub77-du/android_frameworks_base.git
croot # End frameworks/base

# Start packages/apps/Settings
cd packages/apps/Settings
git pull https://github.com/sub77-du/android_packages_apps_Settings.git
croot # End packages/apps/Settings

# BetterCharger
#cd system/core
#git pull https://github.com/sub77-du/android_system_core.git
#croot
#cd bootable/recovery
#git pull https://github.com/sub77-du/android_bootable_recovery.git
#croot # End BetterCharger
