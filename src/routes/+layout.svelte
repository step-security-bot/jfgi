<script lang="ts" type="module">
  import '../app.css';
  import Title from '$lib/components/Title.svelte';
  import Image from '$lib/components/Image.svelte';
  import VisitorCounter from '$lib/components/VisitorCounter.svelte';

  import type { LayoutData } from './$types';

  export let data: LayoutData;

  let visitorCount = data.count;
  let isExplicit = data.isExplicit;
</script>

<div class="flex size-full h-screen flex-col">
  <Title {isExplicit} />
  <Image />
  <slot />
  <VisitorCounter count={visitorCount} />
</div>
