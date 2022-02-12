<template>
  <v-navigation-drawer
    app
    dark
    v-model="drawer"
    color="#0c4a3f"
    :mini-variant="mini"
    mini-variant-width="60"
    style="margin-left: 55px; box-shadow: 0"
    id="sidebar"
    append
    :hide-overlay="true"
  >
    <v-list color="#0f6354">
      <v-list-item dense>
        <v-list-item-content>
          <v-list-item-title class="title text-h6"
            >Writer Chases</v-list-item-title
          >
        </v-list-item-content>
      </v-list-item>
      <v-divider></v-divider>
      <v-list-item dense>
        <v-list-item-avatar>
          <v-img
            src="https://avatars.githubusercontent.com/u/53330353?s=400&u=a243498645363f4a270544bfc03cb0a1fcfb50ff&v=4"
          ></v-img>
        </v-list-item-avatar>
        <v-list-item-content>
          <v-list-item-title class="text-small">
            Alvin Laroya
          </v-list-item-title>
          <v-list-item-subtitle class="text-small">Writer</v-list-item-subtitle>
        </v-list-item-content>

        <v-menu
          transition="slide-y-transition"
          bottom
          left
          absolute
          nudge-bottom="30"
          :offset-y="true"
          min-width="230"
        >
          <template v-slot:activator="{ on, attrs }">
            <v-list-item-action v-bind="attrs" v-on="on">
              <v-btn icon>
                <v-icon>mdi-menu-down</v-icon>
              </v-btn>
            </v-list-item-action>
          </template>

          <v-list dense>
            <v-subheader>Chasis</v-subheader>
            <v-list-item-group color="primary">
              <v-list-item v-for="(item, i) in chasis" :key="i">
                <v-list-item-icon>
                  <v-icon v-text="item.icon" :color="item.iconColor"></v-icon>
                </v-list-item-icon>
                <v-list-item-content>
                  <v-list-item-title v-text="item.text"></v-list-item-title>
                </v-list-item-content>
              </v-list-item>
            </v-list-item-group>
            <v-subheader>Other Options</v-subheader>
            <v-list-item-group color="primary">
              <v-list-item v-for="(item, i) in otherOptions" :key="i">
                <v-list-item-icon>
                  <v-icon v-text="item.icon" :color="item.iconColor"></v-icon>
                </v-list-item-icon>
                <v-list-item-content>
                  <v-list-item-title v-text="item.text"></v-list-item-title>
                </v-list-item-content>
              </v-list-item>
            </v-list-item-group>
          </v-list>
        </v-menu>
      </v-list-item>
      <v-divider></v-divider>
      <v-list-item dense>
        <v-list-item-content class="text-center">
          <v-list-item-title class="title">WalBro</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
    </v-list>
    <v-divider></v-divider>
    <v-list nav dense subheader v-for="(list, i) in navigationList" :key="i">
      <v-subheader class="text-truncate">{{ list.subheader }}</v-subheader>
      <v-list-item-group>
        <div v-for="(item, i) in list.subheaderList" :key="i">
          <v-tooltip right :disabled="!mini">
            <template v-slot:activator="{ on, attrs }">
              <v-list-item
                active-class="active-class"
                v-bind="attrs"
                v-on="on"
                link
                :to="item.path"
              >
                <v-list-item-icon>
                  <v-icon v-text="item.icon"></v-icon>
                </v-list-item-icon>
                <v-list-item-content>
                  <v-list-item-title v-text="item.text"></v-list-item-title>
                </v-list-item-content>
              </v-list-item>
            </template>
            <span>{{ item.text }}</span>
          </v-tooltip>
        </div>
      </v-list-item-group>
    </v-list>
    <template v-slot:append>
      <v-list color="#0f6354" dense height="65">
        <v-list-item>
          <v-list-item-content>
            <u class="text-caption font-weight-bold text-truncate"
              >Salesforce Home</u
            >
            <span class="text-caption font-weight-bold text-truncate"
              >v.4.4.0 | &copy; {{ new Date().getFullYear() }} Archintel
              Corp.</span
            >
          </v-list-item-content>
        </v-list-item>
      </v-list>
    </template>
  </v-navigation-drawer>
</template>

<script>
import { EventBus } from "@/main.js";
export default {
  data: () => ({
    drawer: !null,
    mini: false,
    navigationList: [
      {
        subheader: "Navigation",
        subheaderList: [
          { text: "Dashboard", icon: "mdi-view-dashboard-outline", path: "/" },
        ],
      },
      {
        subheader: "Overview",
        subheaderList: [
          {
            text: "All Media",
            icon: "mdi-folder-multiple-image",
            path: "/overview/media",
          },
        ],
      },
      {
        subheader: "User Management",
        subheaderList: [
          {
            text: "Account Settings",
            icon: "mdi-cog-outline",
            path: "/user/settings",
          },
        ],
      },
    ],
    chasis: [
      { text: "Research", icon: "mdi-magnify", iconColor: "#09a0e6" },
      { text: "Writer", icon: "mdi-pencil-outline", iconColor: "#0f6354" },
      { text: "Editor", icon: "mdi-note-edit-outline", iconColor: "#4b098f" },
    ],
    otherOptions: [
      { text: "Update Profile", icon: "mdi-account-edit", iconColor: "orange" },
      { text: "Exit Chasis", icon: "mdi-logout-variant", iconColor: "red" },
    ],
  }),
  created() {
    EventBus.$on("switch-mini", () => {
      var element = document.querySelector('#sidebar');
      element.style.transitionDuration = "0.1s";
      this.mini = !this.mini;
      element.style.left = !this.mini ? '0px' : '-55px';
    });
  },
};
</script>

<style scoped>
.active-class {
  background-color: #127866;
  color: red;
}
</style>
