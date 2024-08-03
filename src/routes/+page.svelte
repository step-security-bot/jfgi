<script lang="ts">
  import Reprimand from '$lib/components/Reprimand.svelte';
  import type { PageData } from './$types';

  export let data: PageData;

  $: isExplicit = data.explicit.isExplicit;
</script>

<svelte:head>
  <title
    >{isExplicit ? 'Just Fucking Google It! -- Home Page' : 'Just Google It! -- Home Page'}</title
  >
</svelte:head>

<Reprimand />
