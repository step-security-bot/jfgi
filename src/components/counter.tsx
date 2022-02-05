/** @format */

import { h, render, Component } from "preact";
import { firestore } from "../utils/firebase";
import { doc, setDoc, getDoc } from "firebase/firestore";
import { increment } from "firebase/firestore";

type CounterState = {
  count: number;
};

type CounterProps = {};

async function getCount(): Promise<number> {
  const docRef = doc(firestore, "count", "visitors");
  const visitors = await getDoc(docRef);
  console.log("object returned from async function", visitors.data());
  console.log("count data once resolved", visitors.data()!.count);
  return visitors.data()!.count;
}

class Counter extends Component<CounterProps, CounterState> {
  constructor(propes: CounterProps) {
    super();
    this.state = {
      count: 0,
    };
  }

  async commponentDidMount() {
    const count = await getCount();
    this.setState({ count });
  }

  render() {
    return (
      <div>
        <p>Visitors: {this.state.count}</p>
      </div>
    );
  }
}

export default Counter;
