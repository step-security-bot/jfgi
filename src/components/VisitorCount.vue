<template>
  <p>Idiots Served: {{ visitorCount }}</p>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { firestore } from "../utils/firestore";
import { doc, setDoc, getDoc } from "firebase/firestore/lite";

export default defineComponent({
  name: "VisitorCount",
  data() {
    return {
      visitorCount: 0,
    };
  },
  async created() {
    const docRef = doc(firestore, "count", "visitors");
    const visitors = await getDoc(docRef);
    const count = visitors.data()?.count;
    this.visitorCount = count;
    await setDoc(docRef, { count: count + 1 });
  },
});
</script>
