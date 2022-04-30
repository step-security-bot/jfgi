<template>
  <div id="timer" class="timer">
    <p class="text-xl justify-center">{{ timeout }} seconds remaining</p>
    <p>Current URL: {{ url }}</p>
    <p>Current Query: {{ query }}</p>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "Timer",
  data() {
    return {
      timeout: 30,
      url: window.location.href,
    };
  },
  computed: {
    query(): string {
      const url = this.url;
      const query = url.split("/").pop();
      if (query) {
        return query;
      } else {
        return "";
      }
    },
  },
  mounted() {
    setInterval(() => this.tick(), 1000);
  },
  methods: {
    tick() {
      this.timeout--;
      if (this.timeout === 0) {
        window.location.href = `https://www.google.com/search?q=${this.query}`;
      }
    },
  },
});
</script>
