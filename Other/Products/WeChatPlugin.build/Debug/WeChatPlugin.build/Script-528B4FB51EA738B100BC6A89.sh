#!/bin/sh
#!/bin/bash
app_name="WeChat"
framework_name="WeChatPlugin"
app_bundle_path="/Applications/${app_name}.app/Contents/MacOS"
app_executable_path="${app_bundle_path}/${app_name}"
app_executable_backup_path="${app_executable_path}_backup"
framework_path="${app_bundle_path}/${framework_name}.framework"
# 备份WeChat原始可执行文件
if [ ! -f "$app_executable_backup_path" ]
then
cp "$app_executable_path" "$app_executable_backup_path"
fi

rm -rf "./Other/Products/Debug/${framework_name}.framework"
cp -r "${BUILT_PRODUCTS_DIR}/${framework_name}.framework" "./Other/Products/Debug/${framework_name}.framework"
cp -r "${BUILT_PRODUCTS_DIR}/${framework_name}.framework" "./Other/微信小助手.app/Contents/Data/${framework_name}.framework"

cp -r "${BUILT_PRODUCTS_DIR}/${framework_name}.framework" ${app_bundle_path}
./Other/insert_dylib --all-yes "${framework_path}/${framework_name}" "$app_executable_backup_path" "$app_executable_path"

