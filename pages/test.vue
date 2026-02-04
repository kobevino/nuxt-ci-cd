<template>
  <div class="test-page">
    <div class="container">
      <h1>Test Page</h1>
      <p>This is the test page.</p>
      <NuxtLink to="/" class="back-link">Back to Home</NuxtLink>
    </div>
  </div>
</template>

<style scoped>
.test-page {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
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

.container p {
  font-size: 1.2rem;
  opacity: 0.9;
  margin-bottom: 2rem;
}

.back-link {
  display: inline-block;
  background: white;
  color: #11998e;
  padding: 0.75rem 1.5rem;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  transition: transform 0.2s, box-shadow 0.2s;
  box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.back-link:hover {
  transform: translateY(-2px);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}
</style>
