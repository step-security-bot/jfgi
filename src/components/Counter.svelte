<script lang="ts" type="module">
  import { doc, getDoc, setDoc } from 'firebase/firestore';
  import { countersCollection } from '$utils/firebase';

  const getVisitors = async () => {
    const counterRef = doc(countersCollection, 'visitors');

    const counterDoc = await getDoc(counterRef);
    if (counterDoc.exists()) {
      const data = counterDoc.data();
      console.timeStamp('getVisitors');
      console.log('getVisitors', data.count);
      const update = {
        count: data.count + 1
      };
      console.timeStamp('setVisitors');
      console.log('setVisitors', update.count);
      await setDoc(counterRef, update);
      return data.count;
    } else {
      const update = {
        count: 1
      };
      await setDoc(counterRef, update);
      return update.count;
    }
  };

  let count = getVisitors();
</script>

<div class="flex justify-center p-4" id="Counter">
  <p class="text-lg font-bold">
    Count: <span id="visitor-count" class="text-lg font-bold">
      {#await count}
        <span id="visitor-count" class="text-lg font-bold">...</span>
      {:then count}
        <span id="visitor-count" class="text-lg font-bold">{count}</span>
      {:catch error}
        <span id="visitor-count" class="text-lg font-bold text-red-600">error</span>
      {/await}
    </span>
  </p>
</div>
