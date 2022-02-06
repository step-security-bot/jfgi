/** @format */

import { app } from "../utils/firebase";
import Counter from "./counter";
import Header from "./header";
import Bart from "./bart";
import Information from "./information";

export function App() {
  return (
    <>
      <Header />
      <Bart />
      <Information />
      <Counter />
    </>
  );
}
