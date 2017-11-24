#!/bin/sh

archive=mt.tar.gz
download_url=https://github.com/Sebreiro/MathTraining_AspNetCore/releases/download/v1.0/mathtraining.tar.gz
environment_js_path=wwwroot/js/angularjs

set -ex

#wget -q https://github.com/Sebreiro/MathTraining_AspNetCore/releases/download/v1.0/mathtraining.tar.gz -O "${archive}"

curl -L -o "${archive}" "${download_url}"
tar -C . -xzf "${archive}"
rm -f "${archive}"

cp -a Config DefaultConfig

mv environment.js "${environment_js_path}"

