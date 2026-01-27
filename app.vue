<template>
  <div>
    <h1>runtime env test 123</h1>
    <h1>{{ $config.public.apiUrl }}</h1>
    <NuxtRouteAnnouncer />
    <NuxtWelcome />
  </div>
</template>

<script setup lang="ts">
  const { $config } = useNuxtApp()
  console.log($config.public.apiUrl);
</script>
