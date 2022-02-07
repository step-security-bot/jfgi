/** @format */

import { render } from "preact";
import { App } from "/~/components/app";
import "/~/assets/css/index.css";

const appElement = document.getElementById("app");

if (appElement) {
  render(<App />, appElement);
}
