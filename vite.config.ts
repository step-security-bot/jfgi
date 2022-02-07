/** @format */

import { defineConfig } from "vite";
import preact from "@preact/preset-vite";
import { resolve } from "path";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [preact()],
  resolve: {
    alias: {
      "react": "preact/compat",
      "react-dom": "preact/compat",
      "/~/": resolve(__dirname, "src"),
    },
  },
});
