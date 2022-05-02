<template>
  <p>Idiots Served: {{ visitorCount }}</p>
</template>

<script lang="ts">
import { defineComponent } from "vue";
import { firestore, database } from "../utils/firestore";
import { doc, setDoc, getDoc } from "firebase/firestore/lite";
import { ref, get, set } from "firebase/database";

export default defineComponent({
  name: "VisitorCount",
  data() {
    return {
      visitorCount: 0,
    };
  },
  async created() {
    const visitorRef = ref(database, "visitors");
    get(visitorRef).then((snapshot) => {
      if (snapshot.exists()) {
        const count = snapshot.val();
        set(visitorRef, count + 1);
      } else {
        set(visitorRef, 1);
      }
    });
  },
});
</script>
