import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
//登录
import login from '../components/Login.vue'
// 注册
import registered from '../components/Registered.vue'
// 头
import  Header from '../components/Header.vue'
Vue.component("Header",Header)
// 登录外壳

Vue.use(VueRouter)

const routes = [
  {
    path: '/login',
    name: 'login',
    component: login
  },
  {
    path: '/registered',
    name: 'registered',
    component: registered
  },
  {
    path: '/',
    name: 'Home',
    component: Home
  },
  {
    path: '/about',
    name: 'About',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  }
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
