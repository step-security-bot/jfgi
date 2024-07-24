<script lang="ts" type="module">
  import { assets } from '$app/paths';
  // Pick a random image from the static directory
  const images = [
    '55a4588f-084f-42d1-8a4b-17a11c1859f0.png',
    '0637f1c2-d890-4510-9e80-830a3ee5ffe3.png',
    'cd4cebb4-5acb-45cf-a3cb-a3ba80ba11ba.png'
  ];
  const index = Math.floor(Math.random() * images.length);

  console.log('Loading Image', index);

  export const src = `${assets}/images/${images[index]}`;
</script>

<div class="object-center">
  <img {src} class="mx-auto my-auto h-20 object-contain p-4" alt="Placeholder" />
</div>
