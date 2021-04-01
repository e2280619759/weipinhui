<style scoped>
* {
  padding: 0;
  margin: 0;
}
.conteiner a {
  text-decoration: none;
  color: #777;
}
.bg {
  background-color: #e7e7e7;
}

.top-header,
.middle-header,
.bottom-header {
  position: relative;
  width: 1170px;
  height: 30px;
  margin: 0 auto;
  line-height: 30px;
  color: #777;
  font-size: 12px;
}

.no {
  margin-top: 5px;
  width: 0;
  height: 0;
  line-height: 0;
  vertical-align: middle;
  border-width: 4px;
  border-color: #999 transparent transparent transparent;
  border-style: solid dashed dotted dashed;
  display: inline-block;
  font-style: normal;
  margin-left: 5px;
}

.diqu i:hover,
.diqu > span:hover,
.x
 {
  cursor: pointer;
}

.top-right-header {
  position: absolute;
  top: 0;
  right: 0;
}

.top-right-header a:hover {
  color: #f10180;
}

.top-right-header > div {
  float: right;
}

.top-right-header i {
  margin-left: 10px;
  margin-right: 5px;
}

.libao {
  position: relative;
  top: 2px;
  display: inline-block;
  width: 15px;
  height: 18px;
  background: url(//shop.vipstatic.com/img/common/header_sign-hash-0459d02c.gif?dd7841df)
    no-repeat;
  margin-right: 3px;
}

.top-sj {
  display: inline-block;
  background: url(../assets/img/sprites-hash-06206acd.png) no-repeat;
  background-position: -294px -136px;
  width: 10px;
  height: 20px;
}

.diqu > span {
  margin-right: 5px;
  padding: 6px 20px 5px 20px;
}

.middle-header > div {
  float: left;
}

.tu2 {
  position: relative;
}

.tu2 > a {
  width: 101px;
  height: 100px;
  display: inline-block;
}

.tu2 > img {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 0;
}

.input > input {
  width: 378px;
  padding: 10px 0 10px 15px;
  border: red 2px solid;
}

.right-input,
.right-img {
  margin-top: 30px;
  margin-left: 40px;
}

.reda > :first-child {
  color: red;
}

.reda > span {
  margin: 0 10px;
}

.input > a > button {
  background: url(../assets/img/sprites-hash-06206acd.png);
  background-position: -285px -104px;
  width: 19px;
  height: 22px;
  display: inline-block;
  position: relative;
  border: 0;
}

.input {
  position: relative;
}

.input a {
  display: block;
  top: 0;
  right: 0;
  padding-top: 6px;
  width: 53px;
  height: 30px;
  text-align: center;
  background-color: #fa2a83;
  position: absolute;
}

.right-img > i {
  background: url(../assets/img/sprites-hash-06206acd.png);
  background-position: 0 -208px;
  width: 12px;
  height: 17px;
  display: block;
  float: left;
  top: 10px;
  left: 5px;
  position: absolute;
}

.right-img {
  border: 1px solid #ccc;
  position: relative;
  background-color: #f6f7f9;
  margin-left: 10px;
  width: 95px;
  height: 36px;
  line-height: 36px;
}

.right-img > span {
  margin-left: 25px;
  position: absolute;
}

.right-img > button {
  float: right;
  margin-right: 5px;
  width: 24px;
  height: 16px;
  border-radius: 8px;
  background-color: #f00581;
  display: block;
  margin-top: 10px;
  margin-right: 5px 0;
  border: 0;
}

.a1 > :first-child {
  color: white;
}

.bottom-header {
  list-style: none;
  font-size: 16px;
  text-align: center;
  float: left;
  height: auto;
}

.bottom-header li {
  list-style: none;
}

.bottom-header a:nth-child(1) {
  float: left;
  display: block;
  padding: 6px 0;
  text-align: center;
  margin-right: 30px;
}

.a1 {
  background-color: #f10180;
  width: 156px;
  height: auto;
}

.red {
  color: #f10180;
}

.bottom-header i {
  float: right;
  font-style: normal;
  transform: rotate(90deg);
  margin-left: 5px;
}

.down-1 {
  width: 470px;
  border: 1px solid #ccc;
  position: absolute;
  top: 28px;
  left: 0;
  padding-right: 15px;
  padding-left: 15px;
  background: #fff;
  z-index: 2;
}
.x {
  float: right;
  font-weight: bolder;
  font-size: 20px;
}
.shengfen-1 a {
  margin: 0 20px 0 10px;
}
.shengfen a:focus {
  background-color: #e6057d;
  color: white;
}
.in-shengfen {
  border-bottom: 1px solid #aaa;
}
.in-shengfen > span {
  padding: 10px 15px 7px 15px;
  border: 1px solid #ccc;
  background: #f8f8f8;
}
.in-shengfen > .active-1 {
  border-bottom: 1px solid white;
  background: white;
  border-top: 3px solid#e6057d;
  position: relative;
  top: 2px;
  padding-bottom: 5px;
}
.diqu-inner {
  border: 1px solid #ccc;
  background: #fff;
  border-bottom: 1px solid white;
  z-index: 3;
  position: relative;
}
/* 分界线 */
.row-line {
  height: 1px;
  background-color: #e4e4e4;
  overflow: hidden;
  display: none;
}
</style>
<template>
  <div class="conteiner">
    <header>
      <div>
        <div class="bg">
          <div class="top-header">
            <div class="diqu">
              <span @click="xian"> 西安市<i class="no"></i></span>

              <div class="down-1" v-show="down" >
                <div>
                  <span>请你选择你所在的收货地区</span>
                  <span class="x" @click="xian()">x</span>
                </div>
                <div>
                  <div class="shengfen">
                    <div class="in-shengfen">
                      <span class="active-1">省份</span><span>城市</span>
                    </div>
                    <div class="shengfen-1">
                      <span
                        ><a href="#" v-for="(a1, i) of sity" :key="i">{{
                          a1
                        }}</a></span
                      >
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="top-right-header">
              <div>
                <a href="#">
                  <span>更多</span>
                </a>
                <span class="no"></span>
              </div>
              <div>
                <a href="#">
                  <i class="top-sj"></i>
                  <span>手机版</span>
                </a>
                <i class="slash">/</i>
              </div>

              <div>
                <a href="#">
                  <span>客户服务</span>
                </a>
                <span class="no"></span>
                <i class="slash">/</i>
              </div>

              <div>
                <a href="#">
                  <span>会员俱乐部</span>
                </a>
                <span class="no"></span>
                <i class="slash">/</i>
              </div>

              <div>
                <a href="#">
                  <span>我的订单</span>
                </a>
                <i class="slash">/</i>
              </div>

              <div>
                <a href="#">
                  <span>我的特卖</span>
                </a>
                <span class="no"></span>
                <i class="slash">/</i>
              </div>
              <div>
                <span class="libao"></span>
                <span>签到有礼</span>
                <i class="slash">/</i>
              </div>
              <div>
                <a href="#">
                  <span>注册</span>
                </a>
                <i class="slash">/</i>
              </div>
              <div>
                <a href="#">
                  <span>请登录</span>
                  <i class="slash">/</i>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="middle-header">
          <div>
            <a href="#"
              ><img src="../assets/img/1592278113502.png" height="100"
            /></a>
          </div>
          <div class="tu2">
            <a href="#"></a>
            <a href="#"></a>
            <a href="#"></a>
            <img
              src="../assets/img/1587017895494.jpg"
              width="304"
              height="100"
              alt=""
            />
          </div>
          <div class="right-input">
            <div class="input">
              <input type="text" placeholder="运动特卖节" />
              <a href="#">
                <button></button>
              </a>
            </div>
            <div class="reda">
              <a href="#">春节运动潮搭</a>
              <span>|</span>
              <a href="#">新万福</a>
              <span>|</span>
              <a href="#">耐克Nike</a>
              <span>|</span>
              <a href="#">女休闲鞋</a>
              <span>|</span>
              <a href="#">女士休闲裤</a>
            </div>
          </div>
          <div class="right-img">
            <i></i>
            <span>购物袋</span>
            <button><span>0</span></button>
          </div>
          <div class="bottom-header">
            <ul>
              <li>
                <a href="#" class="a1"><span>商品分类</span></a>
              </li>
              <li>
                <a href="#"><span class="red">推荐</span></a>
              </li>
              <li>
                <a href="#"><span>3折疯抢</span></a>
              </li>
              <li>
                <a href="#"><span>唯品快抢</span></a>
              </li>
              <li>
                <a href="#"><span>唯品奥莱</span></a>
              </li>
              <li>
                <a href="#"><span>品牌清仓</span></a>
              </li>
              <li>
                <a href="#"><span>女装</span></a>
              </li>
              <li>
                <a href="#"><span>运动</span></a>
              </li>
              <li>
                <a href="#"><span>鞋包</span></a>
              </li>
              <li>
                <a href="#"><span>美妆</span></a>
              </li>
              <li>
                <a href="#"><span>电器</span></a>
              </li>
              <li>
                <a href="#"><span>母婴</span></a>
              </li>
              <li>
                <a href="#"><span>更多</span><i>></i></a>
              </li>
            </ul>
          </div>
        </div>
        <div style="clear: both"></div>
      </div>
      <div class="row-line"></div>
    </header>
  </div>
</template>
<script>
export default {
  data() {
    return {
      sity: ["北京市", "天津市", "河北省", "山西省", "陕西省", "辽宁省"],
      down: false,
    };
  },
  methods: {
    //头部 选择城市
    xian() {
      if (this.down == false) {
        this.down = true;
      } else {
        this.down = false;
      }
    },
    },
};
</script>