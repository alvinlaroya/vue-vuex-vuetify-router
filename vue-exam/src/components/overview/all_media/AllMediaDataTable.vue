<template>
  <v-data-table
    :headers="headers"
    :items="allMedia"
    :server-items-length="count"
    :items-per-page="itemsPerPage"
    @pagination="paginate"
    :loading="mediaLoading"
    class="elevation-1"
  >
    <template v-slot:item.actions="{ item }">
      <v-icon class="mr-2" color="green" @click="editItem(item)">
        mdi-file-document-edit
      </v-icon>
      <v-icon color="blue" @click="downloadItem(item)">
        mdi-cloud-download
      </v-icon>
    </template>
    <template v-slot:item.media_date="{ item }">
      {{ dateFormat(item.media_date) }}
    </template>
    <template v-slot:item.createdAt="{ item }">
      {{ dateTimeFormat(item.createdAt) }}
    </template>
    <template v-slot:item.for_editing="{ item }">
      <v-simple-checkbox
        color="blue"
        :ripple="false"
        v-model="item.for_editing"
      ></v-simple-checkbox>
    </template>
    <template v-slot:item.published="{ item }">
      <v-simple-checkbox
        color="blue"
        :ripple="false"
        v-model="item.published"
      ></v-simple-checkbox>
    </template>
    <template v-slot:item.category="{ item }">
      {{ categoryFormat(item.category) }}
    </template>
    <template v-slot:item.title="{ item }">
      <a href="#" class="">{{ item.title }}</a>
    </template>
    <template v-slot:item.rating="{ item }">
      <v-rating
        v-model="item.rating"
        color="yellow darken-3"
        background-color="yellow darken-1"
        half-increments
        small
        dense
      ></v-rating>
    </template>
  </v-data-table>
</template>

<script>
import { createNamespacedHelpers } from "vuex";
const { mapGetters, mapActions } = createNamespacedHelpers("overview");

export default {
    props: {
        category: {
            type: Number
        }
    },
  data: () => ({
    totalArticles: 0,
    desserts: [],
    loading: true,
    options: {},
    tab: null,
    itemsPerPage: 10,
    articleCategory: 0,
    items: ["All", "Customers", "Competitors", "Products"],
    headers: [
      {
        text: "Actions",
        value: "actions",
        align: "start",
        sortable: false,
        width: 100,
      },
      {
        text: "Media Date",
        value: "media_date",
      },
      { text: "Created Date & Time", value: "createdAt" },
      { text: "For Editing", value: "for_editing" },
      { text: "Published", value: "published" },
      { text: "Category", value: "category" },
      { text: "Title", value: "title", width: 250 },
      { text: "Researcher", value: "researcher" },
      { text: "Writer", value: "writer", width: 180 },
      { text: "Editor", value: "editor", width: 180 },
      { text: "Rating", value: "rating" },
    ],
  }),
  watch: {
    options: {
      handler() {
        this.getDataFromApi();
      },
      deep: true,
    },
  },
  methods: {
    ...mapActions(["fetchMedia"]),
    editItem(item) {
      console.log(item);
    },
    downloadItem(item) {
      console.log(item);
    },
    categoryFormat(item) {
      if (item === 1) return "Customers";
      if (item === 2) return "Competitors";
      if (item === 3) return "Produtcts";
      if (item === 4) return "Social Media";
    },
    dateFormat(date) {
      return new Date(date).toLocaleString("default", {
        month: "short",
        day: "numeric",
        year: "numeric",
      });
    },
    dateTimeFormat(date) {
      return new Date(date).toLocaleString("default", {
        month: "short",
        day: "numeric",
        year: "numeric",
        hour: "2-digit",
        minute: "2-digit",
      });
    },
    paginate(obj) {
        console.log(this.articleCategory)
      const { itemsPerPage, pageStart } = obj;
      this.fetchMedia({ itemsPerPage, pageStart, search: '', category: this.articleCategory });
    },
    search(val) {
      this.fetchMedia({ itemsPerPage: 10, pageStart: 0, search: val, category: this.articleCategory });
    }
  },
  computed: {
    ...mapGetters(["allMedia", "count", "mediaLoading"]),
  },
};
</script>

<style></style>
