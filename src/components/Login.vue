<template>
  <div class="container">
    <div class="content">
      <div class="top">
        <a class="img-1"> </a>
        <a class="img-2"> </a>
      </div>
    </div>
    <div class="login">
      <div class="inner">
        <div class="c-top">
          <div class="top-login">
            <div>扫码登录</div>
            <i>|</i>
            <div>账户登录</div>
          </div>
          <div class="input">
            <div class="input" title="登录">
              <input
                :class="a"
                v-model="uname"
                type="text"
                :state="usernameState"
                @blur="valiPhone"
                placeholder="手机号/用户名/邮箱"
              />
              <span class="dl-img-1"></span>

              <span :class="b"></span>
              <span :class="e">{{ msgPhone }}</span>
              <input
                :class="c"
                type="password"
                v-model="upwd"
                :state="pwdState"
                @blur="valiPwd"
                placeholder="密码"
              />
              <span class="dl-img-2"></span>
              <span :class="d"></span>
              <span :class="f" >{{ msgPwd }}</span>
              <el-button
                type="text"
                @click="
                  {
                    Success, Defeat;
                  }
                "
              ></el-button>
              <div class="denglu">
                <a>短信验证登录</a>
                <a>忘记密码</a>
              </div>
            </div>
            <div class="button">
              <button @click="checkForm">登录</button>
            </div>
          </div>
          <div class="weixin">
            <div class="row-line"></div>
            <div class="weixin-img"><a href="#"></a></div>
            <div class="dlfs">
              <a href="#">新浪微博</a>
              <span>|</span>
              <a href="#">QQ</a>
              <span>|</span>
              <a href="#">支付宝</a>
              <span>
                <a href="#">更多<i>></i></a>
              </span>
              <a href="#">免费注册</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      uname: "",
      msgPhone: "",
      a: { cuowu1: false },
      b: { cuowu: false },
      c: { cuowu1: false },
      d: { cuowu: false },
      e: {
        Prompt: false,
        Correct: false,
      },
      f: {
        Prompt: false,
        Correct: false,
      },
      usernameState: "",
      pwdState: "",
      upwd: "",
      msgPwd: "",
    };
  },
  methods: {
    Success() {
      this.$alert("密码错误", "", {
        confirmButtonText: "确定",
        callback: (action) => {},
      });
    },
    Defeat() {
      this.$alert("登陆成功", "", {
        confirmButtonText: "确定",
        callback: (action) => {},
      });
    },
    valiPwd() {
      var result = this.upwd;
      if (result == "") {
        this.c.cuowu1 = true;
        this.d.cuowu = true;
        this.msgPwd = "密码不能为空";
      }
    },
    valiPhone() {
      var result = this.uname;
      if (result == "") {
        this.a.cuowu1 = true;
        this.b.cuowu = true;
        this.msgPhone = "用户名不能为空";
      }
    },
    checkForm() {
      if (this.checkUsername() && this.checkPwd()) {
        // 所有组件验证成功
        let url = "/login";
        let param = `uname=${this.uname}&upwd=${this.upwd}`;
        this.axios.post(url, param).then((result) => {
          if (result.data.code == 200) {
            let user = result.data.result.uname;
            this.$store.commit("upwdateloginState", user);
            //把用户信息存入sessionStorage
            sessionStorage.setItem("islogin", 1);
            sessionStorage.setItem("user", JSON.stringify(user));
            this.Defeat();
            this.$router.push("/");
          } else {
            this.Success();
            this.upwd = "";
          }
        });
      } else {
        // 其中有格式错误的组件
      }
    },
  },
  watch: {

    uname() {
      // 验证用户名
      let uname = this.uname;
      console.log(this.uname, this.upwd);
      let reg = /^\w{4,12}$/;
      if (reg.test(uname)) {
        //true  验证成功
        this.usernameState = "success";
        this.msgPhone = "用户名长度正确";
        this.e.Correct = true;
        this.e.Prompt = false;
        return true;
      } else {
        //false  不符合格式要求
        this.usernameState = "error";
        this.e.Correct = false;
        this.e.Prompt = true;
        this.msgPhone = "用户名长度为6-12位";
        return false;
      }
    },

    upwd() {
      // 验证密码
      let reg = /^\d{6,15}$/;
      if (reg.test(this.upwd)) {
        //true  验证成功
        this.pwdState = "success";
        this.msgPwd = "密码长度正确";
        this.f.Correct = true;
        this.f.Prompt = false;
        return true;
      } else {
        //false  不符合格式要求
        this.pwdState = "error";
        this.f.Prompt = true;
        this.f.Correct = false;
        this.msgPwd = "密码为6-15位";
        return false;
      }
    },
  },
};
</script>
<style scoped>
.Correct {
  color: lawngreen;
  font-size: 0.13rem;
  display: inline-block;
}
.Prompt {
  color: red;
  font-size: 0.13rem;
  display: inline-block;
}
.cuowu1 {
  border: solid 2px red;
}
.cuowu {
  background: url(../assets/Vector-img/cuowu.png);
  width: 16px;
  height: 16px;
  display: block;
  position: absolute;
  margin: -36px 275px;
  z-index: 20;
  background-repeat: no-repeat;
}

