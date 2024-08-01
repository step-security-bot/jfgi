<script lang="ts">
  import yoda from '$lib/components/images/0637f1c2-d890-4510-9e80-830a3ee5ffe3.png?enhanced';
  import drake from '$lib/components/images/cd4cebb4-5acb-45cf-a3cb-a3ba80ba11ba.png?enhanced';
  import officespace from '$lib/components/images/55a4588f-084f-42d1-8a4b-17a11c1859f0.png?enhanced';
  // Pick a random image from the static directory
  const images = [
    {
      imagesrc: yoda,
      alt: "Master Yoda looking at you; Overlay Text says 'Use Google, You Should'"
    },
    { imagesrc: drake, alt: "Drake looking at you; Overlay Text says 'Use Google, You Should'" },
    {
      imagesrc: officespace,
      alt: "Office Spacej; Overlay Text says 'Use Google, You Should'"
    }
  ];
  const index = Math.floor(Math.random() * images.length);

  console.log('Loading Image', index);

  export const src = images[index];
</script>

<div class="flex-row justify-center object-center">
  <div class="carousel mx-auto px-4">
    <enhanced:img
      src={src.imagesrc}
      sizes="min(1280px, 50vw)"
      class="mx-auto my-auto w-6/12 object-contain"
      alt={src.alt}
    />
  </div>
</div>
