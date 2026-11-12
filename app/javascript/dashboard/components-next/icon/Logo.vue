<script setup>
import { useAttrs } from 'vue';
import { useMapGetter } from 'dashboard/composables/store';

const attrs = useAttrs();
const globalConfig = useMapGetter('globalConfig/get');
</script>

<template>
  <img
    v-if="globalConfig.logoThumbnail"
    v-bind="attrs"
    :src="globalConfig.logoThumbnail"
  />
  <svg
    v-else
    v-once
    v-bind="attrs"
    width="16"
    height="16"
    viewBox="0 0 64 64"
    fill="none"
    xmlns="http://www.w3.org/2000/svg"
  >
    <defs>
      <linearGradient
        id="omnizon-logo-top"
        x1="8"
        y1="8"
        x2="56"
        y2="36"
        gradientUnits="userSpaceOnUse"
      >
        <stop offset="0%" stop-color="#25B8FF" />
        <stop offset="100%" stop-color="#1677D2" />
      </linearGradient>
      <linearGradient
        id="omnizon-logo-right"
        x1="32"
        y1="12"
        x2="56"
        y2="56"
        gradientUnits="userSpaceOnUse"
      >
        <stop offset="0%" stop-color="#1677D2" />
        <stop offset="100%" stop-color="#7C52FF" />
      </linearGradient>
      <linearGradient
        id="omnizon-logo-bottom"
        x1="12"
        y1="40"
        x2="52"
        y2="58"
        gradientUnits="userSpaceOnUse"
      >
        <stop offset="0%" stop-color="#3B82F6" />
        <stop offset="100%" stop-color="#7C52FF" />
      </linearGradient>
    </defs>
    <path
      d="M32 6L10 18.5V43.5L21 50V25L43 12.5L32 6Z"
      fill="url(#omnizon-logo-top)"
    />
    <path
      d="M43 12.5L54 18.5V43.5L32 56L21 50L43 37.5V12.5Z"
      fill="url(#omnizon-logo-right)"
    />
    <path
      d="M10 43.5L32 56L43 50L21 37.5V25L10 31V43.5Z"
      fill="url(#omnizon-logo-bottom)"
      opacity="0.9"
    />
  </svg>
</template>
