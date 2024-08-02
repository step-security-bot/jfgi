import type { LayoutServerLoad } from './$types';
import getVisitors from '$lib/server/counter';

export const load: LayoutServerLoad = async ({ locals }) => {
  const visitorCount = await getVisitors();
  const isExplicit = locals.isExplicit;

  return {
    count: {
      count: visitorCount
    },
    explicit: {
      isExplicit: isExplicit
    }
  };
};
