<script setup lang="ts">
  import MapChartsSvg from '~/components/map-charts-svg.vue';

  defineSlots<{
    default(): any;
    test(): any;
  }>();
</script>

<template>
  <!-- eslint-disable vue/component-name-in-template-casing -->
  <section class="map-charts">
    <!-- @slot default -->
    <slot></slot>
    <!-- /@slot default -->

    <MapChartsSvg class="map-charts__vector">
      <foreignObject height="100" width="100" x="200" y="400">
        <map-charts-donut :existing="33" :height="100" :new="99" :width="100" />
      </foreignObject>
    </MapChartsSvg>
  </section>
</template>

<style lang="scss">
  .map-charts {
    aspect-ratio: 5 / 3;
    max-width: 1000px;
    position: relative;
    z-index: 0;

    &__vector {
      user-select: none;
      z-index: -1;
    }
  }
</style>
