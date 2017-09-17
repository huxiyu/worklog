/**
 * 主页和登录页
 */

const router = require('koa-router')()

//引入配置文件
var config = require("./config.js");

router.get('/', async (ctx, next) => {
    await ctx.render('login', {
        cdn: config.cdn,
        title: '工作日志 - 登录'
    })
})

module.exports = router
