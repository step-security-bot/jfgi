<template>
  <div id="timer" class="timer">
    <p class="text-xl justify-center">
      {{ time }}
    </p>
  </div>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "Timer",
  computed: {
    time() {
      return Date.now();
    },
  },
  mounted() {
    this.time;
  },
});
</script>
