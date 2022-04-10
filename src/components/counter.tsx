/** @format */

import { firestore } from "../utils/firebase";
import { Component } from "preact";
import { doc, setDoc, getDoc } from "firebase/firestore";

type CounterState = {
  visitorCount: number;
};

class Counter extends Component<never, CounterState> {
  constructor() {
    super();
    this.state = {
      visitorCount: 0,
    };
  }

  async componentDidMount() {
    const docRef = doc(firestore, "count", "visitors");
    const visitors = await getDoc(docRef);
    const count = visitors.data()?.count;
    this.setState({ visitorCount: count + 1 });
    await setDoc(docRef, { count: count + 1 });
  }

  render() {
    const visitorCount = this.state.visitorCount;
    return (
      <>
        <span>Visitor Count: {visitorCount}</span>
      </>
    );
  }
}

export default Counter;
