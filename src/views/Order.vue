<template>
  <div class="contet">
    <Header></Header>
    <div class="Order">
      <div class="top-title clearfix">
        <span class="z">La Chapelle SPORT女装专场</span>
        <span><span class="zhekou">4.7</span><span>折封顶</span> </span>
        <a class="top-title-right">
            <span class="iconfont icon-xin"></span>
            <span class="shoucang">收藏品牌</span>
            <span>(235,412)</span>
        </a>
      </div>
      
    </div>
  </div>
</template>

<style scoped>
.Order {
  width: 1170px;
  height: auto;
  margin: 0 auto;
  margin-top: 30px;
}
.top-title span {
  display: block;
  float: left;
}
.top-title-right {
  float: right !important;
  border: 1px solid #dfdfdf;
  border-radius: 1rem;
  padding: 0 10px;
  line-height: 26px;
}
.top-title-right:hover {
  background: #f10180;
  color: #fff !important;
  border: 1px solid #f10180;
}

.zhekou {
  font-size: 14px;
  font-weight: bold;
}
.top-title-right > span:nth-child(3) {
  color: #999;
  font-size: 12px;
}
.iconfont {
  font-family: "iconfont" !important;
  font-size: 16px;
  font-style: normal;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.shoucang {
  color: #fa2a83;
  font-size: 12px;
}
.top-title > span:nth-child(1) {
  width: 200px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  margin-right: 20px;
}
.zhekou + span {
  padding-top: 2px;
}
.top-title > span > span:nth-child(2) {
  font-size: 12px;
}
/* 取消高度坍塌 */
.clearfix:before,
.clearfix:after {
  content: "";
  display: table;
}

.clearfix:after {
  clear: both;
}

.clearfix {
  *zoom: 1;
}
</style>