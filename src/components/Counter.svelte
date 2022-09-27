<script lang="ts">
	import { PrismaClient } from '@prisma/client';
	const prisma = new PrismaClient();

	async function get_visitor_count() {
		let count = await prisma.visits.findUnique({
			where: {
				id: 1
			},
			select: {
				count: true
			}
		});
		return count;
	}

	let count = get_visitor_count();
</script>

<div class="flex justify-center p-4" id="Counter">
	<p class="text-lg font-bold">Count: {count}</p>
</div>
