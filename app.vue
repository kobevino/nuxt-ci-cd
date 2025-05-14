<template>
  <div>
    <h1>runtime env test</h1>
    <h1>{{ $config.public.apiUrl }}</h1>
    <NuxtRouteAnnouncer />
    <NuxtWelcome />
  </div>
</template>

<script setup lang="ts">
  const { $config } = useNuxtApp()
  console.log($config.public.apiUrl);
</script>
