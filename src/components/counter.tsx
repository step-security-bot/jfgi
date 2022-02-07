/** @format */

import { Component } from "preact/compat";
import { firestore } from "../utils/firebase";
import { doc, setDoc, getDoc } from "firebase/firestore";

type CounterState = {
  count: number | undefined;
};

type CounterProps = Record<string, never>;

class Counter extends Component<CounterProps, CounterState> {
  constructor() {
    super();
    this.state = {
      count: undefined,
    };
  }

  async componentDidMount() {
    const docRef = doc(firestore, "count", "visitors");
    const visitors = await getDoc(docRef);
    const count = visitors.data()?.count;
    this.setState({ count: count + 1 });
    await setDoc(docRef, { count: count + 1 });
  }

  render() {
    return (
      <>
        <div class="flex bg-green-200">
          <p>Visitors: {this.state.count}</p>
        </div>
      </>
    );
  }
}

export default Counter;
