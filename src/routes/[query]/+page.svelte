<script lang="ts">
  import { browser } from '$app/environment';
  import { page } from '$app/stores';
  import CountdownTimer from '$lib/components/CountdownTimer.svelte';

  let timer = 20;

  let mySearchQuery = $page.params.query;

  setTimeout(() => {
    if (browser) {
      window.location.href = `https://www.google.com/search?q=${mySearchQuery}`;
    }
  }, timer * 1000);

  console.log(mySearchQuery);
</script>

<div class="mx-auto p-4"><CountdownTimer {timer} /></div>
<div class="flex justify-center p-4">
  <h1 class="text-3xl font-extralight">Search Google for <code>{mySearchQuery}</code></h1>
</div>
