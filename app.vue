<template>
  <div>
    <h1>런타임 환경변수 테스트</h1>
    <h1>{{ $config.public.apiUrl }}</h1>
    <NuxtRouteAnnouncer />
    <NuxtWelcome />
  </div>
</template>

<script setup lang="ts">
  const { $config } = useNuxtApp()
</script>
