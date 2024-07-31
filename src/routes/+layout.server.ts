import type { LayoutServerLoad } from './$types';
import getVisitors from '$lib/server/counter';

export const load: LayoutServerLoad = async () => {
  const visitorCount = await getVisitors();

  return {
    count: {
      count: visitorCount
    }
  };
};
