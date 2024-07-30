<script lang="ts">
  export let timer: number = 10;

  let time = timer;

  const interval = setInterval(() => {
    time -= 1;
    if (time === 0) {
      clearInterval(interval);
    }
  }, 1000);
</script>

<h1>{time}</h1>
