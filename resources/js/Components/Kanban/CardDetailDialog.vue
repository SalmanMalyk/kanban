<script setup>
import { computed, nextTick, ref } from 'vue';
import { useForm } from '@inertiajs/vue3';

import Dialog from '@/Components/Kanban/Dialog.vue';
import { PencilIcon } from '@heroicons/vue/24/solid';
import { useEditCard } from '@/Composables/useEditCard';


const emit = defineEmits(['confirm']);

const props = defineProps({
  card: Object,
  show: Boolean,
});

const form = useForm({
  title: props?.card?.title,
  content: props?.card?.content,
});

const inputCardContentRef = ref();
const isEditing = computed(
  () => props?.card?.id === useEditCard?.value?.currentCard
);

const onSubmit = () => {
  form.put(
    route('columns.cards.update', {
      column: props?.card?.column,
      card: props?.card?.id,
    }),
    {
      onSuccess: () => {
        useEditCard.value.currentCard = null;
      },
    }
  );
};

const onCancel = () => {
  useEditCard.value.currentCard = null;
  form.reset();
};

const showForm = async () => {
  useEditCard.value.currentCard = props?.card?.id;
  await nextTick(); // wait for form to be rendered
  inputCardContentRef.value.focus();
};
</script>

<template>
  <Dialog :show="show" @close="emit('confirm', false)">
    <template v-if="!isEditing" #title>
      <div class="flex justify-between">
        <span class="capitalize text-xl">{{ card?.title }}</span>
        <button
          @click.prevent="showForm"
          type="button"
          class="p-2 bg-gray-300/40 hover:bg-gray-300 rounded-md"
        >
          <PencilIcon class="w-4 h-4 text-gray-900" />
        </button>
      </div>
    </template>

    <form v-if="isEditing" @keydown.esc="onCancel" @submit.prevent="onSubmit">
      <input @keydown.enter.prevent="onSubmit" type="text" ref="inputCardContentRef" v-model="form.title" placeholder="Card title ..." class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm mb-3" />
      <textarea
        v-model="form.content"
        type="text"
        @keydown.enter.prevent="onSubmit"
        placeholder="Card content ..."
        rows="5"
        class="mb-3 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
      >
      </textarea>
      <div class="space-x-2">
        <button
          type="submit"
          class="inline-flex items-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
        >
          Save card
        </button>
        <button
          @click.prevent="onCancel"
          type="button"
          class="inline-flex items-center rounded-md border border-transparent px-4 py-2 text-sm font-medium text-gray-700 hover:text-black focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
        >
          Cancel
        </button>
      </div>
    </form>

    <p v-else class="text-md text-gray-600" v-text="card?.content"></p>
  </Dialog>
</template>
