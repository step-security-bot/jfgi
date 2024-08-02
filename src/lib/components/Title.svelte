<script lang="ts">
  export let isExplicit: boolean = false;
  let title: string = 'Just Google It';

  if (isExplicit) {
    console.log('Just Fucking Google It');
    title = 'Just Fucking Google It';
  }
</script>

<div class="m-8 flex flex-row justify-center p-4">
  <h1 class="font-serif text-xl font-bold md:text-3xl lg:text-5xl">{title}</h1>
</div>
