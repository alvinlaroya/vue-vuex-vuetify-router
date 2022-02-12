import Vue from "vue";
import VueRouter from "vue-router";

//Pages
// Pages > Navigation
import Dashboard from "@/views/navigation/Dashboard.vue";
// Pages > Overview
import AllMedia from "@/views/overview/AllMedia.vue";
// Pages > User Mananagement
import AccountSettings from "@/views/user_management/AccountSettings.vue";

//Narbar
import Navbar from "../components/navigation/Navbar.vue";
import Sidebar from "../components/navigation/Sidebar.vue";
import ExternalSidebar from "../components/navigation/ExternalSidebar.vue";

// Notification
import NotificationShow from "../components/notification/articles/NotificationShow.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "navigation.dashboard",
    components: {
      default: Dashboard,
      navbar: Navbar,
      sidebar: Sidebar,
      externalSidebar: ExternalSidebar
    },
  },
  {
    path: "/overview/media",
    name: "overview.media",
    components: {
      default: AllMedia,
      navbar: Navbar,
      sidebar: Sidebar,
      externalSidebar: ExternalSidebar
    },
  },
  {
    path: "/user/settings",
    name: "user.account.settings",
    components: {
      default: AccountSettings,
      navbar: Navbar,
      sidebar: Sidebar,
      externalSidebar: ExternalSidebar
    },
  },
  {
    path: "/notification/show/:id",
    name: "notification.show",
    components: {
      default: NotificationShow,
      navbar: Navbar,
      sidebar: Sidebar,
      externalSidebar: ExternalSidebar
    },
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
