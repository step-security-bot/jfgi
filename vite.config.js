import { sveltekit } from '@sveltejs/kit/vite';

/** @type {import('vite').UserConfig} */
const config = {
	vitePlugin: {
		experimental: {
			inspector: true
		}
	},

	plugins: [sveltekit()]
};

export default config;
