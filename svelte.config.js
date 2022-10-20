import adapter from '@sveltejs/adapter-static';
import preprocess from 'svelte-preprocess';

/** @type {import('@sveltejs/kit').Config} */
const config = {
  // Consult https://github.com/sveltejs/svelte-preprocess
  // for more information about preprocessors
  compilerOptions: {
    enableSourcemap: true
  },
  preprocess: [
    preprocess({
      postcss: true
    })
  ],

  kit: {
    adapter: adapter({
      pages: 'public',
      fallback: 'index.html'
    }),
    alias: {
      $src: './src',
      $components: './src/components',
      $utils: './src/utils',
      $types: './src/types'
    }
  }
};

export default config;
