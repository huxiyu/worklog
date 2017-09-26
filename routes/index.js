/**
 * 主页和登录页
 */

const router = require('koa-router')()

//引入配置文件
const config = require("../config.js");

router.get('/', async (ctx, next) => {
    await ctx.render('index', {
        cdn: config.cdn,
        title: '工作日志 - 主页'
    })
})

module.exports = router