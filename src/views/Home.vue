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
.inner-content {
  width: 1170px;
  height: auto;
  margin: 0 auto;
}
.inner-img>a:nth-child(2)>img{
  margin-left: 15px;
  margin-right: 15px;
}
.inner-img > a {
  float: left;
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
