<template>
    <div class="input" title="登录">
      <input
        :class="a"
        v-model="phone"
        type="text"
        @blur="valiPhone"
        placeholder="手机号/用户名/邮箱"
      />
      <span class="dl-img-1"></span>

      <span :class="b"></span>
      <span class="Prompt">{{ msgPhone }}</span>
      <input
        :class="c"
        type="password"
        v-model="pwd"
        @blur="valiPwd"
        placeholder="密码"
      />
      <span class="dl-img-2"></span>
      <span :class="d"></span>
      <span class="Prompt">{{ msgPwd }}</span>

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
      phone: "",
      msgPhone: "",
      a: { cuowu1: false },
      b: { cuowu: false },
      c: { cuowu1: false },
      d: { cuowu: false },
      pwd: "",
      msgPwd: "",
    };
  },
  methods: {
    valiPwd() {
      var result = this.pwd;
      if (result == "") {
        this.c.cuowu1 = true;
        this.d.cuowu = true;
        this.msgPwd = "密码不能为空";
      }
    },
    valiPhone() {
      var result = this.pwd;
      if (result == "") {
        this.a.cuowu1 = true;
        this.b.cuowu = true;
        this.msgPhone = "用户名不能为空";
      }
    },
  },
  watch: {},
};
</script>
<style scoped>
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