<template>
  <div class="main-page">
    <header class="header">
      <h1>Main Page</h1>
      <nav class="nav">
        <NuxtLink to="/main" class="nav-link active">Main</NuxtLink>
        <NuxtLink to="/test" class="nav-link">Test</NuxtLink>
      </nav>
    </header>

    <main class="content">
      <section class="hero">
        <h2>Welcome to the Main Page</h2>
        <p>This is a prototype main page for your Nuxt application.</p>
      </section>

      <section class="features">
        <div class="feature-card">
          <h3>Feature 1</h3>
          <p>Description of the first feature goes here.</p>
        </div>
        <div class="feature-card">
          <h3>Feature 2</h3>
          <p>Description of the second feature goes here.</p>
        </div>
        <div class="feature-card">
          <h3>Feature 3</h3>
          <p>Description of the third feature goes here.</p>
        </div>
      </section>

      <section class="info">
        <p>API URL: {{ config.public.apiUrl }}</p>
      </section>
    </main>

    <footer class="footer">
      <p>&copy; 2024 Nuxt Prototype</p>
    </footer>
  </div>
</template>

<script setup lang="ts">
const config = useRuntimeConfig()
</script>

<style scoped>
.main-page {
  min-height: 100vh;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

.header {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
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
  max-width: 1200px;
  margin: 0 auto;
  padding: 2rem;
}

.hero {
  text-align: center;
  padding: 3rem 0;
}

.hero h2 {
  font-size: 2.5rem;
  color: #333;
  margin-bottom: 1rem;
}

.hero p {
  font-size: 1.2rem;
  color: #666;
}

.features {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.feature-card {
  background: white;
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  padding: 1.5rem;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  transition: transform 0.2s, box-shadow 0.2s;
}

.feature-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.feature-card h3 {
  color: #667eea;
  margin-top: 0;
}

.feature-card p {
  color: #666;
  margin-bottom: 0;
}

.info {
  background: #f5f5f5;
  padding: 1rem;
  border-radius: 4px;
  text-align: center;
  color: #666;
}

.footer {
  background: #333;
  color: white;
  text-align: center;
  padding: 1rem;
  margin-top: 2rem;
}
</style>