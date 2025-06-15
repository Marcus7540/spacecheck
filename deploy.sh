#!/bin/bash

# Build
dotnet publish -c Release -r linux-x64 --self-contained true /p:PublishSingleFile=true /p:IncludeNativeLibrariesForSelfExtract=true

# Copy binary
sudo cp bin/Release/net*/linux-x64/publish/Dotnet /usr/local/bin/spacecheck
sudo chmod +x /usr/local/bin/spacecheck

# Add alias
if ! grep -Fxq "alias spacecheck='/usr/local/bin/spacecheck'" ~/.bashrc; then
    echo "alias spacecheck='/usr/local/bin/spacecheck'" >> ~/.bashrc
fi

# Reload shell config
source ~/.bashrc

echo "Installed 'spacecheck' and created alias 'space'. Try running: spacecheck"
