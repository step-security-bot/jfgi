import adapter from '@sveltejs/adapter-vercel';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';

/** @type {import('@sveltejs/kit').Config} */
const config = {
  compilerOptions: {
    enableSourcemap: true
  },
  preprocess: vitePreprocess(),
  kit: {
    adapter: adapter()
    // alias: {
    //   $src: './src',
    //   $components: './src/components',
    //   $utils: './src/utils',
    //   $types: './src/types'
    // }
  }
};

export default config;
