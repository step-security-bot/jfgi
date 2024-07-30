import { doc, getDoc, setDoc } from 'firebase/firestore';
import { countersCollection } from '$lib/firebase';

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

export default getVisitors;
