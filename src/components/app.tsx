/** @format */

import { app } from "../utils/firebase";
import Counter from "./counter";

export function App() {
  return (
    <>
      <p>Hello Vite + Preact!</p>
      <p>
        <a
          class="link"
          href="https://preactjs.com/"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn Preact
        </a>
      </p>
      <Counter />
    </>
  );
}
