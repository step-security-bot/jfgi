<script setup lang="ts">
import Header from "./components/Header.vue";
import Timer from "./components/Timer.vue";
import Reprimand from "./components/Reprimand.vue";
import VisitorCount from "./components/VisitorCount.vue";
</script>

<template>
  <header>
    <Header />
  </header>

  <main>
    <Timer />

    <Reprimand />

    <VisitorCount />
  </main>
</template>
