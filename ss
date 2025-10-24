<template>
  <div class="task-item">
    <h3>{{ task.title }}</h3>
    <p>{{ task.text }}</p>
  </div>
</template>

<script setup lang="ts">
defineProps<{
  task: { id: string; title: string; text: string };
}>();
</script>

<style scoped>
.task-item {
  padding: 14px 16px;
  background: #fafafa;
  border-left: 3px solid #e0e0e0;
  margin-bottom: 12px;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif;
}

h3 {
  margin: 0 0 6px;
  font-size: 1em;
  font-weight: 600;
  color: #1a1a1a;
}

p {
  margin: 0;
  color: #444;
  font-size: 0.95em;
  line-height: 1.5;
}
</style>
