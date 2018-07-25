# VuePress + GitHub搭建个人博客

1.创建blog文件

```bash
cnpm init -y
```

2.安装vuepress

```bash
cnpm i vuepress -D
```

3.创建docs文件夹编写博客内容

```bash
mkdir docs
 mkdir docs && echo 'vuepress + github搭建个人博客' > docs/README.md
```

4.运行vuepress服务看是否成功

```bash
vuepress dev docs
```

5.构建

```bash
vuepress build docs
```

5.主页配置

- 侧边栏配置

```bash
cd docs/.vuepress  && vi config.js
```

```bash
module.exports = {
    themeConfig: {
        nav: [
            { text: 'Home', link: '/' },
            { text: 'Guide', link: '/guide/' },
            { text: 'VuePress', link: 'https://vuepress.vuejs.org/' },
        ],
        displayAllHeaders: true, // 默认值：false
        activeHeaderLinks: false, // 默认值：true
        sidebar: [
          {
            title: 'Webpack',
            collapsable: false,      
            children: [
              '/blogs/webpack/',
              '/blogs/webpack/webpack-install'
            ]
          },
          {
            title: 'VuePress',
            collapsable: false, 
            children: [ 
              '/blogs/VuePress/',
            ]
          }
        ]       
    }
}
```

  - 构建目录结构

```
+--docs
|  |+--blogs
|  |  |+--webpack
|  |  |  |+--webpack-install.md
|  |  |  |+--README.md    
|  |  |+--VuePress
|  |  |  |+--README.md
|  |+--README.md
  ```

  - 运行

  ```bash
vuepress dev docs 
  ```

6.部署到github

- 创建git仓库为<username.github.io>配置可参考github page相关内容

- 创建自动化部署deploy.sh脚本

```bash
#!/usr/bin/env sh

# 终止一个错误
set -e

# 构建
#npm run docs:build
vuepress build docs

# 进入生成的构建文件夹
cd docs/.vuepress/dist

# 如果你是要部署到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果你想要部署到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master
git push -f git@github.com:liuyongchao/liuyongchao.github.io.git master
# 如果你想要部署到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd -
```

- 在docs同级目录下运行deploy.sh脚本


- [试着打开https://liuyongchao.github.io浏览博客吧](https://liuyongchao.github.io)











