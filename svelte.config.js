import adapter from '@sveltejs/adapter-static';
import firebase from 'svelte-adapter-firebase';
import preprocess from 'svelte-preprocess';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	// Consult https://github.com/sveltejs/svelte-preprocess
	// for more information about preprocessors
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
			$src: './src'
		}
	}
};

export default config;
