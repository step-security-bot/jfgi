<script lang="ts" type="module">
  import type { Counter } from '$lib/types/Counter';

  export let count: Counter;
</script>

<div class="mx-auto" id="Counter">
  <p>
    {#await count}
      <span id="visitor-count" class="loading loading-infinity">...</span>
    {:then count}
      <span id="visitor-count" class="font-italic text-lg">{count.count}</span>
    {:catch error}
      <span id="visitor-count" class="text-lg font-bold text-red-600">{error}</span>
    {/await}
  </p>
</div>
