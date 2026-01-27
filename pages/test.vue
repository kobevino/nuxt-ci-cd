<template>
  <div class="test-page">
    <header class="header">
      <h1>Test Page</h1>
      <nav class="nav">
        <NuxtLink to="/main" class="nav-link">Main</NuxtLink>
        <NuxtLink to="/test" class="nav-link active">Test</NuxtLink>
      </nav>
    </header>

    <main class="content">
      <section class="test-section">
        <h2>Test Components</h2>
        <p>This page is for testing and prototyping components.</p>
      </section>

      <section class="test-controls">
        <h3>Interactive Test</h3>
        <div class="counter-box">
          <button @click="decrement" class="btn btn-secondary">-</button>
          <span class="counter-value">{{ count }}</span>
          <button @click="increment" class="btn btn-primary">+</button>
        </div>
        <button @click="reset" class="btn btn-outline">Reset</button>
      </section>

      <section class="test-input">
        <h3>Input Test</h3>
        <input
          v-model="inputText"
          type="text"
          placeholder="Type something..."
          class="text-input"
        />
        <p class="input-preview">Preview: {{ inputText || 'Nothing typed yet' }}</p>
      </section>

      <section class="test-list">
        <h3>List Test</h3>
        <ul class="item-list">
          <li v-for="item in items" :key="item.id" class="list-item">
            <span>{{ item.name }}</span>
            <span class="badge" :class="item.status">{{ item.status }}</span>
          </li>
        </ul>
      </section>

      <section class="info">
        <p>API URL: {{ config.public.apiUrl }}</p>
      </section>
    </main>

    <footer class="footer">
      <p>&copy; 2024 Nuxt Prototype - Test Page</p>
    </footer>
  </div>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()

const count = ref(0)
const inputText = ref('')

const items = ref([
  { id: 1, name: 'Item Alpha', status: 'active' },
  { id: 2, name: 'Item Beta', status: 'pending' },
  { id: 3, name: 'Item Gamma', status: 'completed' },
  { id: 4, name: 'Item Delta', status: 'active' },
])

const increment = () => {
  count.value++
}

const decrement = () => {
  count.value--
}

const reset = () => {
  count.value = 0
}
</script>

<style scoped>
.test-page {
  min-height: 100vh;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

.header {
  background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
  color: white;
  padding: 1.5rem 2rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.header h1 {
  margin: 0;
  font-size: 1.5rem;
}

.nav {
  display: flex;
  gap: 1rem;
}

.nav-link {
  color: white;
  text-decoration: none;
  padding: 0.5rem 1rem;
  border-radius: 4px;
  transition: background 0.2s;
}

.nav-link:hover,
.nav-link.active {
  background: rgba(255, 255, 255, 0.2);
}

.content {
  max-width: 800px;
  margin: 0 auto;
  padding: 2rem;
}

.test-section {
  text-align: center;
  padding: 2rem 0;
  border-bottom: 1px solid #e0e0e0;
}

.test-section h2 {
  color: #11998e;
  margin-bottom: 0.5rem;
}

.test-controls,
.test-input,
.test-list {
  padding: 1.5rem 0;
  border-bottom: 1px solid #e0e0e0;
}

.test-controls h3,
.test-input h3,
.test-list h3 {
  color: #333;
  margin-bottom: 1rem;
}

.counter-box {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 1rem;
  margin-bottom: 1rem;
}

.counter-value {
  font-size: 2rem;
  font-weight: bold;
  min-width: 60px;
  text-align: center;
  color: #333;
}

.btn {
  padding: 0.5rem 1.5rem;
  border: none;
  border-radius: 4px;
  font-size: 1rem;
  cursor: pointer;
  transition: all 0.2s;
}

.btn-primary {
  background: #11998e;
  color: white;
}

.btn-primary:hover {
  background: #0d7d74;
}

.btn-secondary {
  background: #666;
  color: white;
}

.btn-secondary:hover {
  background: #444;
}

.btn-outline {
  background: transparent;
  color: #11998e;
  border: 2px solid #11998e;
}

.btn-outline:hover {
  background: #11998e;
  color: white;
}

.text-input {
  width: 100%;
  padding: 0.75rem 1rem;
  font-size: 1rem;
  border: 2px solid #e0e0e0;
  border-radius: 4px;
  transition: border-color 0.2s;
}

.text-input:focus {
  outline: none;
  border-color: #11998e;
}

.input-preview {
  margin-top: 1rem;
  padding: 1rem;
  background: #f5f5f5;
  border-radius: 4px;
  color: #666;
}

.item-list {
  list-style: none;
  padding: 0;
  margin: 0;
}

.list-item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0.75rem 1rem;
  background: white;
  border: 1px solid #e0e0e0;
  border-radius: 4px;
  margin-bottom: 0.5rem;
}

.badge {
  padding: 0.25rem 0.75rem;
  border-radius: 12px;
  font-size: 0.8rem;
  font-weight: 500;
}

.badge.active {
  background: #d4edda;
  color: #155724;
}

.badge.pending {
  background: #fff3cd;
  color: #856404;
}

.badge.completed {
  background: #cce5ff;
  color: #004085;
}

.info {
  background: #f5f5f5;
  padding: 1rem;
  border-radius: 4px;
  text-align: center;
  color: #666;
  margin-top: 1.5rem;
}

.footer {
  background: #333;
  color: white;
  text-align: center;
  padding: 1rem;
  margin-top: 2rem;
}
</style>