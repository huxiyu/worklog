/**
 * API
 */

const router = require('koa-router')()

const userService = require('./../services/user_service')

const crypto = require('crypto');


// 注册用户
router.get('/sign', async (ctx, next) => {
    var formData = {
        username:'admin',
        password:'',
        salt:''
    }

    console.log(crypto.getCiphers())

    formData.password = '123456'
    formData.salt = 'hello'

    // let userResult = await userService.create({
    //     username: formData.username,
    //     password: formData.password,
    //     salt: formData.salt,
    // })

    ctx.body = {
        "ret": 0,
    }
})

router.get('/string', async (ctx, next) => {
    ctx.body = 'api string'
})

router.get('/json', async (ctx, next) => {
    ctx.body = {
        title: 'api json'
    }
})

module.exports = router
