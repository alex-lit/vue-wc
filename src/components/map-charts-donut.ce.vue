<script setup lang="ts">
  import { VisDonut, VisSingleContainer } from '@unovis/vue';
  import { computed } from 'vue';

  import UiTooltip from '~/components/ui-tooltip.vue';

  const $props = withDefaults(
    defineProps<{
      existing: number;
      height?: number;
      new: number;
      state: string;
      width?: number;
    }>(),
    {
      height: 50,
      width: 50,
    },
  );

  const COORDS_MAP = {
    CA: { x: '10%', y: '20%' },
    LA: { x: '61%', y: '75%' },
    NY: { x: '87%', y: '27%' },
  } as const;

  const coords = computed(() => ({
    x: COORDS_MAP[$props.state]?.x ?? `${$props.width / 2}px`,
    y: COORDS_MAP[$props.state]?.y ?? `${$props.height / 2}px`,
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
        :height="$props.height"
        :width="$props.width"
      >
        <VisDonut :arc-width="12" :color :value />
      </VisSingleContainer>

      <template #content>
        {{ $props }}
      </template>
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
    transform: translate(-50%, -50%);
    position: absolute;
    top: var(--y);
    pointer-events: all;
  }
</style>
