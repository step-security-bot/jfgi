<script setup lang="ts">
defineProps<{
  msg: string;
}>();
</script>

<template>
  <div class="greetings">
    <h1 class="green">{{ msg }}</h1>
    <h3 class="text-6xl font-bold underline">
      You’ve successfully created a project with
      <a target="_blank" href="https://vitejs.dev/" class="first-letter:blur">Vite</a> +
      <a target="_blank" href="https://vuejs.org/">Vue 3</a>.
    </h3>
  </div>
</template>
