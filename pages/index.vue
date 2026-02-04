<template>
  <div class="index-page">
    <div class="container">
      <h1>Welcome to Nuxt Prototype</h1>
      <p>Select a page to get started:</p>
      <div class="links">
        <NuxtLink to="/insure/car-renovation" external class="link-card">
          <h2>Car Renovation</h2>
          <p>자동차 리노베이션 보험</p>
        </NuxtLink>
      </div>
    </div>
  </div>
</template>

<style scoped>
.index-page {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

.container {
  text-align: center;
  color: white;
}

.container h1 {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.container > p {
  font-size: 1.2rem;
  opacity: 0.9;
  margin-bottom: 2rem;
}

.links {
  display: flex;
  gap: 1.5rem;
  justify-content: center;
  flex-wrap: wrap;
}

.link-card {
  background: white;
  color: #333;
  padding: 2rem;
  border-radius: 12px;
  text-decoration: none;
  min-width: 200px;
  transition: transform 0.2s, box-shadow 0.2s;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.link-card:hover {
  transform: translateY(-4px);
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
}

.link-card h2 {
  margin: 0 0 0.5rem 0;
  color: #667eea;
}

.link-card p {
  margin: 0;
  color: #666;
  font-size: 0.9rem;
}
</style>