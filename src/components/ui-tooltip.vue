<script setup lang="ts">
  import {
    TooltipArrow,
    TooltipContent,
    TooltipPortal,
    TooltipProvider,
    TooltipRoot,
    TooltipTrigger,
  } from 'radix-vue';

  defineSlots<{
    content(): any;
    default(): any;
  }>();
</script>

<template>
  <TooltipProvider>
    <TooltipRoot>
      <TooltipTrigger class="ui-tooltip__trigger">
        <!-- @slot default -->
        <slot></slot>
        <!-- /@slot default -->
      </TooltipTrigger>

      <TooltipPortal>
        <TooltipContent class="ui-tooltip__content" :side-offset="5">
          <!-- @slot content -->
          <slot name="content"></slot>
          <!-- /@slot content -->
          <TooltipArrow class="ui-tooltip__arrow" :width="8" />
        </TooltipContent>
      </TooltipPortal>
    </TooltipRoot>
  </TooltipProvider>
</template>

<style lang="scss">
  @import './ui-tooltip.scss';
</style>
