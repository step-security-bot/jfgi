<script lang="ts">
  import { browser } from '$app/environment';
  import { page } from '$app/stores';

  let mySearchQuery = $page.params.query;

  setTimeout(() => {
    if (browser) {
      window.location.href = `https://www.google.com/search?q=${mySearchQuery}`;
    }
  }, 10000);

  console.log(mySearchQuery);
</script>

<div class="flex justify-center p-4">
  <h1 class="text-3xl font-extralight">Search Google for <code>{mySearchQuery}</code></h1>
</div>
