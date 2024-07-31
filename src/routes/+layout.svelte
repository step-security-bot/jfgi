<script lang="ts" type="module">
  import '../app.css';
  import Title from '$lib/components/Title.svelte';
  import Reprimand from '$lib/components/Reprimand.svelte';
  import Image from '$lib/components/Image.svelte';
  import VisitorCounter from '$lib/components/VisitorCounter.svelte';
  import GoogleAd from '$lib/components/GoogleAd.svelte';

  import type { LayoutData } from './$types';

  export let data: LayoutData;

  let visitorCount = data.count;
</script>

<div class="flex flex-col">
  <Title />
  <Image />
  <Reprimand />
  <slot />
  <GoogleAd />
  <VisitorCounter count={visitorCount} />
</div>
