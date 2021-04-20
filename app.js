// 加载Express模块
const express = require('express');

// 加载MySQL模块
const mysql = require('mysql');



// 加载bodyParser模块
const bodyParser = require('body-parser');

// 加载MD5模块
const md5 = require('md5');

var pool = mysql.createPool({
  host: '127.0.0.1',
  port: 3306,
  user: 'root',
  password: '',
  database: 'wph',
  connectionLimit: 10
});
//把创建好的连接池导出
// module.exports = pool;

const server = express();

server.use(bodyParser.urlencoded({
  extended: false
}));

// 加载CORS模块
const cors = require('cors');

// 使用CORS中间件
server.use(cors({
  origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}));






//抛出  连接池
module.exports = pool;

// 用户登录接口
server.post('/login', (req, res) => {
  //获取用户名和密码信息
  let uname = req.body.uname;
  let upwd = req.body.upwd;
  // SQL语句
  let sql = 'SELECT id,uname FROM user WHERE uname=? AND upwd=MD5(?)';
  pool.query(sql, [uname, upwd], (error, results) => {
    if (error) throw error;
    if (results.length == 0) { //登录失败
      res.send({ message: 'login failed', code: 201 });
    } else {                 //登录成功
      res.send({ message: 'ok', code: 200, result: results[0] });
    }
  });

});


//用户注册接口
server.post('/register', (req, res) => {
  //console.log(md5('12345678'));
  // 获取用户名和密码信息
  let uname = req.body.uname;
  let upwd = req.body.upwd;
  //以username为条件进行查找操作，以保证用户名的唯一性
  let sql = 'SELECT COUNT(uid) AS count FROM user WHERE uname=?';
  pool.query(sql, [uname, upwd], (error, results) => {
    if (error) throw error;
    let count = results[0].count;
    if (count == 0) {
      // 将用户的相关信息插入到数据表
      sql = 'INSERT user(uname,upwd) VALUES(?,MD5(?))';
      pool.query(sql, [uname, upwd], (error, results) => {
        if (error) throw error;
        res.send({ message: 'ok', code: 200 });
      })
    } else {
      res.send({ message: 'user exists', code: 201 });
    }
  });
});

// 指定服务器对象监听的端口号
server.listen(3000, () => {
  console.log('server is running...');
});


