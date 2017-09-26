/**
 * 配置文件
 */ 

const config = {
    // 启动端口
    port: 8080,

    // 数据库配置
    database: {
        DATABASE: 'worklog',
        USERNAME: 'root',
        PASSWORD: '123456',
        PORT: '3306',
        HOST: 'localhost'
    },

    // CDN配置
    cdn:""
}

module.exports = config