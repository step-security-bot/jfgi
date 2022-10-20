<script lang="ts" type="module">
  import '$src/app.css';
  import Title from '$components/Title.svelte';
  import Reprimand from '$components/Reprimand.svelte';
  import Image from '$components/Image.svelte';
  import VisitorCounter from '$src/components/VisitorCounter.svelte';
  import GoogleAd from '$src/components/GoogleAd.svelte';
</script>

<div class="flex flex-col">
  <Title />
  <Image />
  <Reprimand />
  <slot />
  <GoogleAd />
  <VisitorCounter />
</div>
