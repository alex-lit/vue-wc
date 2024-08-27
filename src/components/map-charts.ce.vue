<script setup lang="ts">
  import MapChartsSvg from '~/components/map-charts-svg.vue';

  defineSlots<{
    default(): any;
  }>();
</script>

<template>
  <section class="map-charts">
    !!!!!!!!!!
    <!-- @slot default -->
    <slot></slot>
    <!-- /@slot default -->

    <MapChartsSvg class="map-charts__vector" />
  </section>
</template>

<style lang="scss">
  .map-charts {
    aspect-ratio: 5 / 3;
    max-width: 1000px;
    position: relative;
    z-index: 0;

    &__vector {
      pointer-events: none;
      user-select: none;
      z-index: -1;
    }
  }
</style>
