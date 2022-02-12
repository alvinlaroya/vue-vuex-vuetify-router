import Vue from "vue";
import Vuex from "vuex";

Vue.use(Vuex);

import Dashboard from "./modules/navigation/dashboard";
import Media from "./modules/overview/all_media";
import AccountSettings from "./modules/user_management/account_settings";
import ArticleNotifications from "./modules/navigation/article_notifications";
import VersionLogs from "./modules/navigation/version_logs";

export default new Vuex.Store({
  modules: {
    navigation: {
      namespaced: true,
      modules: {
        dashboard: Dashboard,
        articleNotification: ArticleNotifications,
        versionLogs: VersionLogs,
      },
    },
    overview: {
      namespaced: true,
      modules: {
        media: Media
      }
    },
    userManagement: {
      namespaced: true,
      modules: {
        accountSettings: AccountSettings,
      },
    },
  },
});
