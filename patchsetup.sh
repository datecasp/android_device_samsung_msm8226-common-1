# Device specif branches

# Start system/vold
cd system/vold
git fetch https://github.com/sub77-du/android_system_vold.git && git checkout FETCH_HEAD
cd ..;cd .. # End system/vold

# Start packages/apps/Camera2
cd packages/apps/Camera2
git fetch https://github.com/sub77-du/android_packages_apps_Camera2.git  && git checkout FETCH_HEAD
cd ..;cd ..; cd .. # End packages/apps/Camera2

# Start packages/apps/Snap
#cd packages/apps/Snap
#git checkout sub/m-caf-samsung
#cd ..;cd ..; cd .. # End packages/apps/Snap

# End Device specif branches

# Start frameworks/base
#cd frameworks/base
#git pull https://github.com/sub77-du/android_frameworks_base.git
#cd ..;cd .. # End frameworks/base

# Start packages/apps/Settings
#cd packages/apps/Settings
#git pull https://github.com/sub77-du/android_packages_apps_Settings.git
#cd ..;cd ..; cd .. # End packages/apps/Settings


# Run device patches on the tree
#sh device/samsung/msm8226-common/patch/apply.sh
