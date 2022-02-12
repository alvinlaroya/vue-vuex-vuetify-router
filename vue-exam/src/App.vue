<template>
  <v-app>
    <v-main class="main">
      <div style="margin-left: 55px" id="main-app">
        <router-view />
        <router-view class="view two" name="navbar"></router-view>
        <router-view class="view three" name="externalSidebar"></router-view>
        <router-view class="view four" name="sidebar"></router-view>
      </div>
    </v-main>
  </v-app>
</template>

<script>
import { EventBus } from "./main.js";
export default {
  name: "App",

  data: () => ({
    switch: false,
  }),
  created() {
    EventBus.$on("switch-mini", () => {
      var element = document.querySelector("#main-app");
      if (this.switch) {
        element.style.marginLeft = "55px";
        this.switch = !this.switch;
      } else {
        element.style.marginLeft = "0";
        this.switch = !this.switch;
      }
    });
  },
};
</script>

<style scoped>
.main {
  background-color: #eee;
}
</style>
