<template>
  <div class="app">
    <h1>Дела</h1>
    <p>Всего: {{ tasks.length }}</p>
    <div class="tasks">
      <TaskItem
        v-for="t in tasks"
        :key="t.id"
        :task="t"
      />
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue'
import TaskItem from './components/TaskItem.vue'

const tasks = ref([
  { id: '1', title: 'Продукты', text: 'Молоко, хлеб, яйца' },
  { id: '2', title: 'Врач', text: 'Записаться на приём' },
  { id: '3', title: 'Задание', text: 'Выполнить к субботе' },
  { id: '4', title: 'Друзья', text: 'Встретиться и погулять' }
])
</script>

<style scoped>
.app {
  display: flex;
  flex-direction: column;
  align-items: center;
  min-height: 100vh;
  padding: 20px;
  color: white;
  font-family: sans-serif;
}

.tasks {
  display: flex;
  flex-direction: column;
  gap: 12px;
  width: 100%;
  max-width: 500px;
}
</style>