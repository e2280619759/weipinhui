<style scoped>
* {
  padding: 0;
  margin: 0;
}
.conteiner a {
  text-decoration: none;
  color: #777;
}

.bg-img {
  position: relative;
  background-repeat: no-repeat;
  background-position: center top;
  background-image: url(../assets/img/1614319854294.jpg);
  height: 500px;
  /* 防止子元素 带着父元素一起走 */
  overflow: hidden;
  margin-bottom: 30px;
}
/* 分界线 */
.row-line {
  height: 1px;
  background-color: #e4e4e4;
  overflow: hidden;
}
.lbt-buttom {
  margin: 0 auto;
  width: 550px;
}
.lbt-buttom > span:nth-child(3) {
  border: 0;
}
.lbt-buttom > span {
  font-size: 12px;
  border-right: 1px solid #e8e8e8;
  z-index: 1;
  top: -35px;
  width: 180px;
  display: inline-block;
  position: relative;
  text-align: center;
}
/* 主题内容 */
.inner-content,
.inner-content-1 {
  width: 1170px;
  height: auto;
  margin: 0 auto;
}
.inner-img {
  width: auto;
  height: auto;
}
.inner-img > a:nth-child(2) > img {
  margin-left: 15px;
  margin-right: 15px;
}
.temai {
  background: url(../assets/img/15344789862278.jpg);
  background-repeat: no-repeat;
  display: inline-block;
  width: 100%;
  height: 100px;
  margin-top: 20px;
  margin-bottom: -10px;
}
.discount-1 img,
.discount-2 img {
  display: block;
  overflow: hidden;
  position: relative;
  width: 600px;
  height: 342px;

  float: left;
  z-index: 1;
}
.discount-2 img {
  width: 570px;
}
/* 右侧购物袋 */
.s1 > span > span {
  color: #fff;
  margin: 0 2px;
}
.butr:hover {
  background: #df147f;
}
.zhanghao {
  padding: 5px 0;
}
.s1 img {
  width: 23px;
  margin: 0 6px;
  color: #e6e6e6;
}
.Right-inner {
  margin-top: -250px;
  top: 50%;
  position: relative;
  height: auto;
}
.Right-bg {
  width: 36px;
  height: 100%;
  background: #262626;
  position: fixed;
  top: 0px;
  right: 0px;
  z-index: 100;
}
.butr>span{
  padding: 10px 0;
}
.butr{
  margin: 10px 0;
}
.s2{
  color: #fff;
  width: 20px;
  margin: 15px 25%;
  clear: both;
  border-radius: 0.25rem;
  display: block;

}
.s2 >img{
  width: 20px;
  height: 25px;
}
.s2  div{
  width: 20px;
  height: 20px;
  background: #fff;
  margin: 10px 0;
  text-align: center;
  border-radius: 50%;
  color: #262626;
}
.gwd-bg{
  background: #df147f;
  padding: 1px 0;
}
.button-right span{
  display: block;
}
.s3 img{
   color: #fff;
  width: 20px;
  margin: 15px 25%;
  display: block;
  position: relative;
  top: 100px;
}
</style>
<template>
  <div class="conteiner">
    <Header></Header>
    <div class="bg-img">
      <div class="inner-header">
        <template>
          <el-carousel indicator-position="outside">
            <el-carousel-item v-for="item in imagebox" :key="item.id">
              <img :src="item.idView" class="image" />
            </el-carousel-item>
          </el-carousel>
          <div class="lbt-buttom">
            <span v-for="(item, i) of sty" :key="i">{{ item }}</span>
          </div>
        </template>
      </div>
    </div>
    <div class="inner-content">
      <div class="top-img">
        <a href="#"
          ><img src="../assets/img/1617005582178_1990x204_90.jpg" alt=""
        /></a>
      </div>
      <div class="inner-img">
        <a href="#"
          ><img src="../assets/img/1617005697968_642x426_90.jpg" alt=""
        /></a>
        <a href="#"
          ><img src="../assets/img/1617005751077_642x426_90.jpg" alt=""
        /></a>
        <a href="#"
          ><img src="../assets/img/1617005845099_642x426_90.jpg" alt=""
        /></a>
      </div>
    </div>
    <div class="inner-content-1">
      <div class="temai"></div>
      <div class="discount-1">
        <a href="#"
          ><img src="../assets/img/1607914975921_1020x582_90.jpg" alt=""
        /></a>
      </div>
      <div class="discount-2">
        <a href="#"
          ><img src="../assets/img/1599118052991_1140x684_90.jpg" alt=""
        /></a>
      </div>
    </div>
    <div>
      <div class="Right-bg">
        <div class="Right-inner">
          <div class="zhanghao s1 butr">
            <span>
              <img src="../assets/Vector-img/yonghu.png" alt="" />
              <span>账号</span>
            </span>
          </div>
          <div class=" butr gwd-bg">
            <span class="s2">
              <img src="../assets/Vector-img/gouwudai.png" alt="" />
              <span>购物袋</span>
              <div><span>0</span></div>
            </span>
          </div>
          <div class="butr">
            <span class="s2 ">
              <img src="../assets/Vector-img/youhuiquan.png" alt="">
            </span>
          </div>
          <div class="butr">
            <span class="s2 ">
              <img src="../assets/Vector-img/shoucang.png" alt="">
            </span>
          </div>
          <div class="butr">
            <span class="s2 ">
              <img src="../assets/Vector-img/shouchang-1.png" alt="">
            </span>
          </div>
          <div class="butr">
            <span class="s2 ">
              <img src="../assets/Vector-img/lishi.png" alt="">
            </span>
          </div>
          <div class="button-right s3">
            <span>
              <img src="../assets/Vector-img/fankui.png" alt="">
            </span>
          </div>
          <div class="button-right s3">
            <a href="top">
              <img src="../assets/Vector-img/fanhuidingbu.png" alt="">
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

 <script>
//  var div=document.getElementsByClassName()
//js
export default {
  data() {
    return { 
      sty: [
        "小熊 全场低至1.2折",
        "国潮大牌 安踏低至1.5折",
        "百丽国际 鞋履尚新2折起",
      ],
      imagebox: [
        { id: 0, idView: require("../assets/img/1615880224804.jpg") },
        { id: 1, idView: require("../assets/img/1615974288637.jpg") },
        { id: 2, idView: require("../assets/img/1616030413137.jpg") },
      ],
    };
  },
  methods: {},
};
</script>
    <style>
/* 轮播图样式 */
.el-carousel__item h3 {
  color: #475669;
  font-size: 18px;
  opacity: 0.75;
  line-height: 300px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}
.el-carousel {
  position: relative;
  width: 1146px;
  margin: 0 auto;
  margin-top: 30px;
  box-shadow: 0 1px 3px rgb(201 63 63 / 40%);
  padding: 12px;
  padding-bottom: 0;
}
.el-carousel__container {
  position: relative;
  height: 400px !important;
}
.el-carousel__arrow {
  border-radius: 0 !important;
  width: 33px !important;
  height: 66px !important;
}
.el-carousel__arrow--left {
  left: 0 !important;
}
.el-carousel__arrow--right {
  right: 0 !important;
}
.el-carousel {
  padding: 15px 10px 0 10px !important;
  background: #fff;
}
.el-carousel__indicator--horizontal {
  padding: 50px 0 0 !important;
}
.el-carousel__indicators--outside button {
  width: 180px !important;
}
.is-active > button {
  background-color: #e6057d !important;
}
</style>
