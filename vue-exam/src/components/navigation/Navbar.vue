<template>
  <div>
    <v-app-bar
      color="#0f6354"
      app
      dark
      dense
      style="padding-left: 55px"
      id="navbar"
    >
      <v-app-bar-nav-icon @click="switchMiniSidebar"></v-app-bar-nav-icon>

      <!-- Navbar left actions -->
      <v-text-field
        solo-inverted
        label="Search"
        flat
        dense
        clearable
        rounded
        height="10"
        prepend-inner-icon="mdi-magnify"
        style="margin-top: 25px; margin-left: 10px"
      ></v-text-field>
      <!-- End of Navbar left actions -->
      <v-spacer></v-spacer>

      <!-- Navbar right actions -->
      <v-tooltip bottom>
        <template v-slot:activator="{ on, attrs }">
          <v-btn icon v-bind="attrs" v-on="on" @click="$router.push({ name: 'navigation.dashboard' })">
            <v-icon>mdi-monitor-dashboard</v-icon>
          </v-btn>
        </template>
        <span>Manage Dashboard</span>
      </v-tooltip>

      <v-menu
        :close-on-content-click="false"
        offset-y
        max-width="300"
        min-width="300"
      >
        <template #activator="menu">
          <v-tooltip bottom>
            <template #activator="tooltip">
              <v-btn icon v-on="{ ...menu.on, ...tooltip.on }">
                <v-badge
                  color="pink"
                  :content="allNotifications.length"
                  offset-x="12"
                  offset-y="12"
                >
                  <v-icon>mdi-bell</v-icon>
                </v-badge>
              </v-btn>
            </template>
            <span>Notifications</span>
          </v-tooltip>
        </template>
        <div v-if="allNotifications.length <= 0">
          <h5>Loading</h5>
        </div>
        <div v-else>
          <notification-list
            :articles="allNotifications"
          ></notification-list>
        </div>
      </v-menu>

      <nav-setting-menu></nav-setting-menu>

      <v-menu
        :close-on-content-click="false"
        offset-y
        max-width="300"
        min-width="300"
      >
        <template #activator="menu">
          <v-tooltip bottom>
            <template #activator="tooltip">
              <v-btn icon v-on="{ ...menu.on, ...tooltip.on }">
                <v-icon>mdi-history</v-icon>
              </v-btn>
            </template>
            <span>Version Logs</span>
          </v-tooltip>
        </template>
        <version-logs
          :versions="allVersionLogs"
          :currentVersion="version"
        ></version-logs>
      </v-menu>
    </v-app-bar>
  </div>
</template>

<script>
import { createNamespacedHelpers } from "vuex";
const { mapGetters } = createNamespacedHelpers("navigation");

import { EventBus } from "@/main.js";
import NavSettingMenu from "./NavSettingMenu.vue";
import NotificationList from "../notification/articles/NotificationList.vue";
import VersionLogs from "./logs/version/VersionLogs.vue";
export default {
  components: {
    NavSettingMenu,
    NotificationList,
    VersionLogs,
  },
  data: () => ({
    selected: null,
    notification: true,
    version: "4.4.0",
    switch: false,
  }),
  computed: {
    ...mapGetters(["allNotifications", "allVersionLogs"]),
  },
  methods: {
    switchMiniSidebar() {
      EventBus.$emit("switch-mini");
    },
    console() {
      console.log("1");
    },
  },
  created() {
    EventBus.$on("switch-mini", () => {
      var element = document.querySelector("#navbar");
      element.style.transitionDuration = "0.1s";
      if (this.switch) {
        element.style.paddingLeft = "55px";
        this.switch = !this.switch;
      } else {
        element.style.paddingLeft = "0px";
        this.switch = !this.switch;
      }
    });
  },
};
</script>
<style lang="postcss" scoped>
/deep/ .v-text-field {
  max-width: 450px;
}
</style>
