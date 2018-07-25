#!/usr/bin/env sh

# 终止一个错误
set -e

git init
git add -A
git commit -m 'deploy'

# 如果你想要备份到 https://<USERNAME>.github.io分支
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git backBLOG
git push -f git@github.com:liuyongchao/liuyongchao.github.io.git backBLOG
# 如果你想要部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -