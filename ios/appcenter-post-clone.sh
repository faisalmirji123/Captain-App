# Update node version to 14;
brew install node@20

# Update project's dependencies
npm i && pod update

# Untar bundle resources
if [ -f "./Bundle/assets.tar.gz" ]; then
    mkdir ./Bundle/assets
    tar xvzf ./Bundle/assets.tar.gz -C ./Bundle/assets && sudo find ./Bundle/assets/. -type d -exec chmod u+rwx {} \;
    exit 0;
fi
