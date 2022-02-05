/** @format */

import { h, render, Component } from "preact";
import { firestore } from "../utils/firebase";
import { doc, setDoc, getDoc } from "firebase/firestore";
import { increment } from "firebase/firestore";

type CounterState = {
  count: number | undefined;
};

type CounterProps = {};

async function getCount(): Promise<number> {
  const docRef = doc(firestore, "count", "visitors");
  const visitors = await getDoc(docRef);
  return visitors.data()!.count;
}

class Counter extends Component<CounterProps, CounterState> {
  constructor(propes: CounterProps) {
    super();
    this.state = {
      count: undefined,
    };
  }

  async componentDidMount() {
    const docRef = doc(firestore, "count", "visitors");
    const visitors = await getDoc(docRef);
    const count = visitors.data()!.count;
    this.setState({ count: count + 1 });
    await setDoc(docRef, { count: count + 1 });
  }

  render() {
    return (
      <div class="flex bg-green-200">
        <p>Visitors: {this.state.count}</p>
      </div>
    );
  }
}

export default Counter;
