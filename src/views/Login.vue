<template>
  <div class="input" title="登录">
    <input
      :class="a"
      v-model="uname"
      type="text"
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
      @blur="valiPwd"
      placeholder="密码"
    />
    <span class="dl-img-2"></span>
    <span :class="d"></span>
    <span :class="f">{{ msgPwd }}</span>
    <el-button
      type="text"
      @click="
        {
          Success(), Defeat();
        }
      "
    ></el-button>
    <div class="denglu">
      <a>短信验证登录</a>
      <a>忘记密码</a>
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
      } else {
        this.c.cuowu1 = false;
        this.d.cuowu = false;
      }
    },
    valiPhone() {
      var result = this.uname;
      if (result == "") {
        this.a.cuowu1 = true;
        this.b.cuowu = true;
        this.msgPhone = "用户名不能为空";
      } else {
        this.a.cuowu1 = false;
        this.b.cuowu = false;
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

.denglu {
  margin-top: 15px;
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
</style>