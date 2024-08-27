<script setup lang="ts">
  import { VisDonut, VisSingleContainer } from '@unovis/vue';
  import { computed } from 'vue';

  import UiTooltip from '~/components/ui-tooltip.vue';

  const $props = defineProps<{
    existing: number;
    new: number;
    state: string;
  }>();

  const COORDS_MAP = {
    LA: { x: '58%', y: '72%' },
    NY: { x: '84%', y: '22%' },
  } as const;

  const coords = computed(() => ({
    x: COORDS_MAP[$props.state]?.x ?? 0,
    y: COORDS_MAP[$props.state]?.y ?? 0,
  }));

  const value = (count: number) => count;

  const color = (_count: number, index: number) =>
    ['#460f6a', '#e2ddf3'][index];
</script>

<template>
  <figure class="map-charts-donut">
    <UiTooltip>
      <VisSingleContainer
        :data="[$props.existing, $props.new]"
        :height="50"
        :width="50"
      >
        <VisDonut :arc-width="12" :color :value />
      </VisSingleContainer>
    </UiTooltip>
  </figure>
</template>

<style lang="scss">
  @import './ui-tooltip.scss';

  .map-charts-donut {
    --x: v-bind('coords.x');
    --y: v-bind('coords.y');

    left: var(--x);
    margin: 0;
    padding: 0;
    position: absolute;
    top: var(--y);
  }
</style>
