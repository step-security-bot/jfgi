<script lang="ts">
  import { page } from '$app/stores';

  let mySearchQuery = $page.params.query;
</script>

<div class="flex justify-center p-4">
  <h1 class="font-extralight text-3xl">Search Google for <code>{mySearchQuery}</code></h1>
</div>
