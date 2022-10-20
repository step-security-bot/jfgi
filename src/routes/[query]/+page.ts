import { error } from '@sveltejs/kit';
import type { PageLoad } from './$types';

export const load: PageLoad = ({ params }) => {
  console.log(params.query);
  return;
};

export const csr = true;
export const ssr = false;
