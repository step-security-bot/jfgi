<script lang="ts">
  import { page } from '$app/stores';

  let mySearchQuery = $page.params.query;

  console.log(mySearchQuery);
</script>

<div class="flex justify-center p-4">
  <h1 class="text-3xl font-extralight">Search Google for <code>{mySearchQuery}</code></h1>
</div>
