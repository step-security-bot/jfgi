<script lang="ts" type="module">
  import type { Counter } from '$lib/types/Counter';

  export let count: Counter;
</script>

<div class="flex justify-center p-4" id="Counter">
  <p class="text-lg font-bold">
    Count: <span id="visitor-count" class="text-lg font-bold">
      {#await count}
        <span id="visitor-count" class="text-lg font-bold">...</span>
      {:then count}
        <span id="visitor-count" class="text-lg font-bold">{count.count}</span>
      {:catch error}
        <span id="visitor-count" class="text-lg font-bold text-red-600">{error}</span>
      {/await}
    </span>
  </p>
</div>
