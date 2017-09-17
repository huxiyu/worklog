/**
 * API
 */

const router = require('koa-router')()

//引入配置文件
var config = require("./config.js");

router.get('/string', async (ctx, next) => {
    ctx.body = 'api string'
})

router.get('/json', async (ctx, next) => {
    ctx.body = {
        title: 'api json'
    }
})

module.exports = router
