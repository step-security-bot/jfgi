/** @format */

import Header from "./header";
import Bart from "./bart";
import Information from "./information";
import Counter from "./counter";

export function App() {
  return (
    <>
      <Header />
      <Bart />
      <Information />
      <Counter props = never/>
    </>
  );
}
