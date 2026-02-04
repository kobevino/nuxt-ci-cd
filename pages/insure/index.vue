<template>
  <div class="insure-page">
    <h1>보험 서비스</h1>
    <p>원하시는 보험 상품을 선택해주세요.</p>

    <nav class="insure-nav">
      <NuxtLink to="/insure/car-renovation" class="nav-card">
        <h2>자동차 리노베이션</h2>
        <p>자동차 리노베이션 보험 상품</p>
      </NuxtLink>
    </nav>

    <NuxtLink to="/" class="back-link">홈으로 돌아가기</NuxtLink>
  </div>
</template>

<script setup lang="ts">
</script>

<style scoped>
.insure-page {
  min-height: 100vh;
  padding: 2rem;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif;
}

.insure-page h1 {
  font-size: 2rem;
  margin-bottom: 0.5rem;
}

.insure-page > p {
  color: #666;
  margin-bottom: 2rem;
}

.insure-nav {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
  margin-bottom: 2rem;
}

.nav-card {
  display: block;
  padding: 1.5rem;
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  text-decoration: none;
  color: inherit;
  transition: box-shadow 0.2s, transform 0.2s;
  min-width: 200px;
}

.nav-card:hover {
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transform: translateY(-2px);
}

.nav-card h2 {
  font-size: 1.2rem;
  margin-bottom: 0.5rem;
  color: #333;
}

.nav-card p {
  font-size: 0.9rem;
  color: #666;
  margin: 0;
}

.back-link {
  display: inline-block;
  color: #007bff;
  text-decoration: none;
}

.back-link:hover {
  text-decoration: underline;
}
</style>
