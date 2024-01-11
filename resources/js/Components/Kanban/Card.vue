<script setup>
import { computed, ref } from 'vue';
import { router } from '@inertiajs/vue3';
import { EyeIcon } from '@heroicons/vue/24/solid';
import { TrashIcon } from '@heroicons/vue/24/solid';
import ConfirmDialog from '@/Components/Kanban/ConfirmDialog.vue';
import CardDetailDialog from './CardDetailDialog.vue';

const props = defineProps({
  card: Object,
});

// TODO: Move to composable useModal
const isOpen = ref(false);
const detailOpen = ref(false);
const closeModal = confirm => {
  isOpen.value = false;
  if (confirm) {
    router.delete(
      route('columns.cards.destroy', {
        card: props?.card?.id,
        column: props?.card?.column,
      })
    );
  }
};
const openModal = () => (isOpen.value = true);

const cardContent = computed(() => props.card?.title);
</script>

<template>
  <div
    class="cursor-move relative group p-2 bg-white shadow rounded-md border border-b border-gray-300 hover:bg-gray-50"
  >
    <div>
      <p class="text-sm font-semibold capitalize">{{ cardContent }}</p>
      <div
        class="hidden absolute right-1 inset-0 group-hover:flex justify-end space-x-2 items-center"
      >
        <button
          @click.prevent="detailOpen = true"
          class="w-8 h-8 bg-gray-50 text-gray-600 hover:text-black hover:bg-gray-200 rounded-md grid place-content-center"
        >
          <EyeIcon class="w-5 h-5" />
        </button>
        <button
          @click.prevent="openModal"
          class="w-8 h-8 bg-gray-50 text-red-600 hover:text-red-700 hover:bg-gray-200 rounded-md grid place-content-center"
        >
          <TrashIcon class="w-5 h-5" />
        </button>
      </div>
    </div>
  </div>
  <ConfirmDialog
    :show="isOpen"
    @confirm="closeModal($event)"
    title="Remove Card"
    message="Are you sure you want to delete this card?"
  />
  <CardDetailDialog
    :show="detailOpen"
    @confirm="detailOpen = false"
    :card="props.card"
  />
</template>
