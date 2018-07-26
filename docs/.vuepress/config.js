
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
              'blogs/webpack/',
              'blogs/webpack/webpack-install'
            ]
          },
          {
            title: 'VuePress',
            collapsable: false, 
            children: [ 
              'blogs/VuePress/',
            ]
          },
          {
            title: 'JavaScript',
            collapsable: false, 
            children: [ 
              'blogs/JavaScript/',
            ]
          }
        ]
          
          
        
    }
}