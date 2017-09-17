/**
 * 整合所有子路由
 */

const router = require('koa-router')()

const login = require('./login')
const index = require('./index')
const users = require('./users')
const api = require('./api')
router.use('/', login.routes(), login.allowedMethods())
router.use('/index', index.routes(), index.allowedMethods())
router.use('/users', users.routes(), users.allowedMethods())
router.use('/api', api.routes(), api.allowedMethods())

module.exports = router