/* 分界线 */

.denglu > a:nth-child(2) {
  font-size: 10px;
  color: #333;
  float: right;
  line-height: 30px;
}
.denglu > a:nth-child(1) {
  font-size: 14px;
  color: #333;
}
.input > input:nth-child(1) {
  margin-top: 50px;
}
/* 登录框 */
.input-1 {
  position: relative;
}
/* 登陆输入框img */
.dl-img-1,
.dl-img-2 {
  background: url(../assets/img/sprites-hash-c9975078.png);
  background-position: -504px -221px;
  width: 20px;
  height: 20px;
  display: block;
  position: fixed;
  margin-top: -40px;
  margin-left: 10px;
}
.dl-img-2 {
  background-position: -528px -221px;
}
.input {
  width: 300px;
  margin: 0 auto;
}
.input > input {
  width: 260px;
  height: 50px;
  line-height: 45px;
  margin-top: 20px;
  outline: none;
  padding-left: 40px;
}
.input {
  width: 300px;
  margin-left: auto;
  margin-right: auto;
}
.cuowu1 {
  border: solid 2px red;
}
.cuowu {
  background: url(../assets/Vector-img/cuowu.png);
  width: 16px;
  height: 16px;
  display: block;
  float: right;
  position: relative;
  z-index: 20;
  margin-top: -35px;
  margin-right: 10px;
}
.dlfs > span {
  color: #e0e0e0;
  height: 10px;
}
.dlfs > span > a {
  padding-right: 0;
  color: #666;
}
.dlfs {
  margin: 0 auto;
}
.dlfs i {
  transform: rotate(90deg);
  font-style: normal;
  display: inline-block;
  margin-left: 8px;
}
.dlfs a {
  font-size: 12px;
  color: #333;
  padding: 0 11px 0 10px;
}
.weixin > div:nth-child(2) {
  margin: 0 auto;
  z-index: 1;
  width: 40px;
  height: 40px;
  margin-top: -20px;
  background: white;
}
.weixin-img > a {
  background: url(../assets/img/sprites-hash-c9975078.png);
  background-position: -580px -161px;
  width: 40px;
  height: 40px;
  display: inline-block;
  position: absolute;
}
/* 分界线 */
.row-line {
  height: 1px;
  background-color: #e4e4e4;
  overflow: hidden;
  z-index: 0;
  position: relative;
}
.weixin {
  width: 300px;
  margin: 0 auto;
  padding: 30px 0;
}

.button > button:hover {
  background-color: #f43499;
  border-color: #f43499;
  cursor: pointer;
}
.button > button {
  width: 298px;
  height: 44px;
  background-color: #f10180;
  border: 1px solid #f10180;
  border-radius: 0.25rem;
  border: 0;
  outline: none;
  margin: 20px 0 30px;
  font-size: 18px;
  color: white;
}
a:hover {
  color: #f10180 !important;
  cursor: pointer;
}
.denglu > a:nth-child(2) {
  font-size: 10px;
  color: #333;
  float: right;
  line-height: 30px;
}
.denglu > a:nth-child(1) {
  font-size: 14px;
  color: #333;
}
.input > input:nth-child(3) {
  margin-top: 30px;
}
/* 登录框 */

/* 登陆输入框img */
.dl-img-1,
.dl-img-2 {
  background: url(../assets/img/sprites-hash-c9975078.png);
  background-position: -504px -221px;
  width: 20px;
  height: 20px;
  display: block;
  position: absolute;
  margin-top: -38px;
  margin-left: 10px;
}
.dl-img-2 {
  background-position: -528px -221px;
}

.login {
  width: 100%;
  height: 650px;
  background: url(../assets/img/1615808154926.jpg);
  background-position: top center;
  background-repeat: no-repeat;
}
.container {
  text-decoration: none;
  color: #777;
}
.content,
.inner {
  width: 1000px;
  height: auto;
  margin: 0 auto;
}
.img-1 {
  background: url(../assets/img/sprites-hash-c9975078.png);
  background-position: -308px -57px;
  width: 125px;
  height: 100px;
  display: block;
  float: left;
}
.img-2 {
  background: url(../assets/img/sprites-hash-c9975078.png);
  background-position: 0px 0px;
  display: block;
  width: 304px;
  height: 100px;
  float: right;
}
.top {
  height: 100px;
}
.c-top {
  width: 360px;
  background-color: white;
  float: right;
  margin-top: 40px;
}
.top-login {
  border-bottom: 1px solid #e0e0e0;
  height: auto;
}
.top-login > div {
  display: inline-block;
  padding: 10px 55px;
}
.top-login > i {
  text-align: center;
  font-style: normal;
}
a {
  text-decoration: none;
}
</style>