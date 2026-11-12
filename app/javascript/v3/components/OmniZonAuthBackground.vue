<script setup>
// Organic animated brand background for OmniZon auth screens
</script>

<template>
  <div
    class="omnizon-auth-bg relative flex flex-col justify-center w-full min-h-screen overflow-hidden"
  >
    <div class="pointer-events-none absolute inset-0 overflow-hidden">
      <div
        class="omnizon-ribbon-wave absolute -right-24 -top-24 w-[620px] h-[120%] rounded-[140px] blur-2xl opacity-75"
      />
      <div
        class="omnizon-blob-primary absolute -left-24 -bottom-20 w-[460px] h-[460px] rounded-full blur-3xl opacity-55"
      />
      <div
        class="omnizon-blob-accent absolute right-[8%] top-[10%] w-[420px] h-[420px] rounded-full blur-3xl opacity-60"
      />
      <svg
        class="omnizon-ribbon-wave absolute bottom-0 left-0 w-full h-72 opacity-30"
        viewBox="0 0 1440 320"
        preserveAspectRatio="none"
        fill="none"
      >
        <defs>
          <linearGradient
            id="omnizonWaveGrad"
            x1="0"
            y1="0"
            x2="1440"
            y2="320"
            gradientUnits="userSpaceOnUse"
          >
            <stop offset="0%" stop-color="#25B8FF" stop-opacity="0.25" />
            <stop offset="50%" stop-color="#1677D2" stop-opacity="0.35" />
            <stop offset="100%" stop-color="#7C52FF" stop-opacity="0.45" />
          </linearGradient>
        </defs>
        <path
          d="M0,256 C240,192 480,300 760,210 C1040,120 1240,40 1440,96 L1440,320 L0,320 Z"
          fill="url(#omnizonWaveGrad)"
        />
      </svg>
    </div>

    <div class="relative z-10 w-full">
      <slot />
    </div>
  </div>
</template>

<style>
.omnizon-auth-bg {
  background: radial-gradient(
    circle at 20% 20%,
    #0d2558 0%,
    #06132e 55%,
    #040b1c 100%
  );
}

.omnizon-ribbon-wave {
  background: linear-gradient(
    155deg,
    rgb(37 184 255 / 36%) 0%,
    rgb(22 119 210 / 42%) 48%,
    rgb(124 82 255 / 46%) 100%
  );
  animation: omnizonRibbonFloat 14s ease-in-out infinite;
}

.omnizon-blob-primary {
  background: radial-gradient(
    circle,
    rgb(37 184 255 / 35%) 0%,
    rgb(22 119 210 / 18%) 55%,
    transparent 75%
  );
  animation: omnizonOrganicFloatOne 18s ease-in-out infinite;
}

.omnizon-blob-accent {
  background: radial-gradient(
    circle,
    rgb(124 82 255 / 38%) 0%,
    rgb(22 119 210 / 20%) 55%,
    transparent 75%
  );
  animation: omnizonOrganicFloatTwo 22s ease-in-out infinite;
}

@keyframes omnizonOrganicFloatOne {
  0%,
  100% {
    transform: translate(0, 0) scale(1) rotate(0deg);
  }
  33% {
    transform: translate(35px, -25px) scale(1.06) rotate(4deg);
  }
  66% {
    transform: translate(-20px, 20px) scale(0.96) rotate(-3deg);
  }
}

@keyframes omnizonOrganicFloatTwo {
  0%,
  100% {
    transform: translate(0, 0) scale(1) rotate(0deg);
  }
  50% {
    transform: translate(-40px, 30px) scale(1.08) rotate(-5deg);
  }
}

@keyframes omnizonRibbonFloat {
  0%,
  100% {
    transform: translateY(0) skewY(-8deg) scale(1);
    opacity: 0.72;
  }
  50% {
    transform: translateY(-18px) skewY(-6deg) scale(1.03);
    opacity: 0.88;
  }
}
</style>
