#!/usr/bin/env sh

# 终止一个错误
set -e

# 备份
#-----------------------------------------------
dirname=.git
echo "the dir name is $dirname"
if [ ! -d $dirname  ];then
 git init
else
  echo 'git init have done'
fi


#切换到分支
git checkout backBLOG
git add -A
git commit -m 'backBLOG'

# 如果你想要备份到 https://<USERNAME>.github.io分支
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git backBLOG
git push -f git@github.com:liuyongchao/liuyongchao.github.io.git backblog:backBLOG
# 如果你想要部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages


#-----------------------------------------------


# 构建
#-----------------------------------------------
#npm run docs:build
vuepress build docs

# 进入生成的构建文件夹
cd docs/.vuepress/dist

# 如果你是要部署到自定义域名
# echo 'www.example.com' > CNAME
#echo 'www.blog.naxxm.com' > CNAME
git checkout master
git init
git add -A
git commit -m 'deploy'

# 如果你想要部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master
git push -f git@github.com:liuyongchao/liuyongchao.github.io.git master
# 如果你想要部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
#-----------------------------------------------
cd -