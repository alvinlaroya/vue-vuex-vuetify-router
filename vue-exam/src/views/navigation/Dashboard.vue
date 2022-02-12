<template>
  <v-container fluid>
    <v-row>
      <v-col md="6" xs="12" sm="12">
        <writer-dashboard></writer-dashboard>
      </v-col>
      <v-col md="6" xs="12" sm="12">
        <v-row>
          <v-col cols="12">
            <writer-production></writer-production>
          </v-col>
        </v-row>
        <v-row>
          <v-col cols="12">
            <article-preview></article-preview>
          </v-col>
        </v-row>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
// Components
import WriterDashboard from "@/components/navigation/dashboard/WriterDashboard.vue";
import WriterProduction from "@/components/navigation/dashboard/WriterProduction.vue";
import ArticlePreview from "@/components/navigation/dashboard/ArticlePreview.vue";

export default {
  components: {
    WriterDashboard,
    WriterProduction,
    ArticlePreview,
  },
  data: () => ({}),
};
</script>

<style></style>
