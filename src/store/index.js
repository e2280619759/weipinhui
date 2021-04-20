import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    islogin: sessionStorage.getItem('islogin') ? 1 : 0, //默认未登录状态
    user: sessionStorage.getItem('user') ? JSON.parse(sessionStorage.getItem('user')) : null // 保存当前用户对象
  },
  mutations: {
    updateLoginState(state, user) {
      state.islogin = 1
      state.user = user;
      console.log(user)
    }
  },
  actions: {
  },
  modules: {
  }
})
